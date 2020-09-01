---
id: 641
title: Getting started with AWS S3
date: 2017-10-20T00:36:52+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=641
permalink: /aws/getting-started-aws-s3/
dsq_thread_id:
  - "6227370534"
amazonS3_cache:
  - 'a:60:{s:95:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1.png";i:643;s:69:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/s3-console.png";i:644;s:95:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1.png";i:648;s:93:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46.png";i:649;s:93:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48.png";i:650;s:103:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1-300x178.png";i:643;s:104:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1-1024x609.png";i:643;s:77:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/s3-console-300x129.png";i:644;s:78:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/s3-console-1024x442.png";i:644;s:103:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1-300x178.png";i:648;s:104:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1-1024x609.png";i:648;s:101:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46-300x178.png";i:649;s:102:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46-1024x609.png";i:649;s:101:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48-300x179.png";i:650;s:102:"//www.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48-1024x610.png";i:650;s:95:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1.png";i:643;s:104:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1-1024x609.png";i:643;s:69:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/s3-console.png";i:644;s:78:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/s3-console-1024x442.png";i:644;s:95:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1.png";i:648;s:104:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1-1024x609.png";i:648;s:93:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46.png";i:649;s:102:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46-1024x609.png";i:649;s:93:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48.png";i:650;s:102:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48-1024x610.png";i:650;s:103:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1-300x178.png";i:643;s:77:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/s3-console-300x129.png";i:644;s:103:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1-300x178.png";i:648;s:101:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46-300x178.png";i:649;s:101:"//www.Capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48-300x179.png";i:650;s:95:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1.png";i:643;s:104:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1-1024x609.png";i:643;s:69:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/s3-console.png";i:644;s:78:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/s3-console-1024x442.png";i:644;s:95:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1.png";i:648;s:104:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1-1024x609.png";i:648;s:93:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46.png";i:649;s:102:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46-1024x609.png";i:649;s:93:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48.png";i:650;s:102:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48-1024x610.png";i:650;s:103:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1-300x178.png";i:643;s:77:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/s3-console-300x129.png";i:644;s:103:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1-300x178.png";i:648;s:101:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46-300x178.png";i:649;s:101:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48-300x179.png";i:650;s:95:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1.png";i:643;s:103:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1-300x178.png";i:643;s:104:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1-1024x609.png";i:643;s:69:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/s3-console.png";i:644;s:77:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/s3-console-300x129.png";i:644;s:78:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/s3-console-1024x442.png";i:644;s:95:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1.png";i:648;s:103:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1-300x178.png";i:648;s:104:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1-1024x609.png";i:648;s:93:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46.png";i:649;s:101:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46-300x178.png";i:649;s:102:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46-1024x609.png";i:649;s:93:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48.png";i:650;s:101:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48-300x179.png";i:650;s:102:"//dev.capatek-tutorials.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48-1024x610.png";i:650;}'
image: /wp-content/uploads/2016/02/amazon-aws-e1457916195618.png
categories:
  - AWS
---
AWS S3 is a great storage service that allows you to store "unlimited files" and have unlimited space, and Amazon look after all the data by storing it in at least two different physical locations and they guarantee 99.999999999% durability this basically means that it there is also no chance of losing the data so it is very safe.

S3 is also very cheap as you only pay for the storage you use on a monthly basis. It also comes packed full of features but they are out of the scope of this tutorial.

Today we are going to get started with AWS S3 (Simple Storage Service), I'm going to walk you through create an S3 bucket an upload a file.

There is only one requirement in this tutorial which is an AWS account.

So if you log into your AWS account you will be presented with the screen below.

Then if you click on S3 as annotated on the screen. <img class="alignnone wp-image-643 size-full" src="https://www.capatek-tutorials.com/uploads/2017/10/Screen-Shot-2017-10-20-at-00.47.15-1.png" alt="" width="1392" height="828" />

<img class="alignnone wp-image-644 size-full" src="https://www.capatek-tutorials.com/uploads/2017/10/s3-console.png" alt="" width="1557" height="672" />

&nbsp;

<img class="alignnone wp-image-648 size-full" src="https://www.capatek-tutorials.com/uploads/2017/10/Screen-Shot-2017-10-20-at-00.38.10-1.png" alt="" width="1392" height="828" />

<img class="alignnone wp-image-649 size-full" src="https://www.capatek-tutorials.com/uploads/2017/10/Screen-Shot-2017-10-20-at-00.39.46.png" alt="" width="1392" height="828" />

When you click on the bucket you will get this page<img class="alignnone wp-image-650 size-full" src="https://www.capatek-tutorials.com/uploads/2017/10/Screen-Shot-2017-10-20-at-01.12.48.png" alt="" width="1392" height="829" />

Then you can upload a file(can be any type).

&nbsp;

There you have, easy isn't it. You will find that S3 can be very powerful some use cases are as follows:
<ul>
 	<li>Backing up random data/databases and whole websites</li>
 	<li>Using it as a temp store for some apps</li>
 	<li>Actually making a website/app use S3 for all assets (images etc)</li>
 	<li>Can also use S3 to host a static website, all you need to do is add the HTML files and some options boom you have a basic website.</li>
</ul>