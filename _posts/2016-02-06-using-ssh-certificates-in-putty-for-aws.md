---
id: 381
title: Using SSH certificates in putty for AWS EC2.
date: 2016-02-06T19:07:20+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=381
permalink: /aws/using-ssh-certificates-in-putty-for-aws/
dsq_thread_id:
  - "5862481479"
amazonS3_cache:
  - 'a:30:{s:67:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/image001.jpg";i:383;s:75:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/image001-300x290.jpg";i:383;s:67:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/image002.jpg";i:384;s:75:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/image002-300x240.jpg";i:384;s:67:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/image003.jpg";i:385;s:75:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/image003-300x240.jpg";i:385;s:67:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/image004.png";i:386;s:75:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/image004-300x195.png";i:386;s:67:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/image005.png";i:387;s:75:"//www.capatek-tutorials.com/wp-content/uploads/2016/02/image005-300x160.png";i:387;s:67:"//www.Capatek-tutorials.com/wp-content/uploads/2016/02/image001.jpg";i:383;s:75:"//www.Capatek-tutorials.com/wp-content/uploads/2016/02/image001-300x290.jpg";i:383;s:67:"//www.Capatek-tutorials.com/wp-content/uploads/2016/02/image002.jpg";i:384;s:75:"//www.Capatek-tutorials.com/wp-content/uploads/2016/02/image002-300x240.jpg";i:384;s:67:"//www.Capatek-tutorials.com/wp-content/uploads/2016/02/image003.jpg";i:385;s:75:"//www.Capatek-tutorials.com/wp-content/uploads/2016/02/image003-300x240.jpg";i:385;s:67:"//www.Capatek-tutorials.com/wp-content/uploads/2016/02/image004.png";i:386;s:75:"//www.Capatek-tutorials.com/wp-content/uploads/2016/02/image004-300x195.png";i:386;s:67:"//www.Capatek-tutorials.com/wp-content/uploads/2016/02/image005.png";i:387;s:75:"//www.Capatek-tutorials.com/wp-content/uploads/2016/02/image005-300x160.png";i:387;s:67:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/image001.jpg";i:383;s:75:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/image001-300x290.jpg";i:383;s:67:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/image002.jpg";i:384;s:75:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/image002-300x240.jpg";i:384;s:67:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/image003.jpg";i:385;s:75:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/image003-300x240.jpg";i:385;s:67:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/image004.png";i:386;s:75:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/image004-300x195.png";i:386;s:67:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/image005.png";i:387;s:75:"//dev.capatek-tutorials.com/wp-content/uploads/2016/02/image005-300x160.png";i:387;}'
cover: /wp-content/uploads/2016/02/amazon-aws-e1457916195618.png
categories:
  - AWS
tags:
  - AWS
  - EC2
  - Putty
  - ssh
---
Using putty to connect to AWS EC2 Linux servers is relatively straight forward but no obvious as AWS gives a Linux compatible certificate (.pem) file which don’t work with putty. So all we need to do is convert it to a ppk file that putty likes.
First we need a few things:

PuttyGen
your certificate you want to convert(.pem)
First you will need a program called puttygen. The easiest way to get this is to download the putty installer which can be downloaded here.
This will install the putty suite, so you can do some administrative task through SSH.
Next we need the certificate (.pem) from AWS, you should already have this as it can only be downloaded once!
Now that we have putty and puttygen and the certificate. We can do the conversion.

&nbsp;

Open puttygen.

&nbsp;

<span style="color: #000000; font-family: Calibri;"><img class="size-full wp-image-383 aligncenter" src="/wp-content/uploads/2016/02/image001.jpg" alt="image001" width="328" height="317" /></span>

Click load

&nbsp;

<img class="size-full wp-image-384 aligncenter" src="/wp-content/uploads/2016/02/image002.jpg" alt="image002" width="403" height="323" />
You won’t see any files as the open dialog is set to only look for .ppk files make sure you change the file dropdown so it says all files.

&nbsp;

<img class="size-full wp-image-385 aligncenter" src="/wp-content/uploads/2016/02/image003.jpg" alt="image003" width="487" height="390" />

You should see your .pem files now click on the file and click open.

You should get this dialog now

&nbsp;

&nbsp;

<img class="size-full wp-image-386 aligncenter" src="/wp-content/uploads/2016/02/image004.png" alt="image004" width="329" height="214" />

Click ok and then click save private key.

&nbsp;

It will give you this dialog it’s up to you if you can to password protect the file.

&nbsp;

&nbsp;

<img class="size-full wp-image-387 aligncenter" src="/wp-content/uploads/2016/02/image005.png" alt="image005" width="321" height="171" />

Say yes to this is you don’t want to password protect this.

It will ask you where to save the file.

Now we’ll say if it works with putty now.

Open putty

Enter the ip of the server you want to connect to. Next expand ssh then click auth then click browse to the file that we created earlier.

Click open.

Enter username and if it lets you in that’s it converted successfully

&nbsp;
