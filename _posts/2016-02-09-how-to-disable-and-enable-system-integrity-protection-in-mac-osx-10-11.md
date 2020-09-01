---
id: 402
title: How to disable and enable System Integrity Protection in MAC OSX 10.11
date: 2016-02-09T16:25:22+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=402
permalink: /osx/how-to-disable-and-enable-system-integrity-protection-in-mac-osx-10-11/
dsq_thread_id:
  - "5725330058"
image: /wp-content/uploads/2016/02/mac_os_x_logo-e1457916132405.png
categories:
  - Mac OSX
tags:
  - Mac OSX
---
Apple has added a new security feature in 10.11 that disabled the ability to edit system files.
This feature will protect anything that could potentially be malicious on your system.
It is recommended that you know what you are doing before you disable this feature as this could damage your system.
Here is a list of directories you cannot change if this feature is on:
<ul>
	<li>/System</li>
	<li>/sbin</li>
	<li>/usr</li>
</ul>
So if you need to change these directories, you will need to follow some steps first.
Checking if System Integrity Protection it is enabled.
First check that the feature is enabled.
<pre>csrutil status</pre>
it should return something like this:
System Integrity Protection status: enabled.
Disabling System Integrity Protection.
To disable it you will need to go into recovery mode, if you try to do it not in recovery mode you will get the following error.
<pre>csrutil: failed to modify system integrity configuration. This tool needs to be executed from the Recovery OS. To get in to the recovery OS we will need to turn off the Mac.</pre>
Press on and Command ⌘ + R keys and press the power button.
The system will look like it booting as normal but it should boot into a minified version of the MAC OSX, which only has the tools, needed to recover your system.
Next go to the top and click terminal.
When the terminal appears you can enter this command
<pre>csrutil disable</pre>
It will tell you that the System Integrity Protection disabled and requires a reboot for the changes to take effect.
Next type the reboot command in the terminal.
That’s System Integrity Protection disabled.
How to Re-Enabling System Integrity Protection
It is highly recommended to enable this feature once your finished as this does protect from anything malicious on the system attempting to change any system files.
Go into the recovery OS as before and open terminal as before.
In the terminal enter
<pre>csrutil enable</pre>