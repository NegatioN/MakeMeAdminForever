#!/bin/bash

currentUser=$(who | awk '/console/{print $1}')
/usr/sbin/dseditgroup -o edit -a $currentUser -t user admin
