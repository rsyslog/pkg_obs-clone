Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-mysql, rsyslog-dbi, rsyslog-pgsql, rsyslog-omclickhouse, rsyslog-relp, rsyslog-mmdblookup, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-omhttp, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes, rsyslog-omstdout, rsyslog-mmfields, rsyslog-mmutf8fix, rsyslog-utils, rsyslog-gnutls, rsyslog-openssl, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-redis
Architecture: any all
Version: 8.2108.0-1
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
 6d5bbc78cb8a35b3416b00180cd8c5943d2efa82 3204178 rsyslog_8.2108.0.orig.tar.gz
 ac3b9745119a1ede7ef323341b9675d22211b100 19444 rsyslog_8.2108.0-1.debian.tar.xz
Checksums-Sha256:
 4826c2b6d081a9c95f469fb0115be3f9512065297d3de00ec513758cdb30b1d9 3204178 rsyslog_8.2108.0.orig.tar.gz
 280437060d2badf420d276befde4ed2f68528f40a58849ba699be4cc30a08b4d 19444 rsyslog_8.2108.0-1.debian.tar.xz
Files:
 9dae5035e37dee5b9cb4cfc1037bc8bf 3204178 rsyslog_8.2108.0.orig.tar.gz
 34583275ba717be61672290800b59df3 19444 rsyslog_8.2108.0-1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2108.0.tar.gz\n
