---
id: 210
title: Resetting a forgotten MySQL server passwords
date: 2015-08-14T12:31:46+00:00
author: Christopher Caplan

guid: https://dev.capatek-tutorials.com/?p=210
permalink: /mysql/resetting-a-forgotten-mysql-server-passwords/
dsq_thread_id:
  - "6341892538"
cover: /wp-content/uploads/2016/01/MySQL.png
categories:
  - MySQL
tags:
  - Databases
  - Linux
  - MySQL
---
<h4 id="change-mysql-password-for-other-users" style="text-align: center;">Change MySQL password for other users</h4>
To change a normal user password you need to type:
<pre class="toolbar-overlay:false lang:sh decode:true ">mysqladmin -u user-name -p old password newpass</pre>

<hr />

<h4 style="text-align: center;"></h4>
<h4 style="text-align: center;">Resetting forgotten root password</h4>
Step # 1 : Stop the MySQL service:
<pre class="lang:sh decode:true">/etc/init.d/mysql stop</pre>
Output:
<pre class="lang:sh highlight:0 decode:true ">Stopping MySQL database server: mysqld.</pre>
&nbsp;

Step # 2: Start the MySQL server w/o password:
<pre class="lang:sh decode:true">mysqld_safe --skip-grant-tables
</pre>
Output:
<pre class="lang:sh highlight:0 decode:true">[1] 5988
Starting mysqld daemon with databases from /var/lib/mysql
mysqld_safe[6025]: started
</pre>
Step # 3: Connect to the MySQL server using the MySQL client:
<pre class="lang:sh decode:true">mysql -u root</pre>
Output:
<pre class="lang:sh highlight:0 decode:true">Welcome to the MySQL monitor. Commands end with ; or \g.
Your MySQL connection id is 1 to server version: 4.1.15-Debian_1-log

Type 'help;' or '\h' for help. Type '\c' to clear the buffer.

</pre>
Step # 4: Set a new MySQL root user password:
<pre class="lang:sh decode:true crayon-selected">mysql -u root</pre>
<pre class="toolbar-overlay:false lang:mysql decode:true">mysq use mysql;
mysql update user set password=PASSWORD("NEW-ROOT-PASSWORD") where User='root';
mysql flush privileges;
mysql quit</pre>
&nbsp;

Step # 5: Stop the MySQL server:
<pre class="lang:sh decode:true">/etc/init.d/mysql stop</pre>
<pre>Output:
Stopping MySQL database server: mysqld
STOPPING server from pid file /var/run/mysqld/mysqld.pid
mysqld_safe[6186]: ended

[1]+ Done mysqld_safe --skip-grant-tables
</pre>
Start the MySQL server and test it:
<pre class="toolbar-overlay:false lang:sh decode:true ">/etc/init.d/mysql start
mysql -u root -p</pre>
&nbsp;

<hr />