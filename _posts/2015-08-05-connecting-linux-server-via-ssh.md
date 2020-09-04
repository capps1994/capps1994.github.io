---
id: 182
title: Connecting to a Linux server via SSH
date: 2015-08-05T21:49:16+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=182
permalink: /linux/connecting-linux-server-via-ssh/
dsq_thread_id:
  - "6082569073"
amazonS3_cache:
  - 'a:6:{s:64:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/PuTTY.png";i:205;s:72:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/PuTTY-300x290.png";i:205;s:64:"//www.Capatek-tutorials.com/wp-content/uploads/2015/08/PuTTY.png";i:205;s:72:"//www.Capatek-tutorials.com/wp-content/uploads/2015/08/PuTTY-300x290.png";i:205;s:64:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/PuTTY.png";i:205;s:72:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/PuTTY-300x290.png";i:205;}'
cover: /wp-content/uploads/2015/08/linux.png
categories:
  - Linux
tags:
  - Linux
  - ssh
---
SSH is very handy for Linux servers. It allows you to connect to the server and run commands remotely.

SSH is secure all data that is received and transmitted is encrypted and no one can see that you are sending  to the server.

You will need a few things.
<ul>
	<li>The Server must be connected to the same network as the computer you are trying to connect from</li>
	<li>OpenSSH must be installed on the server.</li>
	<li>The IP address of the server you would like to connect to.</li>
	<li>The username and password for the server.</li>
	<li>Putty (if you are in windows)</li>
</ul>
Lets start but installing Openssh on the server.

For Ubuntu and Debian based systems type this command in.

[code language="bash"]sudo apt-get install ssh[/code]

For CentOS and Redhat based systems type this

[code language="bash"]sudo yum install ssh[/code]

next we get the ip address,you use this command.

[code language="bash"]ifconfig[/code]

You should get some output like this
<pre>eth0      Link encap:Ethernet  HWaddr 08:00:27:08:71:26
          <strong>inet addr:192.168.0.13</strong>  Bcast:192.168.0.255  Mask:255.255.255.0
          inet6 addr: fe80::a00:27ff:fe08:7126/64 Scope:Link
          inet6 addr: fd93:225a:6a91:0:b80c:21cc:138e:e0b9/64 Scope:Global
          inet6 addr: fd93:225a:6a91:0:a00:27ff:fe08:7126/64 Scope:Global
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:96 errors:0 dropped:0 overruns:0 frame:0
          TX packets:97 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:15224 (15.2 KB)  TX bytes:12579 (12.5 KB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

</pre>
What you see in bold is your IP Address.

Now on to the fun stuff.

If you are on MAC OS X ,linux of sorts you can just open up a terminal and enter something like this.

[code language="bash"] ssh username@serverip[/code]

So in my case it will be this.

[code language="bash"] ssh caplanc@192.168.0.13 [/code]

&nbsp;

When you enter you may get this message
<pre>The authenticity of host '192.168.0.13 (192.168.0.13)' can't be established.
RSA key fingerprint is 79:fc:ce:d0:a4:29:1b:4d:45:49:e0:fd:b8:71:bb:5e.
Are you sure you want to continue connecting (yes/no)?
</pre>
Type yes

Then it will ask you for the password for the server.

You should now get this screen
<pre>ChristophersMBP:~ caplanc$ ssh caplanc@192.168.0.13

caplanc@192.168.0.13's password:
Welcome to Ubuntu 14.04 LTS (GNU/Linux 3.13.0-24-generic x86_64)

 * Documentation: https://help.ubuntu.com/
 System information as of Wed Aug 5 21:40:58 BST 2015

 System load: 0.26                      Processes: 71
 Usage of /: 12.5% of 8.73GB            Users logged in: 1
 Memory usage: 5%                       IP address for eth0: 192.168.0.13 ]
 Swap usage: 0%

 Graph this data and manage this system at:
  https://landscape.canonical.com/

181 packages can be updated.
97 updates are security updates.

Last login: Wed Aug 5 21:40:59 2015 from 192.168.0.6

caplanc@Ubuntu-server:~$
</pre>
Todo this on Windows we need to install a program called putty you can get it here.
<a href="http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.65-installer.exe">http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.65-installer.exe</a>

<a href="/wp-content/uploads/2015/08/PuTTY.png"><img class=" size-full wp-image-205 aligncenter" src="/wp-content/uploads/2015/08/PuTTY.png" alt="PuTTY" /></a>
It will ask for a username and password.

When you enter it you should see the same message as above.
