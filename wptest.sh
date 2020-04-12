#!/usr/bin/env bash

ab -n 100 -c 50 -g out-apache.data http://wptest-apache.rumahweb.net/
ab -n 100 -c 50 -g out-lsws.data http://wptest-lsws.rumahweb.net/
ab -n 100 -c 50 -g out-nginx.data http://wptest-nginx.rumahweb.net/
gnuplot ab-wptest.p
