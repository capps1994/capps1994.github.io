---
id: 591
title: Client Certificate Authentication on Apache HTTP Server
date: 2017-03-18T03:04:52+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=591
permalink: /apache-http-server/client-certificate-authentication-apache-2-4/
dsq_thread_id:
  - "5695456342"
amazonS3_cache:
  - 'a:12:{s:93:"//www.capatek-tutorials.com/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13.png";i:603;s:102:"//www.capatek-tutorials.com/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13-1024x514.png";i:603;s:101:"//www.capatek-tutorials.com/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13-300x151.png";i:603;s:93:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13.png";i:603;s:102:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13-1024x514.png";i:603;s:101:"//www.CAPATEK-TUTORIALS.COM/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13-300x151.png";i:603;s:93:"//www.Capatek-tutorials.com/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13.png";i:603;s:102:"//www.Capatek-tutorials.com/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13-1024x514.png";i:603;s:101:"//www.Capatek-tutorials.com/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13-300x151.png";i:603;s:93:"//dev.capatek-tutorials.com/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13.png";i:603;s:101:"//dev.capatek-tutorials.com/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13-300x151.png";i:603;s:102:"//dev.capatek-tutorials.com/wp-content/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13-1024x514.png";i:603;}'
image: /wp-content/uploads/2017/03/apache-httpd.png
categories:
  - Apache HTTP Server
tags:
  - Apache HTTP Server
  - Certificate
---
Client certificate authentication is used for securing websites or other web services. This is one of the more advanced ways to authenticate to a service as it requires configuration on the server side as well as the client side.

We will go over how to get to create the CA (Certificate Authority) certificate for the server as well as generating a client-side certificate from the CA certificate and also how to convert the certificate to be used in web browsers and finally how to import and configure the web browser to authenticate using this certificate.

We will be using Apache web server to handle the server side so an Apache web server is required for this tutorial as well as OpenSSL.

You will also need a valid SSL certificate for https as some web browser won't le you on the site even if you have the correct certificate.

Most web servers can handle client certificate authentication but the configuration can be different.

Let's get started!
<h3 style="text-align: center;">Generating Server Certificates</h3>
Let's start with generating the certification authority certificates and private keys.

So open up an ssh session on the server and run the following:
<p style="text-align: left; padding-left: 30px;"><code>openssl genrsa -out ca.key 4096</code></p>
<p style="text-align: left;">This creates the private key for the key, this should be kept in an offline location to improve security.</p>
<p style="text-align: left;">Now we need to request a certificate from the CA Private key:</p>
<p style="text-align: left; padding-left: 30px;"><code>openssl req -new -x509 -days 365 -key ca.key -out ca.crt</code></p>
<p style="text-align: left;">What this will do is create a CA certificate which will be used by apache later on.</p>
<p style="text-align: left;">This will also ask some questions such as country, province, organisation and most importantly the common name which is the human identifier for the certificate. Example below:</p>
&nbsp;
<pre>Country Name (2 letter code) [XX]:GB

State or Province Name (full name) []:England

Locality Name (eg, city) [Default City]:London

Organization Name (eg, company) [Default Company Ltd]:Some Company

Organizational Unit Name (eg, section) []:Some Comapany

Common Name (eg, your name or your server's hostname) []:some company CA

Email Address []:</pre>
<p style="text-align: left;">So that is the server side certificates done let's move onto the client side certificates, these will be installed on the client computer or browser.</p>
<p style="text-align: left;"> It's more or less the same as above with one or to differences.</p>

<h3 style="text-align: center;">Generating Client Certificates</h3>
Same as above create another private key for the client side:
<p style="padding-left: 30px;"><code>openssl genrsa  -out client.key 4096</code></p>
<p style="text-align: left;"> Next, we create a certificate signing request so we can use this to sign against the CA certificate that we created earlier.</p>
<p style="text-align: left; padding-left: 30px;"><code>openssl req -new -key client.key -out client.csr</code></p>
<p style="text-align: left;">This should ask the same questions about location and organisation.</p>
<p style="text-align: left;">Now we sign the certificate against the CA certificate and private key this so the certificate will match when using if for authentication.</p>
<p style="text-align: left; padding-left: 30px;"><code>openssl x509 -req -days 365 -in client.csr -CA ca.crt -CAkey ca.key -set_serial 01 -out client.crt</code></p>
<p style="text-align: left;">Now that we have this certificate we need to combine the files and convert it to a .p12 file so we can use it in a web browser.</p>
<p style="text-align: left; padding-left: 30px;"><code>openssl pkcs12 -export -out domainname.pfx -inkey client.key -in client.crt</code></p>
<p style="text-align: left;">This will ask you to create an export password, this just makes the file more secure so I would recommend it, but do not lose the password as you will need to run the command again and reinstall the certificates on every machine that they are used on.</p>

<h3 style="text-align: center;"> Configuring Apache to handle client certificates</h3>
To configure apache on Amazon Linux / CentOS to use certificate authentication we need to make sure that mod_ssl is installed, enabled and configured. This is out of the scope of this topic, you should be able to do a google search easily enough.

once you have mod_ssl installed you should get a file in <code>/etc/httpd/ssl.conf</code>

Inside this file, you will see lots of default settings, but you are looking for a line that says
<p class="p1" style="padding-left: 30px;"><span class="s1"><code>SSLCACertificateFile</code></span></p>
<p class="p1">all you need to do is uncomment out and replace the directly it is pointing to the ca.crt file that we created earlier.</p>
<p class="p1">so it should look a little like this:</p>
<p class="p1" style="padding-left: 30px;"><span class="s1"><code>SSLCACertificateFile /home/ec2-user/ca.crt</code></span></p>
<p class="p1">We also want to force apache to require a certificate before processing the request.</p>
<p class="p1">We only need to uncomment out the following line:</p>
<p class="p1" style="padding-left: 30px;"><span class="s1"><code>SSLVerifyClient require</code></span></p>
<p class="p1">As with every configuration change in apache, we need to restart the service</p>
<p class="p1" style="padding-left: 30px;"><code>service httpd restart</code></p>

<h3 class="p1" style="text-align: center;"> Installing the client certificate on client computers.</h3>
To install the client certificates we need to download thedomainname.pfx and the ca.crt files from the server.

once these files are downloaded on our client machine it should be a case of just double clicking the file then enter the export password we created earlier.

Do the same for the ca.crt file as you may get some trust issues with the computer. but this isn't mandatory as it should without.

Now when you go to browse to the web service the web browser should ask what certificate to use.<img class="size-full wp-image-603 aligncenter" src="https://www.capatek-tutorials.com/uploads/2017/03/Screen-Shot-2017-03-18-at-02.51.13.png" alt="" width="1280" height="643" />

&nbsp;

Click Continue and it should let you in. Click Cancel and it shouldn't let you on.