---
id: 614
title: Enabling HTTPS on Apache HTTP Server on Amazon Linux
date: 2017-03-22T19:51:21+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=614
permalink: /apache-http-server/enabling-https-apache-http-server/
dsq_thread_id:
  - "5694750373"
image: /wp-content/uploads/2017/03/apache-httpd.png
categories:
  - Apache HTTP Server
tags:
  - Apache HTTP Server
  - HTTPS
---
In this tutorial we go over how to enable HTTPS on Apache HTTP Server, HTTPS is used to encrypt traffic to and from the server.

This is a very common practice now with also every site having HTTPS turned on. As this helps to keep your websites secure. Linux server that is accessible from the internet. I'm using Amazon Linux via Amazons new service called Lightsail

You only need a Linux server that is accessible from the internet with apache installed. I'm using Amazon Linux via Amazon new service called Lightsail.

I will be using a self-signed certificate as this the easiest way to get started. But to go live with HTTPS on your website you will need a certificate signed by a certificate authority such as <a href="https://www.godaddy.com/">GoDaddy</a>.

Let's get started!
<h3 style="text-align: center;">Installing mod_ssl</h3>
First, we will need to install an Apache module called mod_ssl, there are different packages depending on your version of Apache HTTP server for 2.2 you can run:
<pre>yum install mod_ssl</pre>
For Apache HTTP server 2.4 you need to install:
<pre>yum install mod24_ssl</pre>
Next, we need to restart the httpd service by running:
<pre>service httpd restart</pre>
Once the service has restarted we should be able to browse to the server by going to <code>https://servername</code>

Once this module is installed we should see a new file in <code>/etc/httpd/conf.d/ssl.conf</code>

This is where we make additional config changes to the SSL set up such a changing which cyphers the server uses if you need the site to be very secure. What versions of SSL and TLS you are willing to support as its recommended that we do not use some of the default but I leave that choice to you.

&nbsp;