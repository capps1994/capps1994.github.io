---
id: 738
title: 'Linux – Runing Scripts / Programs at Startup'
date: 2017-11-14T00:52:31+00:00
author: Christopher Caplan
excerpt: In this tutorial, I will be talking about how to get your Linux&nbsp;server (I will be using Ubuntu but it should work fine on most distros)

guid: https://dev.capatek-tutorials.com/?p=738
permalink: /linux/linux-runing-scripts-programs-startup/
wpms_validate_analysis:
  - ""
dsq_thread_id:
  - "6282299878"
cover: /wp-content/uploads/2015/08/linux.png
categories:
  - Linux
tags:
  - Linux
  - scripts
  - startup
---
In this tutorial, I will be talking about how to get your Linux&nbsp;server (I will be using [Ubuntu](https://www.ubuntu.com/server) but it should work fine on most distros)
## Overview
So sometimes you will just want your server to just boot up and do a task on startup without user interaction, this can be anything, to tell a monitoring service that the server is online, to run a simple clean up script or to run a complex&nbsp;bootstrap.

As you may know, a lot of services(such as Apache httpd, MySQL and Nginx) have their own startup(init) scripts that can be configured to run at any of the runtime levels using the *chkconfig* command in RedHat&nbsp;based distros or *update-rc.d* in Debian based distros, but to configure this will take a lot of time an work.

What we will be doing is creating a simple script and running it in /etc/rc.local this file gets executed after all normal system services such as *networking* and *Apache* or *MySQL*&nbsp;so this is one of the last things to run before it runs user-specific login tasks/scripts such as changing terminal colours or opening something like firefox on login.

With that out the way, let's get started!
### Set up
**Prerequisites:**

 	

1. Linux server already set up and working

 	

1. A script that you need running at start up

&nbsp;

SSH and login as root to the Linux box
`ssh username@servername`

If you do not know the root password you can log in&nbsp;as user you know the password to then type the following 

`sudo su` 

This allows you to log in as root with your password
## Editing the rc.local file
You may need to copy your scripts to the server(out of scope of this tutorial) you should be able to use the *scp&nbsp;*command

Once you are root you can edit the /etc/rc.local file by entering the following.
`nano /etc/rc.local`
You can also use *vi* is you like

You will see a file like this
```shell
#!/bin/sh -e

#
# rc.local
#

# This script is executed at the end of each multiuser runlevel.

# Make sure that the script will "exit 0" on success or any other

# value on error.

#

# In order to enable or disable this script just change the execution

# bits.

#

# By default this script does nothing.

exit 0

```

The most important thing to note here is the *exit 0&nbsp;*as this tells Linux that the script as completed successfully.

**Note: If your script is a long-running&nbsp;or never-ending task you will need to add a "<em>&amp;"</em> to the end of your script as this will tell bash to run it in the background or in another process and give the signal that the script was successful in running. If the<em>&nbsp;"&amp;"</em> is not added you may find that your Linux box will seem to either take a long time in booting or not boot at all well, in fact, it has booted but it is stuck on your script.**

**Example:**

```shell
#!/bin/sh -e

#

# rc.local

#

# This script is executed at the end of each multiuser runlevel.

# Make sure that the script will "exit 0" on success or any other

# value on error.

#

# In order to enable or disable this script just change the execution

# bits.

#

# By default this script does nothing.

/path/to/script/counter.sh  /path/to/output.txt

exit 0
```

I have just added one line (that is highlighted in red) that goes to a script that just counts in an infinite loop and outputs the text to a file. As you can see I have added the *"&amp;"&nbsp;*you can also use something like this.


`/path/to/script/counter.sh &gt;&gt; /path/to/output.txt || exit 1`

## Testing
To test that it has worked all you need to do is restart the server.
`reboot`
## Conclusion
We have briefly gone over how Linux services startup during boot and showed you how to use a basic but effective way to run your scripts at startup&nbsp;using rc.local