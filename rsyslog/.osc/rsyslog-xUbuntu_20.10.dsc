Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-impcap, rsyslog-mysql, rsyslog-pgsql, rsyslog-mongodb, rsyslog-czmq, rsyslog-omclickhouse, rsyslog-relp, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-mmfields, rsyslog-omrabbitmq, rsyslog-imdocker, rsyslog-improg, rsyslog-imkmsg, rsyslog-mmutf8fix, rsyslog-gnutls, rsyslog-openssl, rsyslog-pmnormalize, rsyslog-utils, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-redis, rsyslog-omstdout, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes
Architecture: any all
Version: 8.2302.0-0adiscon1groovy1
Maintainer: Andre Lorbach <alorbach@adiscon.com>
Homepage: http://www.rsyslog.com/
Standards-Version: 3.9.2
Build-Depends: debhelper (>= 12), dpkg-dev (>= 1.6.1), autotools-dev (>= 20100122.1), dh-autoreconf, librabbitmq-dev, librabbitmq4, libczmq-dev (>= 4.0.0), zlib1g-dev, libmysqlclient-dev, libpq-dev, libgrok-dev, libgrok1, libmongoc-dev, librelp-dev (>= 1.2.17), libestr-dev (>= 0.1.2), liblognorm-dev (>= 1.0.0), libfastjson-dev (>= 0.99.7), libglib2.0-dev, libpcap-dev, uuid-dev, libkrb5-dev, libgnutls28-dev, pkg-config, dh-apparmor, dh-systemd (>= 1.4), libcurl4-gnutls-dev, bison, libgcrypt-dev, python3-docutils, libsystemd-dev (>= 209) [linux-any], librdkafka-dev, liblz4-dev, libsasl2-dev, libssl-dev, libhiredis-dev
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
 rsyslog-mmfields deb admin extra arch=any
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
 74d6e3fa3e87606de0ec0662ecd46d450dc1fd52 20620 rsyslog_8.2302.0-0adiscon1groovy1.debian.tar.xz
Checksums-Sha256:
 25415f85b662615ce3c83077d53758029e8743cb5929044bfd3564e3d626a3b9 3273655 rsyslog_8.2302.0.orig.tar.gz
 42f826dbbd2034e63542a48796743101919b1260324a77fe8e8ccfdd7f72bbb2 20620 rsyslog_8.2302.0-0adiscon1groovy1.debian.tar.xz
Files:
 2ab62877bbf45050251e2e2ba80eaf79 3273655 rsyslog_8.2302.0.orig.tar.gz
 a56abd814668c5f537d0a1e77e4ee14f 20620 rsyslog_8.2302.0-0adiscon1groovy1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2302.0.tar.gz\n
