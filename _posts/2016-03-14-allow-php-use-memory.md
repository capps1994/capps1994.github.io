---
id: 543
title: How to allow PHP use more memory
date: 2016-03-14T22:13:25+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=543
permalink: /php/allow-php-use-memory/
dsq_thread_id:
  - "5757835198"
image: /wp-content/uploads/2016/03/php_logo.png
categories:
  - PHP
tags:
  - Configuration
  - PHP
---
<p class="crayon-selected">Some of you might have seen this error before</p>

<pre class="crayon-selected">fatal error: Allowed memory size of 134217728 bytes exhausted (tried to allocate 54 bytes)</pre>
By default php allows you to have 128MB this should suffice most basic websites. But certain CMS like Magento require more than 128MB to run. so today I'm going to show you.

Find the line that says memory_limit=128M
<p class="crayon-selected">(Note: M = MB, G = GB)</p>
<p class="crayon-selected">So its valid to do memory_limit=2G</p>
<p class="crayon-selected">If you want no limit on your server you can use memory_limit=-1</p>
In Ubuntu with apache2:
<pre class="">cd /etc/php5/apache2/php.ini</pre>
<p class="crayon-selected">In RHEL, Fedora, or CentOS:</p>

<pre class="">cd /etc/php5/php.ini</pre>
<p class="crayon-selected">If you have shared hosting you can either request for the memory limit to but raised if if your ok editing PHP files you can add this to somewhere that gets loaded every time the page is ran.</p>

<pre class="lang:ini decode:true crayon-selected">ini_set('memory_limit','16M');</pre>
&nbsp;