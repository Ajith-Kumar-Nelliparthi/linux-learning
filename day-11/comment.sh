#!/bin/bash

sed '/^DEBUG/ s/^/#/' config.cfg > out_file.cfg
