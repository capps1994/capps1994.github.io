---
id: 230
title: LEMP Install on Ubuntu 14.04 LTS
date: 2015-08-16T13:42:41+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=230
permalink: /linux/installing-lemp-on-ubuntu-14-04-lts/
dsq_thread_id:
  - "5963519122"
amazonS3_cache:
  - 'a:12:{s:60:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/1.png";i:240;s:68:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/1-300x123.png";i:240;s:60:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/2.png";i:272;s:68:"//www.capatek-tutorials.com/wp-content/uploads/2015/08/2-243x300.png";i:272;s:60:"//www.Capatek-tutorials.com/wp-content/uploads/2015/08/1.png";i:240;s:68:"//www.Capatek-tutorials.com/wp-content/uploads/2015/08/1-300x123.png";i:240;s:60:"//www.Capatek-tutorials.com/wp-content/uploads/2015/08/2.png";i:272;s:68:"//www.Capatek-tutorials.com/wp-content/uploads/2015/08/2-243x300.png";i:272;s:60:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/1.png";i:240;s:68:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/1-300x123.png";i:240;s:60:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/2.png";i:272;s:68:"//dev.capatek-tutorials.com/wp-content/uploads/2015/08/2-243x300.png";i:272;}'
image: /wp-content/uploads/2015/08/logo-ubuntu_su-orange-hex.png
categories:
  - Linux
tags:
  - LEMP
  - nginx
  - ubuntu
---
The LEMP Stack is similar to the LAMP Stack, the only difference is that you will have nginx (pronounced engine x) instead of apache.

You wont much differences in between the two but here are some.
<ul>
	<li>uses less resources on the server so it will handle more concurrent connections if you have a very busy site.</li>
	<li>Is quite good as a reverse proxy server (load balancer).</li>
	<li>Very fast at serving static content.</li>
	<li>Does NOT have native PHP interpreter.</li>
