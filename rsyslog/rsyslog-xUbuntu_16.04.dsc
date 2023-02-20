Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-impcap, rsyslog-mysql, rsyslog-pgsql, rsyslog-mongodb, rsyslog-omclickhouse, rsyslog-relp, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-mmfields, rsyslog-mmgrok, rsyslog-omrabbitmq, rsyslog-imdocker, rsyslog-improg, rsyslog-imkmsg, rsyslog-mmutf8fix, rsyslog-gnutls, rsyslog-openssl, rsyslog-pmnormalize, rsyslog-utils, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-redis, rsyslog-omstdout, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes
Architecture: any all
Version: 8.2302.0-0adiscon1xenial1
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
 8d3b57c0c8f38e618ee2e49790dcfc26b27c40d5 3273655 rsyslog_8.2302.0.orig.tar.gz
 69f9c52ae5c69f0f24db2d34bd65d4285e55c86e 23928 rsyslog_8.2302.0-0adiscon1xenial1.debian.tar.xz
Checksums-Sha256:
 25415f85b662615ce3c83077d53758029e8743cb5929044bfd3564e3d626a3b9 3273655 rsyslog_8.2302.0.orig.tar.gz
 7b8808dd1cf85bdbdd1b50709c3c0b14c82b922ec1d31c057e560eeae80e5538 23928 rsyslog_8.2302.0-0adiscon1xenial1.debian.tar.xz
Files:
 2ab62877bbf45050251e2e2ba80eaf79 3273655 rsyslog_8.2302.0.orig.tar.gz
 2a4f772faf888a8878417e3227a60c14 23928 rsyslog_8.2302.0-0adiscon1xenial1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2302.0.tar.gz\n
