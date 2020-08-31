Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-impcap, rsyslog-mysql, rsyslog-pgsql, rsyslog-mongodb, rsyslog-omclickhouse, rsyslog-relp, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-mmfields, rsyslog-mmgrok, rsyslog-omrabbitmq, rsyslog-imdocker, rsyslog-improg, rsyslog-imkmsg, rsyslog-mmutf8fix, rsyslog-gnutls, rsyslog-openssl, rsyslog-pmnormalize, rsyslog-utils, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-redis, rsyslog-omstdout, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes
Architecture: any all
Version: 8.2008.0-0adiscon1xenial1
Maintainer: Andre Lorbach <alorbach@adiscon.com>
Homepage: http://www.rsyslog.com/
Standards-Version: 3.9.2
Build-Depends: debhelper (>= 8), dpkg-dev (>= 1.6.1), autotools-dev (>= 20100122.1), dh-autoreconf, librabbitmq-dev, librabbitmq4, zlib1g-dev, libgrok-dev, libgrok1, libtokyocabinet-dev, libtokyocabinet9, libmysqlclient-dev, libpq-dev, libmongoc-dev, libbson-dev, librelp-dev (>= 1.2.17), libestr-dev (>= 0.1.2), liblognorm-dev (>= 1.0.0), libfastjson-dev (>= 0.99.7), libglib2.0-dev, libpcap-dev, uuid-dev, libkrb5-dev, libgnutls-dev, pkg-config, dh-apparmor, libcurl4-gnutls-dev, bison, libgcrypt-dev, python-docutils, libsystemd-dev, liblz4-dev, libsasl2-dev, libhiredis-dev, libssl-dev
Package-List:
 rsyslog deb admin important arch=any
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
 rsyslog-mmfields deb admin extra arch=any
 rsyslog-mmgrok deb admin extra arch=any
 rsyslog-mmjsonparse deb admin extra arch=any
 rsyslog-mmkubernetes deb admin extra arch=any
 rsyslog-mmnormalize deb admin extra arch=any
 rsyslog-mmrm1stspace deb admin extra arch=any
 rsyslog-mmutf8fix deb admin extra arch=any
 rsyslog-mongodb deb admin extra arch=any
 rsyslog-mysql deb admin extra arch=any
 rsyslog-omclickhouse deb admin extra arch=any
 rsyslog-omrabbitmq deb admin extra arch=any
 rsyslog-omstdout deb admin extra arch=any
 rsyslog-openssl deb admin extra arch=any
 rsyslog-pgsql deb admin extra arch=any
 rsyslog-pmnormalize deb admin extra arch=any
 rsyslog-redis deb admin extra arch=any
 rsyslog-relp deb admin extra arch=any
 rsyslog-utils deb admin extra arch=any
Checksums-Sha1:
 4c7364dbcd6683fe238fbac54a3293960a700ebd 3051049 rsyslog_8.2008.0.orig.tar.gz
 230fdf848b539f4ce6de1c10211b0abbc9ae5864 23748 rsyslog_8.2008.0-0adiscon1xenial1.debian.tar.xz
Checksums-Sha256:
 09d2b6c8bc2f016598aed2bb719e03f822bb01d720c61e4d6e725e00dca1b650 3051049 rsyslog_8.2008.0.orig.tar.gz
 459f38e57a8de66b222d18ec314ec76ad43edd1ba1825a14d46b7a1c482d9cb9 23748 rsyslog_8.2008.0-0adiscon1xenial1.debian.tar.xz
Files:
 9b6ae1a517231764ad4fbd68181cc23e 3051049 rsyslog_8.2008.0.orig.tar.gz
 1801e1e598ff5960e8b033a71031a446 23748 rsyslog_8.2008.0-0adiscon1xenial1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2008.0.tar.gz\n
