printf "\033[1;33m install php\033[0m\n";
pkg install php;
printf "\033[1;33m install composer\033[0m\n";
pkg install composer;
printf "\033[1;33m install mysql-Mariadb\033[0m\n";
pkg install mariadb;
printf "\033[1;33m install apache2\033[0m\n";
pkg install apache2;
printf "\033[1;33m install phpmyadmin\033[0m\n";
pkg install phpmyadmin;
printf "\033[1;33m install php-apache\033[0m\n";
pkg install php-apache;
printf "\033[1;33m # Setting konfigurasi server\033[0m\n";
rm -rf $PREFIX/etc/apache2/extra;
cp -rf bin/extra $PREFIX/etc/apache2;
rm -f $PREFIX/etc/apache2/httpd.conf;
cp -f bin/httpd.conf $PREFIX/etc/apache2;
httpd -t;
rm -f $PREFIX/share/phpmyadmin/config.inc.php;
cp -f bin/config.inc.php $PREFIX/share/phpmyadmin;
printf "\033[1;33m install selesai full size: 700mb \033[1;31m^\033[0m\n";

printf "\033[1;33m # Setting konfigurasi mysql\033[0m\n";

sh bin/configmysql.sh;

