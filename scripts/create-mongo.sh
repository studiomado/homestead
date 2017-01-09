#!/usr/bin/env bash

mongo admin --eval "db.createUser({user:'homestead',pwd:'secret',roles:['root']})"
mongo $1 --eval "db.test.insert({name:'creazione db'})"
sudo service mongod restart