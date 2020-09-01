---
id: 337
title: MySQL backup and restore
date: 2016-01-19T19:05:52+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=337
permalink: /mysql/mysql-backup-and-restore/
dsq_thread_id:
  - "6291172321"
image: /wp-content/uploads/2016/01/MySQL.png
categories:
  - MySQL
tags:
  - Backup and Restore
  - Databases
  - MySQL
---
<h2 style="text-align: center;"><span style="text-decoration: underline;">MySQL backup and restore</span></h2>
<h3 style="text-align: center;"><span style="text-decoration: underline;">Backing up MySQL</span></h3>
&nbsp;

<strong>mysqldump </strong>is an easy to use tool for creating MySQL backups. This tool will create a text file full of the sql statements needed to create your database as it was at the time of executing mysqldump. Please note that these files can get very big so it's not recommended to open the backup in a text editor.

&nbsp;

You can See everything that mysqldump <a href="http://dev.mysql.com/doc/refman/5.7/en/mysqldump.html">here</a>
<h4 style="text-align: center;"></h4>
<h4 style="text-align: center;"><strong><span style="text-decoration: underline;">Creating a backup for a single database.</span></strong></h4>
 
<pre class="lang:sh decode:true " >mysqldump -uuser -ppassword database database.sql</pre> 

<h4 style="text-align: center;"><span style="text-decoration: underline;"><strong>Creating a back up for multiple databases.</strong></span></h4>
 
<pre class="lang:sh decode:true " >mysqldump -uuser-ptmppassword --databases database1 database2 database1_database2.sql</pre> 

<h4 style="text-align: center;"></h4>
<h4 style="text-align: center;"><strong><span style="text-decoration: underline;">Creating a back up of all databases.</span></strong></h4>
 
<pre class="lang:sh decode:true " >mysqldump -uuser --all-databases all_databases.sql</pre> 

<h3 style="text-align: center;"></h3>
<h3 style="text-align: center;"><span style="text-decoration: underline;"><strong>Restoring MySQL.</strong></span></h3>
 
<pre class="lang:sh decode:true " >mysql -uuser -ppassword</pre> 

 
 
<pre class="toolbar-overlay:false lang:mysql decode:true " >
create database database1;

mysql&amp;gt; exit

mysql -uuser -ppassword database1 &amp;amp;amp;lt; database1.sql</pre> 

