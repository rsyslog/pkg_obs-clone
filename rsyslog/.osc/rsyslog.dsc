Format: 3.0 (quilt)
Source: rsyslog
Binary: rsyslog, rsyslog-doc, rsyslog-mysql, rsyslog-dbi, rsyslog-pgsql, rsyslog-omclickhouse, rsyslog-relp, rsyslog-mmdblookup, rsyslog-elasticsearch, rsyslog-mmjsonparse, rsyslog-imptcp, rsyslog-mmnormalize, rsyslog-mmanon, rsyslog-omhttp, rsyslog-fmhttp, rsyslog-fmhash, rsyslog-mmkubernetes, rsyslog-omstdout, rsyslog-mmfields, rsyslog-mmutf8fix, rsyslog-utils, rsyslog-gnutls, rsyslog-openssl, rsyslog-mmrm1stspace, rsyslog-kafka, rsyslog-redis
Architecture: any all
Version: 8.2310.0-1
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
 702012a5ed36fe2a07bed78f80de1915787aac75 3349174 rsyslog_8.2310.0.orig.tar.gz
 e9f51ccc3b7fcb4476f0cba0a8e0b6631f9208bf 19664 rsyslog_8.2310.0-1.debian.tar.xz
Checksums-Sha256:
 20d9ce792bf0a7ed0703dbf0941490f8be655f48b55b4bebdc0827bbb0ddbf11 3349174 rsyslog_8.2310.0.orig.tar.gz
 25be03d7b3562a346e09ad620be77b213156a8479e4c7e8f77840d58f4865e3e 19664 rsyslog_8.2310.0-1.debian.tar.xz
Files:
 e492884a5f64d2a069684fcb21171114 3349174 rsyslog_8.2310.0.orig.tar.gz
 fe8940f7652da22385ce023b6bbe56ec 19664 rsyslog_8.2310.0-1.debian.tar.xz
Original-Maintainer: Michael Biebl <biebl@debian.org>
Original-Vcs-Browser: http://git.debian.org/?p=collab-maint/rsyslog.git;a=summary
Original-Vcs-Git: git://git.debian.org/git/collab-maint/rsyslog.git
DEBTRANSFORM-TAR: rsyslog-8.2310.0.tar.gz\n
