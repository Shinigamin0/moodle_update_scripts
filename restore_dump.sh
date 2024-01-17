#!/bin/bash
user={{user}}
password='{{password}}'
host=n{{host}}
database={{database}}
mysql -u $user -p$password -h $host $database < $database".sql"

