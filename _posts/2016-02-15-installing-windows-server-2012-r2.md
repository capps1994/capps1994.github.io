---
id: 432
title: Installing Windows server 2012 R2.
date: 2016-02-15T12:54:08+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=432
permalink: /windows/installing-windows-server-2012-r2/
dsq_thread_id:
  - "5725988322"
amazonS3_cache:
  - 'a:54:{s:112:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_54_07.png";i:435;s:121:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_54_07-1024x768.png";i:435;s:112:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_42_21.png";i:436;s:121:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_42_21-1024x768.png";i:436;s:112:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_41_28.png";i:437;s:121:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_41_28-1024x768.png";i:437;s:112:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_40_49.png";i:438;s:121:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_40_49-1024x768.png";i:438;s:112:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_39_47.png";i:439;s:121:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_39_47-1024x768.png";i:439;s:112:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_38_18.png";i:440;s:121:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_38_18-1024x768.png";i:440;s:112:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_33_30.png";i:441;s:121:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_33_30-1024x768.png";i:441;s:112:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_32_15.png";i:442;s:121:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_32_15-1024x768.png";i:442;s:112:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_30_47.png";i:443;s:121:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_30_47-1024x768.png";i:443;s:120:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_54_07-300x225.png";i:435;s:120:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_42_21-300x225.png";i:436;s:120:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_41_28-300x225.png";i:437;s:120:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_40_49-300x225.png";i:438;s:120:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_39_47-300x225.png";i:439;s:120:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_38_18-300x225.png";i:440;s:120:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_33_30-300x225.png";i:441;s:120:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_32_15-300x225.png";i:442;s:120:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_30_47-300x225.png";i:443;s:112:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_54_07.png";i:435;s:120:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_54_07-300x225.png";i:435;s:121:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_54_07-1024x768.png";i:435;s:112:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_42_21.png";i:436;s:120:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_42_21-300x225.png";i:436;s:121:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_42_21-1024x768.png";i:436;s:112:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_41_28.png";i:437;s:120:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_41_28-300x225.png";i:437;s:121:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_41_28-1024x768.png";i:437;s:112:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_40_49.png";i:438;s:120:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_40_49-300x225.png";i:438;s:121:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_40_49-1024x768.png";i:438;s:112:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_39_47.png";i:439;s:120:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_39_47-300x225.png";i:439;s:121:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_39_47-1024x768.png";i:439;s:112:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_38_18.png";i:440;s:120:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_38_18-300x225.png";i:440;s:121:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_38_18-1024x768.png";i:440;s:112:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_33_30.png";i:441;s:120:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_33_30-300x225.png";i:441;s:121:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_33_30-1024x768.png";i:441;s:112:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_32_15.png";i:442;s:120:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_32_15-300x225.png";i:442;s:121:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_32_15-1024x768.png";i:442;s:112:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_30_47.png";i:443;s:120:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_30_47-300x225.png";i:443;s:121:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_30_47-1024x768.png";i:443;}'
image: /wp-content/uploads/2016/02/windows_server_2012-100040658-large.jpg
categories:
  - Windows
tags:
  - Installing
  - WIndows Server
---
Windows server is an Enterprise Level Server OS, it is used for many kinds of server, Exchange, SharePoint, MSSQL just to name a few.

You can download an evaluation copy of windows server <a href="https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2012-r2" target="_blank">here</a>, the evaluation lasts for 180 days so gives you plenty of time to play with it. You will need a Microsoft account.

Once you have download it you can either install it on a VM or install it straight on to a PC. Let’s get started.

Once you boot up the ISO file you will come across this screen.

<img class="size-full wp-image-443 aligncenter" src="https://www.capatek-tutorials.com/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_30_47.png" alt="VirtualBox_sharepoint server test_12_02_2016_14_30_47" width="1024" height="768" />

Set the correct language and keyboard layout and click next.

<img class="size-full wp-image-442 aligncenter" src="https://www.capatek-tutorials.com/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_32_15.png" alt="VirtualBox_sharepoint server test_12_02_2016_14_32_15" width="1024" height="768" />

Now click install now.

You will get this screen pop up now, I’m going to be installing “Windows Server 2012 R2 Standard Evaluation (Server with GUI).
This will install windows server with the classic start menu.
Server core only install windows PowerShell, and you manage the server from PowerShell this should only be used for advanced users only.

<img class="size-full wp-image-441 aligncenter" src="https://www.capatek-tutorials.com/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_33_30.png" alt="VirtualBox_sharepoint server test_12_02_2016_14_33_30" width="1024" height="768" />

&nbsp;

Click next.

<img class="size-full wp-image-440 aligncenter" src="https://www.capatek-tutorials.com/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_38_18.png" alt="VirtualBox_sharepoint server test_12_02_2016_14_38_18" width="1024" height="768" />

Click the check box and click next.

Click on custom

<img class="size-full wp-image-439 aligncenter" src="https://www.capatek-tutorials.com/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_39_47.png" alt="VirtualBox_sharepoint server test_12_02_2016_14_39_47" width="1024" height="768" /> <img class="size-full wp-image-438 aligncenter" src="https://www.capatek-tutorials.com/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_40_49.png" alt="VirtualBox_sharepoint server test_12_02_2016_14_40_49" width="1024" height="768" />

Click new then apply

Should look something like this now

<img class="size-full wp-image-437 aligncenter" src="https://www.capatek-tutorials.com/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_41_28.png" alt="VirtualBox_sharepoint server test_12_02_2016_14_41_28" width="1024" height="768" />

Now we’ll see it installing.

<img class="size-full wp-image-436 aligncenter" src="https://www.capatek-tutorials.com/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_42_21.png" alt="VirtualBox_sharepoint server test_12_02_2016_14_42_21" width="1024" height="768" />

Let it do this thing, it should reboot once it has finished.

Next we set up our local administrator account. Enter your password and click finish

<img class="size-full wp-image-435 aligncenter" src="https://www.capatek-tutorials.com/uploads/2016/02/VirtualBox_sharepoint-server-test_12_02_2016_14_54_07.png" alt="VirtualBox_sharepoint server test_12_02_2016_14_54_07" width="1024" height="768" />

Next it will take you to the log in screen, log and that’s it.