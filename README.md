# Docker images

## BIND9 + Kerberos + Consul Template

Building Bind9 package(s) from sources using customized APKBUILD.

Originals taken from Aports:
http://git.alpinelinux.org/cgit/aports/tree/main/bind?h=master

Compiling with custom parameter --with-gssapi=/usr
to enable nsupdate -g with Kerberos (gss api) integration
