---
id: 410
title: Installing ifconfig in CentOS 7
date: 2016-02-10T13:53:15+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=410
permalink: /linux/installing-ifconfig-centos-7/
dsq_thread_id:
  - "5766922290"
cover: /wp-content/uploads/2016/02/centos-logo.png
categories:
  - Linux
tags:
  - CentOS
  - ifconfig
  - yum
---
Some of you may have noticed that ifconfig is not in CentOS any more you will need to install it. luckily is very easy to install. All you need is an Internet connection.

Enter the following command:

<pre class="lang:sh decode:true " >sudo yum install net-tools</pre> 

Thats it you should be able to run.

<pre class="lang:sh decode:true " >ifconfig</pre> 

