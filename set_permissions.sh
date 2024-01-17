#!/bin/bash
chown -R www-data:www-data /var/www/html/moodle
chown -R www-data:www-data /moodle_data/
chmod -R 755 /var/www/html/
chmod -R 755 /moodle_data/
