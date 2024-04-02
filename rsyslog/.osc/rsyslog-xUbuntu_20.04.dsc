Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-mysql, rsyslog-pgsql, rsyslog-mongodb, rsyslog-czmq, rsyslog-omclickhouse, rsyslog-relp, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-mmfields, rsyslog-mmgrok, rsyslog-omrabbitmq, rsyslog-imdocker, rsyslog-improg, rsyslog-imkmsg, rsyslog-mmutf8fix, rsyslog-gnutls, rsyslog-udpspoof, rsyslog-openssl, rsyslog-pmnormalize, rsyslog-utils, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-impcap, rsyslog-redis, rsyslog-omstdout, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes
Architecture: any all
Version: 8.2404.0-0adiscon1focal1
Maintainer: Andre Lorbach <alorbach@adiscon.com>
Homepage: http://www.rsyslog.com/
Standards-Version: 3.9.2
Build-Depends: debhelper (>= 12), dpkg-dev (>= 1.6.1), autotools-dev (>= 20100122.1), libczmq-dev (>= 4.0.0), dh-autoreconf, librabbitmq-dev, librabbitmq4, zlib1g-dev, libgrok-dev, libgrok1, libmysqlclient-dev, libpq-dev, libmongoc-dev, librelp-dev (>= 1.2.17), libestr-dev (>= 0.1.2), liblognorm-dev (>= 1.0.0), libfastjson-dev (>= 0.99.7), libglib2.0-dev, libpcap-dev, uuid-dev, libkrb5-dev, libgnutls28-dev, pkg-config, dh-apparmor, libcurl4-gnutls-dev, bison, libgcrypt-dev, python3-docutils, libsystemd-dev (>= 209) [linux-any], librdkafka-dev, liblz4-dev, libsasl2-dev, libssl-dev, libhiredis-dev, libnet-dev
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
 rsyslog-udpspoof deb admin extra arch=any
 rsyslog-utils deb admin extra arch=any
Checksums-Sha1:
 c71bbad4ba544bfd35dbbdb9d1fc93b31ba8f846 3408657 rsyslog_8.2404.0.orig.tar.gz
 bfbe2556bbda3fe362b96176656df6157b705a77 20932 rsyslog_8.2404.0-0adiscon1focal1.debian.tar.xz
Checksums-Sha256:
 30528d140ec1b1f079224081fa37df6e06587ff42b02e3e61f2daa0526c54d33 3408657 rsyslog_8.2404.0.orig.tar.gz
 a42b3ed7d892dfc232e15f4ecdb742c87da8e94e5f40e6533754a0e88d571093 20932 rsyslog_8.2404.0-0adiscon1focal1.debian.tar.xz
Files:
 2eba8ad36afde8cc8120f0ef6f2560c0 3408657 rsyslog_8.2404.0.orig.tar.gz
 1bcb0f74e2bebeb281465ec84eb44cef 20932 rsyslog_8.2404.0-0adiscon1focal1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2404.0.tar.gz\n
