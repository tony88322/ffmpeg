#!/bin/sh
mkdir redis \
&& tar -xf redis-4.3.0.tgz -C redis --strip-components=1 \
&& ( cd redis && phpize && ./configure && make ${MC} && make install ) \
&& docker-php-ext-enable redis