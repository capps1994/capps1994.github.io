---
id: 555
title: Introduction to AWS
date: 2016-03-16T00:29:55+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=555
permalink: /aws/introduction-to-aws/
dsq_thread_id:
  - "5853166022"
cover: /wp-content/uploads/2016/03/introduction-to-aws.png
categories:
  - AWS
tags:
  - AWS
  - EC2
  - S3
  - VPC
---
Today I'm going to talk about AWS. What is AWS? AWS Stands for Amazon Web Services, it's a set of web services that allows you to create more or less any kind of application. Whether it's a website, mobile application or IOT application.

It does it all. Hey you can use it for just as a datasource if you wanted. AWS also allows you to extend your existing <a href="https://en.wikipedia.org/wiki/Infrastructure">infrastructure</a> via VPN connections. So if you are running tight on server space you can just create an <a href="https://aws.amazon.com/vpc/details/" target="_blank">VPC</a> with an <a href="https://aws.amazon.com/ec2/details/" target="_blank">EC2 </a>Instances. You can also use AWS as just more storage using <a href="https://aws.amazon.com/s3/details/" target="_blank">S3</a> for extra web storage or <a href="https://aws.amazon.com/glacier/details/" target="_blank">Glacier</a> for archiving old data.

AWS's most common services are S3, VPC and EC2.

<hr />

<h2 style="text-align: center;"><strong>Simple Storage Service (S3)</strong></h2>
S3 Allows you to create what they call buckets. So what is a bucket? A bucket is a storage area within S3, think of it as a hard drive or some private space. Within the buckets you have objects, objects are basically files you save into your bucket.

<hr />

<h2 style="text-align: center;"><strong>Virtual Private Cloud(VPC)</strong></h2>
<p style="text-align: left;">Think of VPC as you network Infrastructure, it allows you to create subnets, routes, and VPN's so you can add to your existing infrastructure or you can create your own. It also has security group feature that acts as a firewall. Its the base for a lot of AWS.</p>


<hr />

<h2 style="text-align: center;"><strong>Elastic Compute cloud (EC2)</strong></h2>
<p style="text-align: left;">EC2 is AWS hosting, so if you want to create a website, application server or an thing that will require a computer this is where you do it EC2 supports Linux and Windows instances. Instances is the server it self. Once you create the instance you get logon details and you can do what ever you want to the instance.</p>


<hr />
<p style="text-align: left;">I hope this was a good introduction to AWS, you can ask me anything in the comments! Happy AWSing!</p>