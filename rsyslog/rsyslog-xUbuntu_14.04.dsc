Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-mysql, rsyslog-pgsql, rsyslog-omclickhouse, rsyslog-relp, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-mmfields, rsyslog-omrabbitmq, rsyslog-improg, rsyslog-imkmsg, rsyslog-impcap, rsyslog-mmutf8fix, rsyslog-gnutls, rsyslog-udpspoof, rsyslog-openssl, rsyslog-utils, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-omstdout, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes
Architecture: any all
Version: 8.2312.0-0adiscon1trusty1
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
 908645e482717d0784112aec45ea613e1970b9d6 3358109 rsyslog_8.2312.0.orig.tar.gz
 7815791c5dd29b88ae2d14e72b2c86b1ae02fad9 33456 rsyslog_8.2312.0-0adiscon1trusty1.debian.tar.xz
Checksums-Sha256:
 774032006128a896437f5913e132aa27dbfb937cd8847e449522d5a12d63d03e 3358109 rsyslog_8.2312.0.orig.tar.gz
 c73ac504046de9bbc88bdc475037bed95f7282369327685cd8f0667a94221efc 33456 rsyslog_8.2312.0-0adiscon1trusty1.debian.tar.xz
Files:
 632381aead68840967c74fbb564436cc 3358109 rsyslog_8.2312.0.orig.tar.gz
 9dc1af1ca36616efd4bc022e2d691de4 33456 rsyslog_8.2312.0-0adiscon1trusty1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2312.0.tar.gz\n
