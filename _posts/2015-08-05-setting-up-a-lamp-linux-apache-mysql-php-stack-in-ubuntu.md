---
id: 180
title: Setting up a LAMP (Linux, Apache, MySQL, PHP) Stack in Ubuntu
date: 2015-08-05T21:33:38+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=180
permalink: /linux/setting-up-a-lamp-linux-apache-mysql-php-stack-in-ubuntu/
dsq_thread_id:
  - "5694763395"
amazonS3_cache:
  - 'a:12:{s:60:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/2.png";i:272;s:68:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/2-243x300.png";i:272;s:93:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/Screen-Shot-2015-08-05-at-22.13.25.png";i:197;s:101:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/Screen-Shot-2015-08-05-at-22.13.25-300x226.png";i:197;s:93:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/Screen-Shot-2015-08-05-at-22.16.56.png";i:198;s:101:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/Screen-Shot-2015-08-05-at-22.16.56-300x226.png";i:198;s:93:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/Screen-Shot-2015-08-05-at-22.13.25.png";i:197;s:101:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/Screen-Shot-2015-08-05-at-22.13.25-300x226.png";i:197;s:93:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/Screen-Shot-2015-08-05-at-22.16.56.png";i:198;s:101:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/Screen-Shot-2015-08-05-at-22.16.56-300x226.png";i:198;s:60:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/2.png";i:272;s:68:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/2-243x300.png";i:272;}'
cover: /wp-content/uploads/2015/08/logo-ubuntu_su-orange-hex.png
categories:
  - Linux
tags:
  - apache
  - Linux
  - MySQL
  - PHP
  - ubuntu
---
Today I'm going to show you how to install and setup a LAMP stack. LAMP Stands for Linux, Apache, MySQL and PHP.

This is a very powerful software stack used for creating websites and web APIS (Application Programming interface)

So let's get started. If you are reading this post then I would like you have the Linux part installed, you can view my tutorial <a href="https://www.capatek-tutorials.com/topics/linux/ubuntu/installing-ubuntu-14-04-lts-server-in-virtualbox-5-0/">here</a>

The easiest to install it is to use tasksel or you can install them individually.
<pre class="toolbar-overlay:false lang:sh decode:true ">sudo tassel</pre>
&nbsp;

You should get a screen that looks like this.

<a href="https://www.capatek-tutorials.com/uploads/2015/08/Screen-Shot-2015-08-05-at-22.13.25.png"><img class=" size-full wp-image-197 aligncenter" src="https://www.capatek-tutorials.com/uploads/2015/08/Screen-Shot-2015-08-05-at-22.13.25.png" alt="Screen Shot 2015-08-05 at 22.13.25" /></a>

&nbsp;

As you can see there are a lot of options you can choose from but we only need one of them.

Select LAMP Server and let it do its thing and your good to go. :)

When it gets around to installing MySQL it will ask you to create a root password, don't forget this password otherwise it will mean downtime for the server which no one wants.

<a href="https://www.capatek-tutorials.com/uploads/2015/08/Screen-Shot-2015-08-05-at-22.16.56.png"><img class=" size-full wp-image-198 aligncenter" src="https://www.capatek-tutorials.com/uploads/2015/08/Screen-Shot-2015-08-05-at-22.16.56.png" alt="Screen Shot 2015-08-05 at 22.16.56" /></a>

&nbsp;

It will ask you to repeat the password .

Now just sit back and let it finish and you will have a LAMP server :)
<h2 style="text-align: center;"><strong><span style="text-decoration: underline;">If you don't want to use tasksel</span></strong></h2>
This is how to would install the packages individually, we need to install Apache, MySQL Server, PHP 5.x
<h3 style="text-align: center;"><span style="text-decoration: underline;"><strong>To install Apache.</strong></span></h3>
<pre class="toolbar-overlay:false lang:sh decode:true">sudo apt-get install apache2</pre>
<h3 style="text-align: center;"></h3>
<h3 style="text-align: center;"><strong><span style="text-decoration: underline;">To install MySQL server.</span></strong></h3>
<pre class="toolbar-overlay:false lang:sh decode:true ">sudo apt-get install mysql-server</pre>
&nbsp;

When you install MySQL server it will ask your for a password as it did above.

&nbsp;
<h3 style="text-align: center;"><strong><span style="text-decoration: underline;">To install PHP.</span></strong></h3>
<pre class="lang:sh decode:true ">sudo apt-get install php5</pre>
&nbsp;
<p style="text-align: left;">Now to get your servers IP address you can do this by</p>

<pre class="lang:sh decode:true ">ifconfig</pre>
&nbsp;
<p style="text-align: left;">You should get something like this</p>

<pre class="lang:sh highlight:0 decode:true crayon-selected">eth0         Link encap:Ethernet HWaddr 08:00:27:08:71:26 
             inet addr:192.168.0.13 Bcast:192.168.0.255 Mask:255.255.255.0
             inet6 addr: fe80::a00:27ff:fe08:7126/64 Scope:Link
             inet6 addr: fd93:225a:6a91:0:b80c:21cc:138e:e0b9/64 Scope:Global
             inet6 addr: fd93:225a:6a91:0:a00:27ff:fe08:7126/64 Scope:Global
             UP BROADCAST RUNNING MULTICAST MTU:1500 Metric:1
             RX packets:96 errors:0 dropped:0 overruns:0 frame:0
             TX packets:97 errors:0 dropped:0 overruns:0 carrier:0
             collisions:0 txqueuelen:1000 
             RX bytes:15224 (15.2 KB) TX bytes:12579 (12.5 KB)

lo           Link encap:Local Loopback
             inet addr:127.0.0.1 Mask:255.0.0.0
             inet6 addr: ::1/128 Scope:Host
             UP LOOPBACK RUNNING MTU:65536 Metric:1
             RX packets:0 errors:0 dropped:0 overruns:0 frame:0
             TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
             collisions:0 txqueuelen:0 
             RX bytes:0 (0.0 B) TX bytes:0 (0.0 B)</pre>
<h3 style="text-align: center;"></h3>
<h3 style="text-align: center;"><strong><span style="text-decoration: underline;">Create your first PHP script.</span></strong></h3>
Now we can create a php script to test the configuration. If you create a file in /var/www/ called info.php
<pre class="toolbar-overlay:false lang:sh decode:true ">sudo nano /var/www/info.php</pre>
&nbsp;
<pre class="toolbar-overlay:false lang:php decode:true ">&lt;?php phpinfo();?&gt;</pre>
&nbsp;

There you have it, you should get something similar to this<img class="alignnone size-full wp-image-272" src="https://www.capatek-tutorials.com/uploads/2015/08/2.png" alt="2" width="711" height="877" />