---
key: uploading-files-to-sharepoint-with-python
title: Uploading files to SharePoint with Python
date: 2018-02-14T13:30:53+00:00
author: Christopher Caplan
guid: https://dev.capatek-tutorials.com/?p=753
permalink: /python/uploading-files-to-sharepoint-with-python/
amazonS3_cache:
  - 'a:1:{s:38:"//login.microsoftonline.com/extSTS.srf";a:1:{s:9:"timestamp";i:1554412618;}}'
amp_status:
  - enabled
wpms_validate_analysis:
  - ""
cover: /wp-content/uploads/2018/02/python-logo-master-flat-e1518615221175.png
categories:
  - Python
tags:
  - Blog
  - Linux
  - microsoft
  - Python
  - SharePoint
---
<!-- wp:paragraph -->
<p>So recently I had a project. The project was to get files that were uploaded to an SFTP server into a SharePoint&nbsp;document library.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>The SFTP server was Linux&nbsp;based, this made things interesting. As Microsoft doesn't&nbsp;really supply an API for Linux Python, in particular. This means that you need to use the Sharepoint REST API. The REST API looked simple enough, but the authentication&nbsp;seems very difficult as you need to completely understand&nbsp;the login flow.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Microsoft has an API that "just works" for C# on .NET</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>But one problem I was using Linux.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Here is how I solved it</h4>
<!-- /wp:heading -->

<!-- wp:code {"lineNumbers":true,"ampFitText":true} -->
```python
#!/usr/bin/python3
import os
import sys
import json
import sharepy
import time
import logging

def uploadToSharepoint(SPUrl, siteName, libraryName, FolderPath):
    #check is the session files exists
    if os.path.isfile("sp-session.pkl"):
        s = sharepy.load()
    else:
        s = sharepy.connect(SPUrl)
        s.save()
    #check is system is windows
    if os.name == 'nt':
        folder = FolderPath.split('\\')
    else:
        folder = FolderPath.split('/')
        print(folder)

    #check to see if the FolderPath is a directory
    if os.path.isdir(FolderPath):

        #creates the folder in sharepoint
        p = s.post("https://"+SPUrl+"/sites/"+siteName+"/_api/web/folders",
        json={
            "__metadata": { "type": "SP.Folder" },
            "ServerRelativeUrl": libraryName +'/' + folder[-2]
            })

        logging.info("Created Folder %s: with response %s", folder, p.content)

        filesToUpload = os.listdir(FolderPath)

        #uploads files to sharepoint
        for fileToUpload in filesToUpload:
            headers = {"accept": "application/json;odata=verbose",
            "content-type": "application/x-www-urlencoded; charset=UTF-8"}

            with open(os.path.join(FolderPath, fileToUpload), 'rb') as read_file:
                content = read_file.read()

            p = s.post(f"https://{SPUrl}/sites/{siteName}/_api/web/GetFolderByServerRelativeUrl('{libraryName}/{folder[-2]}')/Files/add(url='{fileToUpload}',overwrite=true)", data=content, headers=headers)

            logging.info("Uploaded %s: with response %s", folder, p.content)
            print(folder)

if __name__ == "__main__":

    SPUrl = "tenant.sharepoint.com"
    siteName = "Site1"
    libraryName = "library1"
    logging.basicConfig(filename="UploadedFiles.log",
                        level=logging.INFO,
                        format='%(asctime)s - %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S')

    path = sys.argv[1] if len(sys.argv) else '.'

    uploadToSharepoint(SPUrl, siteName, libraryName, path)
```

<!-- wp:paragraph -->
<p>I found a lot of outdated librarys as Microsoft has changed the authentication flow for SharePoint&nbsp;online. However, I did manage to find a couple of good python libraries the most simple being SharePy you can view it on <a title="" href="https://github.com/JonathanHolvey/sharepy" rel="noopener">GitHub</a></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>This API looks like it sends <a title="" href="https://en.wikipedia.org/wiki/Security_Assertion_Markup_Language" rel="noopener">SAML</a> in a post request to&nbsp;<a title="" href="https://login.microsoftonline.com/extSTS.srf" rel="noopener">https://login.microsoftonline.com/extSTS.srf</a>&nbsp;which it then creates a "session" file, this file has all the cookies and sessions needed to keep authenticated with SharePoint.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>So I already had an SFTP server configurated to CHROOT users.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>so all I needed now was a way to watch a directory. My first thought was to use incron but it has a limitation in that it can not monitor the creation of folders and cannot monitor a folder&nbsp;recursively.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>I then came across a python library called watchdog you can view this on <a title="" href="https://github.com/gorakhargosh/watchdog">GitHub</a>.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Right, let's get into the code!</p>
<!-- /wp:paragraph -->
