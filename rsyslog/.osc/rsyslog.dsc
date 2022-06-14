Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-mysql, rsyslog-dbi, rsyslog-pgsql, rsyslog-omclickhouse, rsyslog-relp, rsyslog-mmdblookup, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-omhttp, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes, rsyslog-omstdout, rsyslog-mmfields, rsyslog-mmutf8fix, rsyslog-utils, rsyslog-gnutls, rsyslog-openssl, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-redis
Architecture: any all
Version: 8.2204.1-1
Maintainer: Rainer Gerhards <rgerhards@adiscon.com>
Homepage: http://www.rsyslog.com/
Standards-Version: 3.9.2
Build-Depends: debhelper (>= 8), dpkg-dev (>= 1.6.1), autotools-dev (>= 20100122.1), dh-autoreconf, zlib1g-dev, libpq-dev, default-libmysqlclient-dev | libmysqlclient-dev, librelp-dev (>= 1.0.2), libestr-dev (>= 0.1.9), liblognorm-dev (>= 1.0.0), libfastjson-dev (>= 0.99.8), libglib2.0-dev, uuid-dev, libgnutls-dev | libgnutls30-dev | libgnutls28-dev, libkrb5-dev, pkg-config, libssl1-dev | libssl-dev, libcurl4-gnutls-dev, bison
Package-List:
 rsyslog deb admin important arch=any
 rsyslog-dbi deb admin extra arch=any
 rsyslog-doc deb doc extra arch=all
 rsyslog-elasticsearch deb admin extra arch=any
 rsyslog-fmhash deb admin extra arch=any
 rsyslog-fmhttp deb admin extra arch=any
 rsyslog-gnutls deb admin extra arch=any
 rsyslog-imptcp deb admin extra arch=any
 rsyslog-kafka deb admin extra arch=any
 rsyslog-mmanon deb admin extra arch=any
 rsyslog-mmdblookup deb admin extra arch=any
 rsyslog-mmfields deb admin extra arch=any
 rsyslog-mmjsonparse deb admin extra arch=any
 rsyslog-mmkubernetes deb admin extra arch=any
 rsyslog-mmnormalize deb admin extra arch=any
 rsyslog-mmrm1stspace deb admin extra arch=any
 rsyslog-mmutf8fix deb admin extra arch=any
 rsyslog-mysql deb admin extra arch=any
 rsyslog-omclickhouse deb admin extra arch=any
 rsyslog-omhttp deb admin extra arch=any
 rsyslog-omstdout deb admin extra arch=any
 rsyslog-openssl deb admin extra arch=any
 rsyslog-pgsql deb admin extra arch=any
 rsyslog-redis deb admin extra arch=any
 rsyslog-relp deb admin extra arch=any
 rsyslog-utils deb admin extra arch=any
Checksums-Sha1:
 3b0daa9c1603326034f984af5545d0be7cd6a78c 3243183 rsyslog_8.2204.1.orig.tar.gz
 55e2fb79075436b3601102977b5f78a8ecf3804f 19540 rsyslog_8.2204.1-1.debian.tar.xz
Checksums-Sha256:
 a6d731e46ad3d64f6ad4b19bbf1bf56ca4760a44a24bb96823189dc2e71f7028 3243183 rsyslog_8.2204.1.orig.tar.gz
 d3a3d93fac5964f60f03523c38dcd358f18dae06aa2c02f899d86e78a83e8e36 19540 rsyslog_8.2204.1-1.debian.tar.xz
Files:
 44526816f93026bce67711f692b4a3da 3243183 rsyslog_8.2204.1.orig.tar.gz
 ca60a61a718414aff32b6e47e4da7151 19540 rsyslog_8.2204.1-1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2204.1.tar.gz\n
