#!/bin/bash
user={{user}}
password='{{password}}'
host={{host}}
database={{database}}
mysqldump -u $user -p$password -h $host $database > $database".sql"

