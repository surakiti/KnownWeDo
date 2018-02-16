<<<<<<< HEAD
# KownWeDo
# KnownWeDo.
=======
# Known We Do

INT206 Software Process Management Project  </br>
Video : https://www.youtube.com/watch?v=sY4eLuRwZ6s

# Getting started
Clone git command : '$ git clone https://github.com/surakiti/KnownWeDo.git'

### 1. Apache Maven 
install 'Apache Maven'</br>
Download : http://maven.apache.org/download.cgi</br>
after install you access your directiry that clone git </br>
$ cd 'your directory'</br>
$ mvn clean install</br>
you can use plugin IDE for helping config dependencies in 'POM.xml' file </br>
'POM.xml' file : https://github.com/surakiti/KnownWeDo/blob/master/KnowWeDo/pom.xml


### 2. Apache Tomcat  
install 'Apache Tomcat Server' </br>
Download : https://tomcat.apache.org/download-80.cgi   </br>
add server on NetBeansIDE </br>
choose 'Apache Tomcat' set your username and password   



### 3. MySQL Community Server 5.7 	
install database server 'MySQL Community Server 5.7'

* [Windows]  
Download : https://dev.mysql.com/downloads/windows/installer/5.7.html  
use 'MySQL Workbench' to manage database

* [MacOS]  
Download : https://dev.mysql.com/downloads/mysql/ </br>

[How to install on MacOSX]</br>
select Mac OSX platform and select dmg file</br>
edit file command : </br>
$ .bash_profile</br>
copy following statement and paste in 'bash_profile'</br>
#Add MySQL</br>
export MYSQL_ROOT=/usr/local/mysql </br>
export PATH=$MYSQL_ROOT/bin:$PATH</br>
open terminal and cammand :</br>
$ mysql -u root -p</br>
enter password that you got at the installing</br>
you can set new password command:</br>
$ SET PASSWORD = PASSWORD('new password');</br>
you can manage database with command line or use database management software(MySQL Workbench) for managing database with interface

# Config Properties
create file 'config.properties' into '/src/main/resoures'</br>
copy following statement and paste</br>
" dburl=${databaseURL}</br>
dbuser=${databaseUsername}</br>
dbpassword= ${databasePassword} "

# Member

58130500070 วีระภัทร ลออทรัพยาภัทร

58130500081 สุรกิติ โสภณธนพัต

58130500093 เอกราช อัศวรักษ์สกุล

58130500095 จิรายุ จันทร์พงษ์

58130500101 สมัชญ์ศักย์ ภาคธูป

58130500108 ฉันทวัฒน์ ประดิษฐ
>>>>>>> e2c8002bb6faa101ff5fd568e5aaa8f2c872a9a1