</ul>
What you will need:
<ul>
	<li>Ubuntu Server (if you don't have one you can view my other <a href="https://www.capatek-tutorials.com/topics/linux/ubuntu/installing-ubuntu-14-04-lts-server-in-virtualbox-5-0/" target="_blank">tutorial </a>on how to install Ubuntu in Virtualbox)</li>
</ul>

<hr />

<h4 style="text-align: center;">Installing Nginx.</h4>
Once you have an Ubuntu machine we check that the Ubuntu repositories are up to date.
<pre class="lang:sh decode:true ">sudo apt-get update</pre>
Next we actually install nginx
<pre class="lang:sh decode:true ">sudo apt-get install nginx</pre>
You can test if the server is up and running by accessing your server's domain name or public IP address in your web browser. You should receive this message.

<a href="https://www.capatek-tutorials.com/uploads/2015/08/1.png"><img class="aligncenter wp-image-240 size-full" src="https://www.capatek-tutorials.com/uploads/2015/08/1.png" alt="1" width="544" height="223" /></a>

<hr />

<h4 id="step-two-—-install-mysql-to-manage-site-data" style="text-align: center;">Installing MySQL.</h4>
You can install this simply by entering:
<pre class="lang:sh decode:true ">sudo apt-get install mysql-server</pre>
I should ask you to enter a new mysql root password, if not then check out <a href="https://www.capatek-tutorials.com/topics/resetting-a-forgotten-mysql-server-passwords/" target="_blank">this</a>.

Now you would want to type.
<pre class="lang:sh decode:true ">sudo mysql_secure_installation</pre>
It will ask some simple questions and you hit y or n simple!

Make sure if you want to keep the same root password, you hit n on "change root password"

<hr />

<h4 id="step-three-—-install-php-for-processing" style="text-align: center;">Installing PHP</h4>
Now we have nginx for serving webpages and mysql to storing data we now just need a bridge it all together.

Since Nginx does not have a PHP interpreter we need to install an extra PHP module.

php5-fpm allows nginx to talk to php via <a href="https://en.wikipedia.org/wiki/FastCGI" target="_blank">fastcgi</a>

[code language="bash"]sudo apt-get install php5-fpm php5-mysql[/code]

&nbsp;
<h5 id="configure-the-php-processor" style="text-align: center;">Configure PHP .</h5>
open the configuration file for php fpm
<pre class="lang:sh decode:true ">sudo nano /etc/php5/fpm/php.ini</pre>
What we are looking for in this file is the parameter that sets cgi.fix_pathinfo.

This will be commented out with a semi-colon (;) and set to "1" by default.

This is an extremely insecure setting because it tells PHP to attempt to execute the closest file it can find if a PHP file does not match exactly. This basically would allow users to craft PHP requests in a way that would allow them to execute scripts that they shouldn't be allowed to execute.

We will change both of these conditions by uncommenting the line and setting it to "0" like this:
<pre class="lang:ini decode:true ">cgi.fix_pathinfo=0</pre>
Save and close the file when you are finished.

Now, we just need to restart our PHP processor by typing:
<pre class="lang:sh decode:true ">sudo service php5-fpm restart</pre>
This will implement the change that we made.

<hr />

<h4 id="step-four-—-configure-nginx-to-use-our-php-processor" style="text-align: center;">Configure Nginx to Use PHP.</h4>
Now, we have all of the required components installed. The only configuration change we still need to do is tell Nginx to use our PHP processor for dynamic content.

We do this on the server block level (server blocks are similar to Apache's virtual hosts). Open the default Nginx server block configuration file by typing:
<pre class="lang:sh decode:true ">sudo nano /etc/nginx/sites-available/default</pre>
Currently, with the comments removed, the Nginx default server block file looks like this:
<pre class="toolbar-overlay:false lang:sh decode:true">server {
listen 80 default_server;
listen [::]:80 default_server ipv6only=on;

root /usr/share/nginx/html;
index index.html index.htm;

server_name localhost;

location / {
try_files $uri $uri/ =404;
}
}</pre>
We need to make some changes to this file for our site.
<ul>
	<li>First, we need to add an index.php option as the first value of our index directive to allow PHP index files to be served when a directory is requested.</li>
	<li>We also need to modify the server_name directive to point to our server's domain name or public IP address.</li>
	<li>The actual configuration file includes some commented out lines that define error processing routines. We will uncomment those to include that functionality.</li>
	<li>For the actual PHP processing, we will need to uncomment a portion of another section. We will also need to add a try_files directive to make sure Nginx doesn't pass bad requests to our PHP processor.</li>
</ul>
The changes that you need to make are highlighted in the text below:
<pre class="toolbar-overlay:false lang:sh decode:true crayon-selected">server {
listen 80 default_server;
listen [::]:80 default_server ipv6only=on;

root /usr/share/nginx/html;
index index.php index.html index.htm;

server_name server_domain_name_or_IP;

location / {
try_files $uri $uri/ =404;
}

error_page 404 /404.html;
error_page 500 502 503 504 /50x.html;
location = /50x.html {
root /usr/share/nginx/html;
}

location ~ \.php$ {
try_files $uri =404;
fastcgi_split_path_info ^(.+\.php)(/.+)$;
fastcgi_pass unix:/var/run/php5-fpm.sock;
fastcgi_index index.php;
fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
include fastcgi_params;
}
}</pre>
When you've made the above changes, you can save and close the file.

Restart Nginx to make the necessary changes:
<pre class="toolbar-overlay:false lang:sh decode:true ">sudo service nginx restart</pre>
<pre class="toolbar-overlay:false lang:sh decode:true  crayon-selected">server {
listen 80 default_server;
listen [::]:80 default_server ipv6only=on;

root /usr/share/nginx/html;
index index.php index.html index.htm;

server_name server_domain_name_or_IP;

location / {
try_files $uri $uri/ =404;
}

error_page 404 /404.html;
error_page 500 502 503 504 /50x.html;
location = /50x.html {
root /usr/share/nginx/html;
}

location ~ \.php$ {
try_files $uri =404;
fastcgi_split_path_info ^(.+\.php)(/.+)$;
fastcgi_pass unix:/var/run/php5-fpm.sock;
fastcgi_index index.php;
fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
include fastcgi_params;
}
}</pre>

<hr />

<h4 id="step-five-—-create-a-php-file-to-test-configuration" style="text-align: center;">Create a PHP File to Test Configuration</h4>
Your LEMP stack should now be completely set up. We still should test to make sure that Nginx can correctly hand .php files off to our PHP processor.

We can do this by creating a test PHP file in our document root. Open a new file called info.php within your document root in your text editor:
<pre class="lang:sh decode:true ">sudo nano /usr/share/nginx/html/info.php</pre>
We can type this into the new file. This is valid PHP code that will return formatted information about our server:
<pre class="toolbar-overlay:false lang:php decode:true ">&lt;?php
phpinfo();</pre>
When you are finished, save and close the file.

Now, you can visit this page in your web browser by visiting your server's domain name or public IP address followed by /info.php:
<pre class="lang:sh highlight:0 decode:true crayon-selected">http://server_domain_name_or_IP&gt;/info.php</pre>
You should see a web page that has been generated by PHP with information about your server:

<a href="https://www.capatek-tutorials.com/uploads/2015/08/2.png"><img class=" size-full wp-image-272 aligncenter" src="https://www.capatek-tutorials.com/uploads/2015/08/2.png" alt="2" /></a>