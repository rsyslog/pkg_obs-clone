Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-mysql, rsyslog-dbi, rsyslog-pgsql, rsyslog-omclickhouse, rsyslog-relp, rsyslog-mmdblookup, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-omhttp, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes, rsyslog-omstdout, rsyslog-mmfields, rsyslog-mmutf8fix, rsyslog-utils, rsyslog-gnutls, rsyslog-openssl, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-redis
Architecture: any all
Version: 8.2302.0-2
Maintainer: Rainer Gerhards <rgerhards@adiscon.com>
Homepage: http://www.rsyslog.com/
Standards-Version: 3.9.2
Build-Depends: debhelper (>= 8), dpkg-dev (>= 1.6.1), autotools-dev (>= 20100122.1), dh-autoreconf, zlib1g-dev, libpq-dev, default-libmysqlclient-dev | libmysqlclient-dev, librdkafka-dev, librelp-dev (>= 1.0.2), libestr-dev (>= 0.1.9), liblognorm-dev (>= 1.0.0), libfastjson-dev (>= 0.99.8), libglib2.0-dev, uuid-dev, libgnutls-dev | libgnutls30-dev | libgnutls28-dev, libkrb5-dev, pkg-config, libssl1-dev | libssl-dev, libcurl4-gnutls-dev, bison, libsystemd-dev
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
 8d3b57c0c8f38e618ee2e49790dcfc26b27c40d5 3273655 rsyslog_8.2302.0.orig.tar.gz
 f8d48958f5be155662337c9c133ea7225d3293d8 19632 rsyslog_8.2302.0-2.debian.tar.xz
Checksums-Sha256:
 25415f85b662615ce3c83077d53758029e8743cb5929044bfd3564e3d626a3b9 3273655 rsyslog_8.2302.0.orig.tar.gz
 d1eef6d4be8e088c8c70f9f08d327a78d97361973a939d57381e53ade2944d57 19632 rsyslog_8.2302.0-2.debian.tar.xz
Files:
 2ab62877bbf45050251e2e2ba80eaf79 3273655 rsyslog_8.2302.0.orig.tar.gz
 0d87eb10f4918429648d51f3add4c784 19632 rsyslog_8.2302.0-2.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2302.0.tar.gz\n
