export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export MANPATH=/opt/local/man/:$MANPATH

# jakld
alias jakld='rlwrap java -jar /Users/tattii/jakld/jakld.jar'

# java
export JAVA_HOME=`/usr/libexec/java_home`

# perlbrew
source ~/perl5/perlbrew/etc/bashrc

# Docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/tattii/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# grib2json
alias grib2json='/Users/tattii/Box/grib2json/grib2json-0.8.0/bin/grib2json'
