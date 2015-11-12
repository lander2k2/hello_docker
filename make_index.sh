#!/bin/bash

cat > /var/www/index.html <<EOS
<html>
    <head>
        <title>Hello Docker!</title>
    </head>
    <body>
        <h1>Hello Docker!</h1>
        <p>I am a static page served from a docker container on host: $HOSTNAME</p>
    </body>
</html>
EOS

/usr/sbin/apachectl -D FOREGROUND

