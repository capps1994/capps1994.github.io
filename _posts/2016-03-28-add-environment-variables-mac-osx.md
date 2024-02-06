---
id: 572
title: How to add to PATH variable on Mac OSX
date: 2016-03-28T19:39:35+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=572
permalink: /osx/add-environment-variables-mac-osx/
dsq_thread_id:
  - "5725480769"
cover: /wp-content/uploads/2016/02/mac_os_x_logo-e1457916132405.png
categories:
  - Mac OSX
tags:
  - CLI
  - Mac OSX
  - PATH
---
PATH variables are useful for some namely CLI (command line interface) apps. PATH variables allow certain apps to be accessed globally. So you don't have to remember the full path to the app to use it. It stops things like this:

/sbin/ifconfig - with no PATH variable assigned.

ifconfig - with PATH variable assigned.
<h4 style="text-align: center;"><span style="text-decoration: underline;">Adding the app path to the PATH variable.</span></h4>
All we need to do is create a new hidden file called: .bash_profile in your user home. so open up a terminal and type the following.
<pre class="lang:sh decode:true">touch ~/.bash_profile</pre>
<pre class="lang:sh decode:true">nano ~/.bash_profile</pre>
<p class="lang:sh decode:true crayon-selected"> Inside the .bash_profile file you want to type something like this it will be different depending on what you want to do.</p>
<p class="lang:sh decode:true crayon-selected">you want to make sure that you enter the parent folder not the direct command as it will not work.</p>

<pre class="lang:sh decode:true">export PATH="/Path/to/folder/:$PATH"</pre>
<p class="lang:sh decode:true crayon-selected">so an example would be something like for composer. you would enter this.</p>

<pre class="">export PATH="/Users/user/.composer/vendor/bin:$PATH"</pre>
As you can see it's going to the bin directory, not to the actual composer file.
<h4 style="text-align: center;"><span style="text-decoration: underline;">Testing the new path variable.</span></h4>
Restart the terminal and test if this has worked by entering this in the terminal.
<pre class="">echo $PATH</pre>
If you get something like this.
<pre class="">/Users/user/.composer/vendor/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin</pre>
&nbsp;