from ubi8
run yum -y install httpd && yum clean all
copy index.html /var/www/html/index.html
run sed -i -e 's/^Listen 80$/Listen 8080/' -e 's/^Group apache/Group root/' /etc/httpd/conf/httpd.conf
run chmod g+s /usr/sbin/httpd 
cmd ["httpd", "-D", "FOREGROUND"]
expose 8080
