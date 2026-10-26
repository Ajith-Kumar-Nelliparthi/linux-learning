#!/bin/bash

touch secret.env
ls -l secret.env
stat -c '%a' secret.env
chmod go-r secret.env
stat -c '%a' secret.env
ls -l secret.env

