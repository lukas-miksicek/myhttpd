from ubi8
run yum -y install httpd && yum clean all
copy index.html /var/www/html/index.html
run sed -i 's/^Listen 80$/Listen 8080/' /etc/httpd/conf/httpd.conf
cmd ["httpd", "-D", "FOREGROUND"]
expose 8080
