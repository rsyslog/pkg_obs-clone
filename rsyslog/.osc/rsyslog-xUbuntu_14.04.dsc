Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-mysql, rsyslog-pgsql, rsyslog-omclickhouse, rsyslog-relp, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-mmfields, rsyslog-omrabbitmq, rsyslog-improg, rsyslog-imkmsg, rsyslog-impcap, rsyslog-mmutf8fix, rsyslog-gnutls, rsyslog-udpspoof, rsyslog-openssl, rsyslog-utils, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-omstdout, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes
Architecture: any all
Version: 8.2302.0-0adiscon1trusty1
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
 8d3b57c0c8f38e618ee2e49790dcfc26b27c40d5 3273655 rsyslog_8.2302.0.orig.tar.gz
 9c40e769267d6257eacd0b63e9c4940605397d07 33396 rsyslog_8.2302.0-0adiscon1trusty1.debian.tar.xz
Checksums-Sha256:
 25415f85b662615ce3c83077d53758029e8743cb5929044bfd3564e3d626a3b9 3273655 rsyslog_8.2302.0.orig.tar.gz
 89f79efad3e66f4ffc3b412695441aa426489841ebec735004b8b9220b5f1e43 33396 rsyslog_8.2302.0-0adiscon1trusty1.debian.tar.xz
Files:
 2ab62877bbf45050251e2e2ba80eaf79 3273655 rsyslog_8.2302.0.orig.tar.gz
 48a36a76f6dd190c549434bc87b9d2dd 33396 rsyslog_8.2302.0-0adiscon1trusty1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2302.0.tar.gz\n
