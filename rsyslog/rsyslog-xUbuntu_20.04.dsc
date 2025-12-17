Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-mysql, rsyslog-pgsql, rsyslog-mongodb, rsyslog-czmq, rsyslog-omclickhouse, rsyslog-relp, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-mmfields, rsyslog-omrabbitmq, rsyslog-improg, rsyslog-imkmsg, rsyslog-mmutf8fix, rsyslog-gnutls, rsyslog-udpspoof, rsyslog-openssl, rsyslog-pmnormalize, rsyslog-utils, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-impcap, rsyslog-imdocker, rsyslog-redis, rsyslog-omstdout, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes, rsyslog-mmdblookup, rsyslog-omsendertrack, rsyslog-omhttp
Architecture: any all
Version: 8.2512.0-0adiscon1focal1
Maintainer: Andre Lorbach <alorbach@adiscon.com>
Homepage: http://www.rsyslog.com/
Standards-Version: 3.9.2
Build-Depends: debhelper (>= 12), dpkg-dev (>= 1.6.1), autotools-dev (>= 20100122.1), libczmq-dev (>= 4.0.0), dh-autoreconf, librabbitmq-dev, librabbitmq4, zlib1g-dev, libmysqlclient-dev, libpq-dev, libmongoc-dev, librelp-dev (>= 1.2.17), libestr-dev (>= 0.1.2), liblognorm-dev (>= 1.0.0), libfastjson-dev (>= 0.99.7), libglib2.0-dev, libpcap-dev, uuid-dev, libkrb5-dev, libgnutls28-dev, pkg-config, dh-apparmor, libcurl4-openssl-dev, bison, libgcrypt-dev, python3-docutils, libsystemd-dev (>= 209) [linux-any], librdkafka-dev, liblz4-dev, libsasl2-dev, libssl-dev, libhiredis-dev, util-linux, libnet-dev, libmaxminddb-dev
Package-List:
 rsyslog deb admin important arch=any
 rsyslog-czmq deb admin optional arch=any
 rsyslog-doc deb doc extra arch=all
 rsyslog-elasticsearch deb admin extra arch=any
 rsyslog-fmhash deb admin extra arch=any
 rsyslog-fmhttp deb admin extra arch=any
 rsyslog-gnutls deb admin extra arch=any
 rsyslog-imdocker deb admin extra arch=any
 rsyslog-imkmsg deb admin extra arch=any
 rsyslog-impcap deb admin extra arch=any
 rsyslog-improg deb admin extra arch=any
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
 rsyslog-mongodb deb admin extra arch=any
 rsyslog-mysql deb admin extra arch=any
 rsyslog-omclickhouse deb admin extra arch=any
 rsyslog-omhttp deb admin extra arch=any
 rsyslog-omrabbitmq deb admin extra arch=any
 rsyslog-omsendertrack deb admin extra arch=any
 rsyslog-omstdout deb admin extra arch=any
 rsyslog-openssl deb admin extra arch=any
 rsyslog-pgsql deb admin extra arch=any
 rsyslog-pmnormalize deb admin extra arch=any
 rsyslog-redis deb admin extra arch=any
 rsyslog-relp deb admin extra arch=any
 rsyslog-udpspoof deb admin extra arch=any
 rsyslog-utils deb admin extra arch=any
Checksums-Sha1:
 596b067c1a637c9fa7ff4c472b72dc0ed7bbc685 6768847 rsyslog_8.2512.0.orig.tar.gz
 3989a7ac5cefe1bd144330994926812a922ab42b 21348 rsyslog_8.2512.0-0adiscon1focal1.debian.tar.xz
Checksums-Sha256:
 93c50025d90b6c795fa350d56a3d832bfce45043ea9bd68240d9c2a9394bc629 6768847 rsyslog_8.2512.0.orig.tar.gz
 42945349c21911d5b6906e2c336c9f9fa62bf2d7cab3ff2d432df2ba8b318032 21348 rsyslog_8.2512.0-0adiscon1focal1.debian.tar.xz
Files:
 744e44c74f9ecd97ee800c78dc8271d3 6768847 rsyslog_8.2512.0.orig.tar.gz
 24b6c1f4e2d865651d6972ac1de35416 21348 rsyslog_8.2512.0-0adiscon1focal1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2512.0.tar.gz
