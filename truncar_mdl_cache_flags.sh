#!/bin/bash
bd_instance={{host}}
bd={{database}}
user={{user}}
pass='{{password}}'
mysql -h $bd_instance -u $user -p$pass -e 'truncate mdl_cache_flags' $bd
