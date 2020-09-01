---
id: 728
title: 'Linux &#8211; Trigger commands and tasks during file system changes'
date: 2017-11-08T12:40:51+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=728
permalink: /linux/linux-tigger-commands-tasks-file-system-changes/
wpms_validate_analysis:
  - ""
dsq_thread_id:
  - "6270410946"
image: /wp-content/uploads/2015/08/linux.png
categories:
  - Linux
tags:
  - events
  - incron
  - Linux
---
In this tutorial, we will be showing you how to run tasks/scripts when the file system creates an event.
<h2 style="text-align: center;">Overview</h2>
We will be doing this something called <a href="https://linux.die.net/man/5/incrontab">incrontab</a>, as the name suggests it is similar to crontab

You may be wondering what a filesystem event is and why this is useful, let me explain.

So when a file is created/modified/deleted/opened it will send a signal to the OS but as we don't usually have anything installed to capture these events they go unnoticed.

in my experience this is useful for following things:
<ul>
 	<li>You want to email someone edits a file</li>
 	<li>You are using an SFTP server you want to move the file</li>
 	<li>You want to restart a service as soon as a config file has been edited.</li>
</ul>
<h3 style="text-align: center;">Installing</h3>
Log into your Linux box then run:

<strong>Ubuntu:</strong>
<pre>sudo apt install incron</pre>
<strong>Centos/Red Hat/Amazon Linux:</strong>
<pre>sudo yum install incron</pre>
<h3 style="text-align: center;">Setting Up</h3>
Once this is installed we can run the following:
<pre>incrontab -e</pre>
Below is the structure of the command you will need to place inside incrontab -e
<pre>&lt;path&gt; &lt;mask&gt; &lt;command&gt;</pre>
<ul>
 	<li><i>&lt;path&gt; </i>is file/folder you are getting incron to monitor for changes</li>
 	<li><em> &lt;mask&gt; </em>is the event incron should be looking for</li>
 	<li><em>&lt;command&gt; </em>this is the command that you want to run.</li>
</ul>
Incron has quite a few events they are quite self-explanatory:
<ul>
 	<li>IN_ACCESS           File was accessed (read) (*)</li>
 	<li>IN_ATTRIB           Metadata changed (permissions, timestamps, extended attributes, etc.) (*)</li>
 	<li>IN_CLOSE_WRITE      File opened for writing was closed (*)</li>
 	<li>IN_CLOSE_NOWRITE    File not opened for writing was closed (*)</li>
 	<li>IN_CREATE           File/directory created in watched directory (*)</li>
 	<li>IN_DELETE           File/directory deleted from watched directory (*)</li>
 	<li>IN_DELETE_SELF           Watched file/directory was itself deleted</li>
 	<li>IN_MODIFY           File was modified (*)</li>
 	<li>IN_MOVE_SELF        Watched file/directory was itself moved</li>
 	<li>IN_MOVED_FROM       File moved out of watched directory (*)</li>
 	<li>IN_MOVED_TO         File moved into watched directory (*)</li>
 	<li>IN_OPEN             File was opened (*)</li>
</ul>
There are also variables you can use:
<ul>
 	<li>$$   dollar sign</li>
 	<li>$@   watched filesystem path (such are /tmp/)</li>
 	<li>$#   event-related file name</li>
 	<li>$%   event flags (textually)</li>
 	<li>$&amp;   event flags (numerically)</li>
</ul>
With the events and variables out the way we can construct the command I will show you an example then explain it.

So the example is this(extra points if you can figure out what this is running)
<pre>/data/test.txt IN_MODIFY echo "$$ $@ $# $% $&amp;"</pre>
This example is equivalent to running when <em>/data/test.txt </em>modified.
<pre>echo "$ /data test.txt IN_MODIFY 2"</pre>
&nbsp;

<strong>Note: If you find that incron is not running your script/task, you may need to provide the full path of the program</strong>

Below is an example of using a python script when a file is created.
<pre>/data IN_CLOSE_WRITE /usr/bin/python /upload.py $#</pre>
As you can see I am providing the full path to the python interpreter as incron cannot find it.