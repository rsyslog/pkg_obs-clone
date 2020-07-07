Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-mysql, rsyslog-pgsql, rsyslog-mongodb, rsyslog-omclickhouse, rsyslog-relp, rsyslog-czmq, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-mmfields, rsyslog-mmgrok, rsyslog-omrabbitmq, rsyslog-imdocker, rsyslog-improg, rsyslog-imkmsg, rsyslog-mmutf8fix, rsyslog-gnutls, rsyslog-openssl, rsyslog-pmnormalize, rsyslog-utils, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-redis, rsyslog-omstdout, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes
Architecture: any all
Version: 8.2006.0-0adiscon2bionic1
Maintainer: Andre Lorbach <alorbach@adiscon.com>
Homepage: http://www.rsyslog.com/
Standards-Version: 3.9.2
Build-Depends: debhelper (>= 8), dpkg-dev (>= 1.6.1), autotools-dev (>= 20100122.1), dh-autoreconf, libczmq-dev (>= 4.0.0), zlib1g-dev, librabbitmq-dev, librabbitmq4, libmysqlclient-dev, libpq-dev, libgrok-dev, libgrok1, libmongoc-dev, librelp-dev (>= 1.2.17), libestr-dev (>= 0.1.2), liblognorm-dev (>= 1.0.0), libfastjson-dev (>= 0.99.7), libglib2.0-dev, uuid-dev, libkrb5-dev, libgnutls28-dev, pkg-config, dh-apparmor, dh-systemd (>= 1.4), libcurl4-gnutls-dev, bison, libgcrypt-dev, python-docutils, libsystemd-dev (>= 209) [linux-any], liblz4-dev, libsasl2-dev, libssl-dev, libhiredis-dev
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
 ad165d9e70cb9b70ee060fda25df458914df3a16 3047140 rsyslog_8.2006.0.orig.tar.gz
 1353507b327682b0714cc692c35cfd9de7085b4a 20988 rsyslog_8.2006.0-0adiscon2bionic1.debian.tar.xz
Checksums-Sha256:
 d9589e64866f2fdc5636af4cae9d60ebf1e3257bb84b81ee953ede6a05878e97 3047140 rsyslog_8.2006.0.orig.tar.gz
 25acc9985bbbc9e04f06df08061192b67199b9a5da22102e77381f6125fa1af1 20988 rsyslog_8.2006.0-0adiscon2bionic1.debian.tar.xz
Files:
 33de768941953ceeca9d1a437b47891b 3047140 rsyslog_8.2006.0.orig.tar.gz
 bf281fca1bc468f48bdde758b0f9acf4 20988 rsyslog_8.2006.0-0adiscon2bionic1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2006.0.tar.gz\n
