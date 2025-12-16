Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-mysql, rsyslog-pgsql, rsyslog-omclickhouse, rsyslog-relp, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-mmfields, rsyslog-omrabbitmq, rsyslog-improg, rsyslog-imkmsg, rsyslog-impcap, rsyslog-mmutf8fix, rsyslog-gnutls, rsyslog-udpspoof, rsyslog-openssl, rsyslog-utils, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-omstdout, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes
Architecture: any all
Version: 8.2512.0-0adiscon1trusty1
Maintainer: Andre Lorbach <alorbach@adiscon.com>
Homepage: http://www.rsyslog.com/
Standards-Version: 3.9.2
Build-Depends: debhelper (>= 8), dpkg-dev (>= 1.6.1), autotools-dev (>= 20100122.1), dh-autoreconf, libpcap-dev, librabbitmq-dev, librabbitmq1, zlib1g-dev, libmysqlclient-dev, libpq-dev, librelp-dev (>= 1.2.17), libestr-dev (>= 0.1.2), liblognorm-dev (>= 1.0.0), libfastjson-dev (>= 0.99.7), libglib2.0-dev, uuid-dev, libkrb5-dev, libgnutls-dev, pkg-config, dh-apparmor, libcurl4-gnutls-dev, bison, python-docutils, libsasl2-dev, libssl-dev, libnet-dev
Package-List:
 rsyslog deb admin important arch=any
 rsyslog-doc deb doc extra arch=all
 rsyslog-elasticsearch deb admin extra arch=any
 rsyslog-fmhash deb admin extra arch=any
 rsyslog-fmhttp deb admin extra arch=any
 rsyslog-gnutls deb admin extra arch=any
 rsyslog-imkmsg deb admin extra arch=any
 rsyslog-impcap deb admin extra arch=any
 rsyslog-improg deb admin extra arch=any
 rsyslog-imptcp deb admin extra arch=any
 rsyslog-kafka deb admin extra arch=any
 rsyslog-mmanon deb admin extra arch=any
 rsyslog-mmfields deb admin extra arch=any
 rsyslog-mmjsonparse deb admin extra arch=any
 rsyslog-mmkubernetes deb admin extra arch=any
 rsyslog-mmnormalize deb admin extra arch=any
 rsyslog-mmrm1stspace deb admin extra arch=any
 rsyslog-mmutf8fix deb admin extra arch=any
 rsyslog-mysql deb admin extra arch=any
 rsyslog-omclickhouse deb admin extra arch=any
 rsyslog-omrabbitmq deb admin extra arch=any
 rsyslog-omstdout deb admin extra arch=any
 rsyslog-openssl deb admin extra arch=any
 rsyslog-pgsql deb admin extra arch=any
 rsyslog-relp deb admin extra arch=any
 rsyslog-udpspoof deb admin extra arch=any
 rsyslog-utils deb admin extra arch=any
Checksums-Sha1:
 596b067c1a637c9fa7ff4c472b72dc0ed7bbc685 6768847 rsyslog_8.2512.0.orig.tar.gz
 ef880d8a5a2bf12fc6312f741457224676a01180 33480 rsyslog_8.2512.0-0adiscon1trusty1.debian.tar.xz
Checksums-Sha256:
 93c50025d90b6c795fa350d56a3d832bfce45043ea9bd68240d9c2a9394bc629 6768847 rsyslog_8.2512.0.orig.tar.gz
 971371a57e4bdaaf2ecd11df4e87ee2d8fbdd2f0df1ae74dc4e6ed2c035021b4 33480 rsyslog_8.2512.0-0adiscon1trusty1.debian.tar.xz
Files:
 744e44c74f9ecd97ee800c78dc8271d3 6768847 rsyslog_8.2512.0.orig.tar.gz
 34a7115aeb8238bfbd7a0bffbd1197e6 33480 rsyslog_8.2512.0-0adiscon1trusty1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2512.0.tar.gz\n
