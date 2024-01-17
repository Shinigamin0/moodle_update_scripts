#!/bin/bash

echo "Personalizando php.ini:"

php_ini_file=/etc/php/8.0/apache2/php.ini

cp $php_ini_file ./php.ini.orig

echo -e "ANTES"
cat $php_ini_file | grep 'memory_limit\|file_uploads\|session.save_handler\|session.auto_start\|intl.default_locale\|intl.error_level\|post_max_size\|upload_max_filesize\|max_execution_time\|always_populate_raw_post_data\|date.timezone\|max_input_vars'

echo -e "Ejecutando cambios..."

sed -i 's,^post_max_size =.*$,post_max_size = 512M,' $php_ini_file
sed -i 's,^file_uploads =.*$,file_uploads = On,' $php_ini_file
sed -i 's,^max_execution_time =.*$,max_execution_time = 18000,' $php_ini_file
sed -i 's,^memory_limit =.*$,memory_limit = 4096M,' $php_ini_file
sed -i 's,^upload_max_filesize =.*$,upload_max_filesize = 512M,' $php_ini_file
sed -i 's,^;intl.error_level =.*$,intl.error_level = E_WARNING,' $php_ini_file
sed -i 's,^;date.timezone =.*$,date.timezone = 'America/Bogota',' $php_ini_file
sed -i 's,^;intl.default_locale =.*$,intl.default_locale = en_utf8,' $php_ini_file
sed -i 's,^;max_input_vars =.*$,max_input_vars = 10000,' $php_ini_file

echo -e "Cambios finalizados..."

echo -e "DESPUES"

cat $php_ini_file | grep 'memory_limit\|file_uploads\|session.save_handler\|session.auto_start\|intl.default_locale\|intl.error_level\|post_max_size\|upload_max_filesize\|max_execution_time\|always_populate_raw_post_data\|date.timezone'
