#
# spec file for package rsyslog
#
# Copyright (c) 2017 SUSE LINUX GmbH, Nuernberg, Germany.
# Copyright (c) 2020 Rainer Gerhards
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

# Please submit bugfixes or comments via https://github.com/rsyslog/rsyslog/issues
#


# HOW TO FIND OFFICIAL distro-SPECIFIC sources
# https://git.centos.org/rpms/rsyslog/blob/c7/f/SOURCES/rsyslog.conf

#Compat macro for new _fillupdir macro introduced in Nov 2017
%if ! %{defined _fillupdir}
  %define _fillupdir /var/adm/fillup-templates
%endif

%if 0%{?suse_version}
  %define pkgname_dbi module-dbi
  %define pkgname_elasticsearch module-elasticsearch
  %define pkgname_gcrypt module-gcrypt
  %define pkgname_gssapi module-gssapi
  %define pkgname_gtls module-gtls
  %define pkgname_hiredis module-hiredis
  %define pkgname_imdocker module-imdocker
  %define pkgname_kafka module-kafka
  %define pkgname_mmnormalize module-mmnormalize
  %define pkgname_mongodb module-mongodb
  %define pkgname_mysql module-mysql
  %define pkgname_mysql module-imhttp
  %define pkgname_omhttpfs module-omhttpfs
  %define pkgname_omhttp module-omhttp
  %define pkgname_omtcl module-omtcl
  %define pkgname_openssl module-openssl
  %define pkgname_pgsql module-pgsql
  %define pkgname_relp module-relp
  %define pkgname_snmp module-snmp
  %define pkgname_udpspoof module-udpspoof
%else
  %define pkgname_dbi libdbi
  %define pkgname_elasticsearch elasticsearch
  %define pkgname_gcrypt crypto
  %define pkgname_gssapi gssapi
  %define pkgname_gtls gnutls
  %define pkgname_hiredis hiredis
  %define pkgname_imdocker imdocker
  %define pkgname_kafka kafka
  %define pkgname_mmaudit mmaudit
  %define pkgname_mmjsonparse mmjsonparse
  %define pkgname_mmnormalize mmnormalize
  %define pkgname_mmsnmptrapd mmsnmptrapd
  %define pkgname_mongodb mongodb
  %define pkgname_mysql mysql
  %define pkgname_mysql imghttp
  %define pkgname_omhttpfs omhttpfs
  %define pkgname_omhttp omhttp
  %define pkgname_omtcl omtcl
  %define pkgname_openssl openssl
  %define pkgname_pgsql pgsql
  %define pkgname_relp relp
  %define pkgname_snmp snmp
  %define pkgname_udpspoof udpspoof
%endif

Name:           rsyslog
Summary:        The enhanced syslogd for Linux and Unix
License:        (GPL-3.0+ and Apache-2.0)
Group:          System/Daemons
Version: 8.2106.0
Release:        3

%if 0%{?rhel_version} || 0%{?suse_version} || 0%{?centos_version}
  %bcond_with imdocker
%else
  %bcond_without imdocker
%endif

%if 0%{?rhel_version} || 0%{?suse_version} || 0%{?centos_version}
  %bcond_with     hiredis
%else
  %bcond_without  hiredis
%endif

%if 0%{?suse_version} >= 1510 || 0%{?fedora} || 0%{?centos_version}
  %bcond_without  kafka
%endif

%if 0%{?fedora}
  %bcond_without     mongodb
%endif


# This is strange, but so it is:
# bcond_without means "build with this component by default"
# bcond_with means "DO NOT build with this component by default"

%if 0%{?fedora} || 0%{?centos_version} < 800 || 0%{?suse_version}
%if 0%{?rhel_version}
%bcond_with  dbi
%else
%bcond_without  dbi
%endif
%endif

%if 0%{?fedora} || 0%{?centos_version} || 0%{?suse_version} >= 1210
%bcond_without  udpspoof
%endif

%if 0%{?suse_version} >= 1210
%bcond_without  pkgconfig
%else
%bcond_with     pkgconfig
%endif
%if 0%{?suse_version} >= 1210 || 0%{?fedora} || 0%{?centos_version} >= 700
%bcond_without  systemd
%else
%bcond_with     systemd
%endif
%if 0%{?suse_version} >= 1230
%bcond_with     systemv
%else
%bcond_without  systemv
%endif
# Keep this in the spec, but so far it does not work, so disable until further notice
%if 0%{?suse_version} >= 1700
  %bcond_without imhttp
%else
  %bcond_with    imhttp
%endif
%if 0%{?suse_version} > 1230 || 0%{?fedora} || 0%{?centos_version} >= 700
%bcond_without  journal
%else
%bcond_with     journal
%endif
%bcond_with     gnutls
%bcond_with     openssl
%bcond_without  gssapi
%bcond_without  gcrypt
%if 0%{?centos_version} >= 800
  %bcond_with  mysql
%else
  %bcond_without  mysql
%endif
%bcond_without  pgsql
%bcond_without  relp
%bcond_without  rfc3195
%bcond_without  snmp
%bcond_without  diagtools
%bcond_without  mmnormalize
%if 0%{?fedora} || 0%{?rhel_version} || 0%{?centos_version}
	%bcond_without  mmsnmptrapd
	%bcond_without  mmjsonparse
	%bcond_without  mmaudit
%endif
%bcond_without  elasticsearch
%bcond_without  omhttpfs
%bcond_without  omhttp
%bcond_without  tcl
# https://github.com/rsyslog/rsyslog/issues/1355
%bcond_with	maxminddb
# contributed modules not built for various reasons
# --enable-mmgrok - grok not in factory
# TODO: ... doesnt have a proper configure check but wants hdfs.h
%bcond_with     hdfs
%bcond_with     zeromq

# note: these parameters are from SUSE and may need to be adapted to
# other environments. However, so far we found no indication that they
# do not properly match. -- rgerhards, 2020-06-07
%define         rsyslogdocdir               %{_docdir}/%{name}
%if %{defined _rundir}
  %define         rsyslog_rundir              %{_rundir}/rsyslog
%else
  %define         rsyslog_rundir              %{_localstatedir}/run/rsyslog
%endif
%define         rsyslog_sockets_cfg         %{rsyslog_rundir}/additional-log-sockets.conf
%define         rsyslog_module_dir_nodeps   %{_libdir}/rsyslog/
%define         rsyslog_module_dir_withdeps %{_libdir}/rsyslog/
Url:            https://www.rsyslog.com/

Requires:	libfastjson-devel >= 0.99.8

%if 0%{?fedora} || 0%{?rhel_version} || 0%{?centos_version}
BuildRequires: systemd-devel >= 204-8
Requires(post): systemd
Requires(preun): systemd
Requires(postun): systemd
%endif

%if 0%{?suse_version}
  %if %{with systemd}
Provides:       syslog
Provides:       sysvinit(syslog)
Conflicts:      otherproviders(syslog)
Requires(pre):  %fillup_prereq
    %if %{with systemv}
Requires(pre):  %insserv_prereq
#Requires(pre):  syslog-service < 2.0
Requires(pre):  /etc/init.d/syslog
    %else
#Requires(pre):  syslog-service >= 2.0
  %{?systemd_requires}
  %endif
BuildRequires:  pkgconfig(systemd) >= 209
  
  %if %{with journal}
BuildRequires:  pkgconfig(libsystemd) >= 209
# libsystemd was 234!
  %endif
%else
  %if 0%{?suse_version}
Requires(pre):  %insserv_prereq %fillup_prereq /etc/init.d/syslog
  %endif
%endif
%endif


BuildRequires:  autoconf
BuildRequires:  automake
BuildRequires:  libtool
#
BuildRequires:  bison
BuildRequires:  flex
BuildRequires:  openssl-devel >= 0.9.7
BuildRequires:  pcre-devel
BuildRequires:  pkgconfig
BuildRequires:  zlib-devel
%if %{with rfc3195}
%if %{with pkgconfig}
BuildRequires:  pkgconfig(liblogging-rfc3195) >= 1.0.1
%else
BuildRequires:  liblogging-devel
%endif
%endif
%if %{with pkgconfig}
BuildRequires:  pkgconfig(liblogging-stdlog) >= 1.0.1
%else
BuildRequires:  liblogging-devel
%endif
%if %{with elasticsearch}
BuildRequires:  curl-devel
%endif
%if %{with omhttpfs} || %{with omhttp}
BuildRequires:  curl-devel >= 7.0.0
%endif
%if %{with imdocker}
BuildRequires:  curl-devel >= 7.40.0
%endif
%if %{with omamqp1}
%if %{with pkgconfig}
BuildRequires:  pkgconfig(libqpid-proton) >= 0.9
%else
BuildRequires:  qpid-proton-devel >= 0.9
%endif
%endif
%if %{with hiredis}
BuildRequires:  hiredis-devel >= 0.10.1
%endif
%if %{with mongodb}
# TODO: PKG_CHECK_MODULES(LIBMONGO_CLIENT, libmongo-client >= 0.1.4)
%endif
%if %{with zeromq}
BuildRequires:  czmq-devel >= 1.1.0
%endif
%if %{with gssapi}
BuildRequires:  krb5-devel
%endif
%if 0%{?fedora} || 0%{?rhel_version} || 0%{?centos_version}
BuildRequires:  gnutls-devel
%else
BuildRequires:  libgnutls-devel
%endif
%if %{with gcrypt}
BuildRequires:  libgcrypt-devel
%endif
%if %{with imhttp}
BuildRequires:  civetweb-devel
%endif
%if %{with mysql}
  %if 0%{?centos_version} >= 800
BuildRequires:  mysql-community-devel
  %else
BuildRequires:  mysql-devel
  %endif
%endif
%if %{with snmp} || %{with mmsnmptrapd}
BuildRequires:  net-snmp-devel
%endif
%if %{with pgsql}
BuildRequires:  postgresql-devel
%endif
%if %{with relp}
# RELP support
%if %{with pkgconfig}
BuildRequires:  pkgconfig(relp) >= 1.2.14
%else
BuildRequires:  librelp-devel >= 1.2.14
%endif
%endif
%if %{with mmnormalize} || %{with mmjsonparse}
# mmnormalize support
%if %{with pkgconfig}
BuildRequires:  pkgconfig(lognorm) >= 2.0.3
%else
BuildRequires:  liblognorm-devel >= 2.0.3
%endif
%endif
%if %{with maxminddb}
BuildRequires:  pkgconfig(libmaxminddb)
%endif
#
# mmjsonparse needs liblognorm,
# but json check is unconditional
%if %{with pkgconfig}
BuildRequires:  pkgconfig(libestr) >= 0.1.9
BuildRequires:  pkgconfig(libfastjson) >= 0.99.8
BuildRequires:  pkgconfig(uuid) >= 2.21.0
%else
BuildRequires:  libestr-devel
BuildRequires:  libfastjson-devel >= 0.99.8
BuildRequires:  libuuid-devel
%endif
%if %{with tcl}
%if %{with pkgconfig}
BuildRequires:  pkgconfig(tcl)
%else
BuildRequires:  tcl-devel
%endif
%endif
%if %{with systemd}
%{?systemd_requires}
BuildRequires:  pkgconfig(systemd)
%endif

BuildRoot:      %{_tmppath}/%{name}-%{version}-build
Source0:        http://www.rsyslog.com/files/download/%{name}/%{name}-%{version}.tar.gz
Source1:        rsyslog.sysconfig
Source2:        rsyslog.conf.in
Source4:        rsyslog.d.remote.conf.in
Source5:        rsyslog-service-prepare.in
Source6:        usr.sbin.rsyslogd
Source7:        module-mysql
Source8:        module-snmp
Source9:        module-udpspoof
Source14:       http://www.rsyslog.com/files/download/rsyslog/rsyslog-doc-%{version}.tar.gz
Source15:       rsyslog.firewall
Source16: rsyslog.service.suse
Source22: rsyslog.conf.fedora
Source23: rsyslog.sysconfig.fedora28
Source24: rsyslog.log.fedora28
Source26: rsyslog.service.fedora
# source 3 are CentOS
Source36: rsyslog.service.centos
Source37: rsyslog.conf.centos7


# PATCH-FIX-OPENSUSE rsyslog-unit.patch crrodriguez@opensuse.org Customize upstream systemd unit for openSUSE needs.
%if 0%{?suse_version} > 1320
  # Ensure "news" exists - bsc#1068678
Requires(post): user(news)
Requires(post): group(news)
%endif

# this is a dirty hack since % dir does only work for the specified directory and nothing above
# but I want to be able to switch this to /etc/apparmor.d once the profiles received more testing
%define APPARMOR_PROFILE_PATH /usr/share/apparmor/extra-profiles
%define APPARMOR_PROFILE_PATH_DIR_COMMANDS %dir /usr/share/apparmor \
                                           %dir /usr/share/apparmor/extra-profiles \
                                           %dir /usr/share/apparmor/extra-profiles/rsyslog.d

%description
Rsyslog is an enhanced multi-threaded syslogd supporting, among others,
MySQL, syslog/tcp, RFC 3195, permitted sender lists, filtering on any
message part, and fine grain output format control. It is quite
compatible to stock sysklogd and can be used as a drop-in replacement.
Its advanced features make it suitable for enterprise-class, encryption
protected syslog relay chains while at the same time being very easy to
setup for the novice user.

%package doc
Summary:        Additional documentation for rsyslog
Group:          System/Daemons

%description doc
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This package provides additional documentation for rsyslog.

%if %{with kafka}
%package %pkgname_kafka
Summary: Kafka output support 
Group: System Environment/Daemons
Requires: %name = %version-%release
Requires: lz4
BuildRequires: librdkafka-devel
#BuildRequires: lz4-devel
BuildRequires: cyrus-sasl-devel

%description %pkgname_kafka
rsyslog kafka components provide interaction with the Apache Kafka system.
These components use the librdkafka C library.

%files %pkgname_kafka
%defattr(-,root,root)
%{_libdir}/rsyslog/omkafka.so
%{_libdir}/rsyslog/imkafka.so
%endif

%if %{with udpspoof}
%package %pkgname_udpspoof
Summary:        UDP spoof support module for syslog
Group:          System/Daemons
Requires:       %{name} = %{version}
Requires:       libnet
BuildRequires:  libnet-devel

%description %pkgname_udpspoof
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides a UDP forwarder that allows changing the sender address.

%files %pkgname_udpspoof
%defattr(-,root,root)
%{rsyslog_module_dir_nodeps}/omudpspoof.so
%if 0%{?suse_version}
%config %{APPARMOR_PROFILE_PATH}/rsyslog.d/module-udpspoof
%endif
%endif


%if %{with diagtools}
%package diag-tools
Requires:       %{name} = %{version}
Summary:        Diagnostic tools
Group:          System/Daemons

%description diag-tools
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This package provides additional diagnostic tools (small helpers,
usually not needed).

%endif

%if %{with gssapi}

%package %pkgname_gssapi
Requires:       %{name} = %{version}
Summary:        GSS-API support module for rsyslog
Group:          System/Daemons

%description %pkgname_gssapi
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides the support to receive syslog messages from the
network protected via Kerberos 5 encryption and authentication.

%endif

%if %{with imhttp}
%package %pkgname_imhttp
Requires:       %{name} = %{version}
Summary:        imhttp input module
Group:          System/Daemons

%description %pkgname_imhttp
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This package provides the imhttp input module to accept log messages
via http protocol.
%endif

%if %{with mysql}
%package %pkgname_mysql
Requires:       %{name} = %{version}
Summary:        MySQL support module for rsyslog
Group:          System/Daemons

%description %pkgname_mysql
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This package provides a module with the support for logging into MySQL
databases.
%endif

%if %{with pgsql}
%package %pkgname_pgsql
Requires:       %{name} = %{version}
Summary:        PostgreSQL support module for rsyslog
Group:          System/Daemons

%description %pkgname_pgsql
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides the support for logging into PostgreSQL databases.
%endif

%if %{with dbi}
%package %pkgname_dbi
Summary:        Database support via DBI
Group:          System/Daemons
Requires:       %{name} = %{version}
BuildRequires:  libdbi-devel

%description %pkgname_dbi
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This package provides a module with the support for logging into DBI
supported databases.
%endif

%if %{with snmp}
%package %pkgname_snmp
Requires:       %{name} = %{version}
Summary:        SNMP support module for rsyslog
Group:          System/Daemons

%description %pkgname_snmp
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides the ability to send syslog messages as an SNMPv1 &
v2c traps.
%endif

%if %{with mmsnmptrapd}
%package %pkgname_mmsnmptrapd
Summary:        Message modification module for snmptrapd generated messages
Requires:       %{name} = %{version}
Group:          System/Daemons

%description %pkgname_mmsnmptrapd
This rsyslog message modification module takes messages generated from snmptrapd and
modifies them so that they look like they originated from the read originator.
%endif


%package %pkgname_gtls
Requires:       %{name} = %{version}
Summary:        TLS encryption support module for rsyslog (via gnutls)
Group:          System/Daemons

%description %pkgname_gtls
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides the ability for TLS encrypted TCP logging (based
on current syslog-transport-tls internet drafts).


%package %pkgname_openssl
Requires:       %{name} = %{version}
Summary:        TLS encryption support module for rsyslog (via openssl)
Group:          System/Daemons

%description %pkgname_openssl
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides the ability for TLS encrypted TCP logging (based
on current syslog-transport-tls internet drafts).

%if %{with gcrypt}

%package %pkgname_gcrypt
Requires:       %{name} = %{version}
Summary:        Libgcrypt log file encryption support module for rsyslog
Group:          System/Daemons

%description %pkgname_gcrypt
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides log file encryption support using libgcrypt and
a rsgtutil utility to manage the files.
%endif

%if %{with relp}

%package %pkgname_relp
Requires:       %{name} = %{version}
Summary:        RELP protocol support module for syslog
Group:          System/Daemons

%description %pkgname_relp
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides Reliable Event Logging Protocol support.

%endif

%if %{with mmnormalize}
%package %pkgname_mmnormalize
Requires:       %{name} = %{version}
Summary:        Contains the mmnormalize support module for syslog
Group:          System/Daemons

%description %pkgname_mmnormalize
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides log normalizing support.
%endif

%if %{with mmjsonparse}
%package %pkgname_mmjsonparse
Summary:	JSON enhanced logging support
Requires:       %{name} = %{version}
Group:          System/Daemons

%description %pkgname_mmjsonparse
This module provides the capability to recognize and parse JSON enhanced
syslog messages.
%endif

%if %{with mmaudit}
%package %pkgname_mmaudit
Summary:	Message modification module supporting Linux audit format
Requires:       %{name} = %{version}
Group:          System/Daemons

%description %pkgname_mmaudit
This module provides message modification supporting Linux audit format
in various settings.
This module provides the capability to recognize and parse JSON enhanced
syslog messages.
%endif


%if %{with elasticsearch}
%package %pkgname_elasticsearch
Requires:       %{name} = %{version}
Summary:        ElasticSearch output module for syslog
Group:          System/Daemons

%description %pkgname_elasticsearch
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides support to output to an ElasticSearch database.
%endif

%if %{with imdocker}
%package %pkgname_imdocker
Requires:       %{name} = %{version}
Summary:        imdocker module for syslog
Group:          System/Daemons

%description %pkgname_imdocker
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides support for module imdocker
%endif

%if %{with omhttp}
%package %pkgname_omhttp
Summary: omhttp support
Group: System Environment/Daemons
Requires: %name = %version-%release

%description %pkgname_omhttp
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides the opportunity to send messages over a REST interface.
Please note that this module is contributed.
%endif

%if %{with omhttpfs}
%package %pkgname_omhttpfs
Requires:       %{name} = %{version}
Summary:        HDFS via HTTP output module for syslog
Group:          System/Daemons

%description %pkgname_omhttpfs
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides support to output to HDFS via HTTP.
%endif

%if %{with hdfs}

%package %pkgname_hdfs
Requires:       %{name} = %{version}
Summary:        HDFS output module for syslog
Group:          System/Daemons

%description %pkgname_hdfs
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides support to output to an HDFS database.

%endif

%if %{with mongodb}
%package %pkgname_mongodb
Requires:       %{name} = %{version}
Summary:        MongoDB output module for syslog
Group:          System/Daemons
BuildRequires: mongo-c-driver-devel snappy-devel cyrus-sasl-devel

%description %pkgname_mongodb
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides support to output to a MongoDB database.

%endif

%if %{with hiredis}
%package %pkgname_hiredis
Requires:       %{name} = %{version}
Summary:        Redis output module for syslog
Group:          System/Daemons

%description %pkgname_hiredis
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides support to output to a Redis database.
%endif

%if %{with zeromq}

%package %pkgname_zeromq
Requires:       %{name} = %{version}
Summary:        ZeroMQ support module for syslog
Group:          System/Daemons

%description %pkgname_zeromq
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides support for ZeroMQ.

%endif

%if %{with omamqp1}
%package %pkgname_omamqp1
Requires:       %{name} = %{version}
Summary:        AMQP support module for syslog
Group:          System/Daemons

%description %pkgname_omamqp1
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides support for AMQP.
%endif

%if %{with tcl}
%package %pkgname_omtcl
Requires:       %{name} = %{version}
Summary:        TCL output module for rsyslog
Group:          System/Daemons

%description %pkgname_omtcl
Rsyslog is an enhanced multi-threaded syslog daemon. See rsyslog
package.

This module provides an output module for TCL.
%endif

%prep
%setup -q -a 14
#

%if 0%{?fedora} || 0%{?rhel_version} || 0%{?centos_version}
#%patch0 -p1 -b .service
%endif

%build
export CFLAGS="$RPM_OPT_FLAGS -fno-strict-aliasing -W -Wall -I../grammar -I../../grammar"
# needs java
#        --enable-gui            \

autoreconf -fiv

%configure			\
%if 0%{?suse_version}
	--with-moddirs=%{rsyslog_module_dir_withdeps} \
%endif
	--disable-fmhash \
	--disable-fmhttp \
	--enable-option-checking	\
	--enable-largefile	\
	--enable-regexp		\
	--enable-klog		\
	--enable-kmsg		\
	--enable-inet		\
	--enable-unlimited-select	\
	--enable-rsyslogd	\
	--disable-fmhash	\
	--disable-fmhttp	\
%if %{with elasticsearch}
	--enable-elasticsearch	\
%endif
%if %{with imdocker}
	--enable-imdocker	\
%endif
%if %{with omhttp}
	--enable-omhttp 	\
%endif
%if %{with omhttpfs}
	--enable-omhttpfs	\
%endif
	--enable-gnutls		\
	--enable-openssl	\
%if %{with gssapi}
	--enable-gssapi-krb5	\
%endif
%if %{with dbi}
	--enable-libdbi		\
%endif
%if %{with imhttp}
	--enable-imhttp		\
%endif
%if %{with mysql}
	--enable-mysql		\
%endif
%if %{with pgsql}
	--enable-pgsql		\
%endif
%if %{with relp}
	--enable-relp		\
%endif
%if %{with rfc3195}
        --enable-rfc3195        \
%endif
%if %{with snmp}
	--enable-snmp		\
	--enable-mmsnmptrapd	\
%endif
%if %{with mmsnmptrapd}
	--enable-mmsnmptrapd	\
%endif
	--enable-mail		\
	--enable-imfile		\
	--enable-imptcp		\
	--enable-impstats	\
	--enable-omprog		\
	--enable-omuxsock	\
%if %{with udpspoof}
	--enable-omudpspoof	\
%endif
	--enable-omstdout	\
	--enable-pmlastmsg	\
	--enable-pmcisconames	\
	--enable-pmaixforwardedfrom	\
	--enable-pmsnare	\
	--enable-pmnull		\
	--enable-pmnormalize	\
	--enable-omruleset	\
%if %{with mmnormalize}
	--enable-mmnormalize \
	--enable-mmjsonparse	\
	--enable-mmaudit	\
%endif
%if %{with mmjsonparse}
	--enable-mmjsonparse	\
%endif
%if %{with mmaudit}
	--enable-mmaudit	\
%endif
%if %{with hdfs}
	--enable-omhdfs		\
%endif
%if %{with mongodb}
	--enable-ommongodb	\
%endif
%if %{with hiredis}
	--enable-omhiredis	\
%endif
%if %{with zeromq}
	--enable-imzmq3		\
	--enable-omzmq3		\
%endif
%if %{with diagtools}
	--enable-imdiag		\
	--enable-diagtools	\
%endif
%if %{with systemd} && %{with journal}
	--enable-imjournal	\
	--enable-omjournal	\
%endif
	--enable-mmanon		\
	--enable-mmaudit	\
	--enable-mmjsonparse	\
	--enable-mmutf8fix	\
	--enable-mmcount	\
	--enable-mmsequence	\
	--enable-mmfields	\
	--enable-mmpstrucdata	\
	--enable-mmrfc5424addhmac \
	--enable-mmrm1stspace	\
	--enable-pmciscoios \
	--enable-pmpanngfw	\
%if %{with gcrypt}
	--enable-libgcrypt	\
%else
	--disable-libgcrypt	\
%endif
%if %{with tcl}
	--enable-omtcl		\
%endif
%if %{with kafka}
	--enable-imkafka	\
	--enable-omkafka	\
%endif
%if %{with maxminddb}
	--enable-mmdblookup	\
%endif
	--enable-usertools	\
%if %{with omamqp1}
	--enable-omamqp1	\
%endif
	--disable-static

make %{?_smp_mflags:%{_smp_mflags}} V=1

%install
make install DESTDIR="%{buildroot}"  V=1
%if %{with systemd}
%if 0%{?suse_version}
    install -D -m 644 %{SOURCE16} %{buildroot}%{_unitdir}/rsyslog.service
%else
  %if 0%{?fedora}
    install -D -m 644 %{SOURCE26} %{buildroot}%{_unitdir}/rsyslog.service
  %else
    install -D -m 644 %{SOURCE36} %{buildroot}%{_unitdir}/rsyslog.service
  %endif
%endif
for file in rsyslog-service-prepare; do
	sed \
	-e 's;RUN_DIR;%{rsyslog_rundir};g' \
	-e 's;ADDITIONAL_SOCKETS;%{rsyslog_sockets_cfg};g' \
	"%{_sourcedir}/${file}.in" > "${file}"
	ls -l %{buildroot}%{_unitdir}/rsyslog.service
done
%endif
#
rm -f %{buildroot}%{rsyslog_module_dir_nodeps}/*.la
#
# move all modules linking libraries in /usr to /usr/lib[64]
# the user has to specify them with full path then...
install -d -m0755 %{buildroot}%{rsyslog_module_dir_withdeps}
if test "%{rsyslog_module_dir_nodeps}" != "%{rsyslog_module_dir_withdeps}" ; then
	for mod in  \
		lmnsd_gtls.so \
		lmnsd_ossl.so \
%if %{with gcrypt}
		lmcry_gcry.so \
%endif
%if %{with gssapi}
		omgssapi.so imgssapi.so lmgssutil.so \
%endif
%if %{with dbi}
		omlibdbi.so \
%endif
%if %{with mysql}
		ommysql.so \
%endif
%if %{with pgsql}
		ompgsql.so \
%endif
%if %{with relp}
		imrelp.so omrelp.so \
%endif
%if %{with snmp}
		omsnmp.so \
%endif
%if %{with mmsnmptrad}
		mmsnmptrapd.so \
%endif
%if %{with mmnormalize}
		mmnormalize.so  \
		mmjsonparse.so \
		mmaudit.so \
%endif
%if %{with elasticsearch}
		omelasticsearch.so \
%endif
%if %{with imdocker}
		imdocker.so \
%endif
%if %{with omhttpfs}
		omhttpfs.so \
%endif
%if %{with omhttp}
		omhttp.so \
%endif
	; do
		mv -f %{buildroot}%{rsyslog_module_dir_nodeps}/$mod \
		      %{buildroot}%{rsyslog_module_dir_withdeps}
	done
fi
%if 0%{?suse_version}
	if test "%{_sbindir}" != "/sbin" ; then
		install -d -m0755 %{buildroot}/sbin
		ln -sf %{_sbindir}/rsyslogd $RPM_BUILD_ROOT/sbin/rsyslogd
	fi
%endif
# it is simply broken (bnc#890228)
rm -f $RPM_BUILD_ROOT%{_sbindir}/zpipe
#
%if 0%{?suse_version}
	%if %{with systemd} && ! %{with systemv}
		install -m755 rsyslog-service-prepare %{buildroot}%{_sbindir}/
		ln -svf service %buildroot/%{_sbindir}/rc%{name}
	%else
		if test -e %{buildroot}%{_unitdir}/rsyslog.service ; then
			rm -f %{buildroot}%{_unitdir}/rsyslog.service
		fi
	%endif
%else
	sed -i '/^Alias/s/^/;/;/^Requires=syslog.socket/s/^/;/' %{buildroot}%{_unitdir}/rsyslog.service
%endif
#
install -d -m0755 %{buildroot}%{_sysconfdir}/rsyslog.d
install -d -m0755 %{buildroot}%{_localstatedir}/run/rsyslog
install -d -m0755 %{buildroot}%{_localstatedir}/spool/rsyslog

# distro-specific config files
%if 0%{?suse_version}
  for file in rsyslog.conf rsyslog.d.remote.conf ; do
	  sed \
  %ifarch s390 s390x
	  -e 's;tty10;console;g' \
  %endif
	  -e 's;ADDITIONAL_SOCKETS;%{rsyslog_sockets_cfg};g' \
	  -e 's;ETC_RSYSLOG_CONF;%{_sysconfdir}/rsyslog.conf;g' \
	  -e 's;ETC_RSYSLOG_D_DIR;%{_sysconfdir}/rsyslog.d;g' \
	  -e 's;ETC_RSYSLOG_D_GLOB;%{_sysconfdir}/rsyslog.d/*.conf;g' \
	  -e 's;RSYSLOG_SPOOL_DIR;%{_localstatedir}/spool/rsyslog;g' \
	  %{_sourcedir}/${file}.in > ${file}.$$
  done
  install    -m0600 rsyslog.conf.$$ \
                    %{buildroot}%{_sysconfdir}/rsyslog.conf
  install    -m0600 rsyslog.d.remote.conf.$$ \
                    %{buildroot}%{_sysconfdir}/rsyslog.d/remote.conf
%else
  # NON-SUSE systems
  mkdir -p %{buildroot}%{_sysconfdir}/sysconfig
  mkdir -p %{buildroot}%{_sysconfdir}/logrotate.d
  %if 0%{?rhel_version} || 0%{?centos_version}
    install -p -m 644 %{SOURCE37} %{buildroot}%{_sysconfdir}/rsyslog.conf
  %else
    install -p -m 644 %{SOURCE22} %{buildroot}%{_sysconfdir}/rsyslog.conf
  %endif
  install -p -m 644 %{SOURCE23} %{buildroot}%{_sysconfdir}/sysconfig/rsyslog
  install -p -m 644 %{SOURCE24} %{buildroot}%{_sysconfdir}/logrotate.d/rsyslog
%endif
#
install -d -m0755 %{buildroot}%{_fillupdir}
install    -m0600 %{_sourcedir}/rsyslog.sysconfig \
                  %{buildroot}%{_fillupdir}/sysconfig.syslog-rsyslog
#
rm -f doc/Makefile*
install -d -m0755 %{buildroot}%{rsyslogdocdir}/html/
find ChangeLog README AUTHORS COPYING*  \
	\( -type d -exec install -m755 -d   %{buildroot}%{rsyslogdocdir}/\{\} \; \) \
     -o \( -type f -exec install -m644 \{\} %{buildroot}%{rsyslogdocdir}/\{\} \; \)
cp -av build/* %{buildroot}%{rsyslogdocdir}/html/
#
%if %{with mysql}
install -m644 plugins/ommysql/createDB.sql \
	%{buildroot}%{rsyslogdocdir}/mysql-createDB.sql
%endif
%if %{with pgsql}
install -m644 plugins/ompgsql/createDB.sql \
	%{buildroot}%{rsyslogdocdir}/pgsql-createDB.sql
%endif
# create ghosts
install -d -m0755 %{buildroot}%{rsyslog_rundir}
touch %{buildroot}%{rsyslog_sockets_cfg}
chmod 644 %{buildroot}%{rsyslog_sockets_cfg}

%if 0%{?suse_version}
# SUSE APPARMOR
  mkdir -p %{buildroot}%{APPARMOR_PROFILE_PATH}/rsyslog.d/
  install -m0640 %{SOURCE6} %{buildroot}%{APPARMOR_PROFILE_PATH}/
  %if %{with mysql}
    install -m0640 %{SOURCE7} %{buildroot}%{APPARMOR_PROFILE_PATH}/rsyslog.d/
  %endif
  %if %{with snmp}
    install -m0640 %{SOURCE8} %{buildroot}%{APPARMOR_PROFILE_PATH}/rsyslog.d/
  %endif
  %if %{with udpspoof}
    install -m0640 %{SOURCE9} %{buildroot}%{APPARMOR_PROFILE_PATH}/rsyslog.d/
  %endif

# firewall config
%if 0%{?suse_version} <= 1500
  install -m 644 -D %{SOURCE15} %{buildroot}/%{_sysconfdir}/sysconfig/SuSEfirewall2.d/services/%{name}
%endif
%endif

%clean
if [ -n "%{buildroot}" ] && [ "%{buildroot}" != "/" ] ; then
	rm -rf "%{buildroot}"
fi

%if %{with systemd} && ! %{with systemv}

%pre
%if 0%{?suse_version}
	%{service_add_pre rsyslog.service}
%endif

%endif

%post
%if 0%{?suse_version}
	#
	# update linker caches
	#
	/sbin/ldconfig
	#
	# remove obsolete variables
	#
	%{remove_and_set -n syslog SYSLOG_DAEMON SYSLOG_REQUIRES_NETWORK}
	%{remove_and_set -n syslog RSYSLOGD_COMPAT_VERSION RSYSLOGD_NATIVE_VERSION}
	%if %{with systemv}
	%{fillup_and_insserv -ny syslog syslog}
	%endif
	#
	# add RSYSLOGD_* variables
	#
	%{fillup_only -ns syslog rsyslog}
	%if %{with systemv}
	#
	# switch SYSLOG_DAEMON to outself
	#
	if test -f etc/sysconfig/syslog ; then
		sed -i \
			-e 's/^SYSLOG_DAEMON=.*/SYSLOG_DAEMON="rsyslogd"/g' \
			etc/sysconfig/syslog
	fi
	%endif
	#
	# Do not use multiple facilities with the same priority pattern.
	# It causes start failure since rsyslog-6.4.x (bnc#780607).
	#
	# FIXME: it seems to be a valid syntax -> rsyslog bug?
	#
	#if grep -qs '^local[0246],' etc/rsyslog.conf ; then
	   #sed -i -e 's/^local\([0246]\),/local\1.*;/g' etc/rsyslog.conf
	#fi
	#
	# create dirs, touch log default files
	#
	if [ "$1" = "1" ] ; then  # first install
	mkdir -p var/log
	touch var/log/messages;  chmod 640 var/log/messages
	touch var/log/mail;      chmod 640 var/log/mail
	touch var/log/mail.info; chmod 640 var/log/mail.info
	touch var/log/mail.warn; chmod 640 var/log/mail.warn
	touch var/log/mail.err;  chmod 640 var/log/mail.err
	test -f var/log/news && mv -f var/log/news var/log/news.bak
	mkdir -p -m 0750 var/log/news
	chown news:news  var/log/news
	touch var/log/news/news.crit;   chmod 640 var/log/news/news.crit
	chown news:news var/log/news/news.crit
	touch var/log/news/news.err;    chmod 640 var/log/news/news.err
	chown news:news var/log/news/news.err
	touch var/log/news/news.notice; chmod 640 var/log/news/news.notice
	chown news:news var/log/news/news.notice
	#
	# touch the additional log files we are using
	#
	touch var/log/acpid;            chmod 640 var/log/acpid
	touch var/log/firewall;         chmod 640 var/log/firewall
	touch var/log/NetworkManager;   chmod 640 var/log/NetworkManager
	#
	# touch the additional log sockets config file
	#
	mkdir -p -m750 ".%{rsyslog_rundir}"
	touch ".%{rsyslog_sockets_cfg}"
	chmod 640 ".%{rsyslog_sockets_cfg}"
	fi # first install
	#
	# Enable the rsyslogservice to be started by systemd
	#
	%if %{with systemd} && ! %{with systemv}
	# This macro enables based on a systemctl preset config file only
	%{service_add_post rsyslog.service}
	# But we want to enable a syslog-daemon regardless of the preset;
	# force the creation of a syslog.service alias link (bnc#790805).
	# We do not check the obsolete SYSLOG_DAEMON variable as we want
	# to switch when installing it and there is a provider conflict.
	/usr/bin/systemctl -f enable rsyslog.service >/dev/null 2>&1 || :
	%endif
%else
	for n in /var/log/{messages,secure,maillog,spooler}
	do
		[ -f $n ] && continue
		umask 066 && touch $n
	done
	%systemd_post rsyslog.service
%endif

%preun
%if 0%{?suse_version}
	#
	# stop the rsyslogd daemon when it is running
	#
	%if %{with systemd} && ! %{with systemv}
	%{service_del_preun syslog.socket}
	%{service_del_preun rsyslog.service}
	%else
	if test -x /etc/init.d/syslog ; then
		%{stop_on_removal syslog}
	fi
	#
	# reset SYSLOG_DAEMON variable on removal
	#
	if test "$1" = "0" -a -f etc/sysconfig/syslog ; then
		sed -i \
			-e 's/^SYSLOG_DAEMON=.*/SYSLOG_DAEMON=""/g' \
			etc/sysconfig/syslog
	fi
	%endif
%else
	%systemd_preun rsyslog.service
%endif

%postun
%if 0%{?suse_version}
	#
	# update linker caches
	#
	/sbin/ldconfig
	%if %{with systemd} && ! %{with systemv}
	#
	# cleanup init scripts
	#
	%{service_del_postun rsyslog.service}
	%else
	#
	# stop the rsyslogd daemon when it is running
	#
	if test -x /etc/init.d/syslog ; then
		%{restart_on_update syslog}
	fi
	#
	# cleanup init scripts
	#
	%{insserv_cleanup}
	%endif
%else
	%systemd_postun_with_restart rsyslog.service
%endif

%files
%defattr(-,root,root)
%dir %{_sysconfdir}/rsyslog.d
%config(noreplace) %attr(600,root,root) %{_sysconfdir}/rsyslog.conf
%if 0%{?suse_version}
   %config(noreplace) %attr(600,root,root) %{_sysconfdir}/rsyslog.d/remote.conf
%else
  %config(noreplace) %{_sysconfdir}/sysconfig/rsyslog
  %config(noreplace) %{_sysconfdir}/logrotate.d/rsyslog
%endif
%{_sbindir}/rsyslogd
%if 0%{?suse_version}
%if "%{_sbindir}" != "/sbin"
/sbin/rsyslogd
%endif
%endif
%dir %{rsyslog_module_dir_nodeps}
%{rsyslog_module_dir_nodeps}/imfile.so
%{rsyslog_module_dir_nodeps}/imklog.so
%{rsyslog_module_dir_nodeps}/imkmsg.so
%{rsyslog_module_dir_nodeps}/immark.so
%{rsyslog_module_dir_nodeps}/impstats.so
%{rsyslog_module_dir_nodeps}/imtcp.so
%{rsyslog_module_dir_nodeps}/imudp.so
%{rsyslog_module_dir_nodeps}/imuxsock.so
%{rsyslog_module_dir_nodeps}/lmnet.so
%{rsyslog_module_dir_nodeps}/lmnetstrms.so
%{rsyslog_module_dir_nodeps}/lmnsd_ptcp.so
%{rsyslog_module_dir_nodeps}/imptcp.so
%{rsyslog_module_dir_nodeps}/lmregexp.so
%{rsyslog_module_dir_nodeps}/lmtcpclt.so
%{rsyslog_module_dir_nodeps}/lmtcpsrv.so
%{rsyslog_module_dir_nodeps}/lmzlibw.so
%{rsyslog_module_dir_nodeps}/mmanon.so
%{rsyslog_module_dir_nodeps}/mmcount.so
%{rsyslog_module_dir_nodeps}/mmexternal.so
%{rsyslog_module_dir_nodeps}/mmfields.so
%{rsyslog_module_dir_nodeps}/mmpstrucdata.so
%{rsyslog_module_dir_nodeps}/mmrfc5424addhmac.so
%{rsyslog_module_dir_nodeps}/mmsequence.so
%{rsyslog_module_dir_nodeps}/mmutf8fix.so
%{rsyslog_module_dir_nodeps}/mmrm1stspace.so
%{rsyslog_module_dir_nodeps}/ommail.so
%{rsyslog_module_dir_nodeps}/omprog.so
%{rsyslog_module_dir_nodeps}/omruleset.so
%{rsyslog_module_dir_nodeps}/omstdout.so
%{rsyslog_module_dir_nodeps}/omtesting.so
%{rsyslog_module_dir_nodeps}/omuxsock.so
%{rsyslog_module_dir_nodeps}/pmlastmsg.so
%{rsyslog_module_dir_nodeps}/pmaixforwardedfrom.so
%{rsyslog_module_dir_nodeps}/pmcisconames.so
%{rsyslog_module_dir_nodeps}/pmciscoios.so
%{rsyslog_module_dir_nodeps}/pmsnare.so
%{rsyslog_module_dir_nodeps}/pmnull.so
%{rsyslog_module_dir_nodeps}/pmnormalize.so
%{rsyslog_module_dir_nodeps}/pmpanngfw.so
%if %{with rfc3195}
%{rsyslog_module_dir_nodeps}/im3195.so
%endif
%if %{with systemd} && %{with journal}
%{rsyslog_module_dir_nodeps}/imjournal.so
%{rsyslog_module_dir_nodeps}/omjournal.so
%endif
%dir %{rsyslog_module_dir_withdeps}
%{_mandir}/man5/rsyslog.conf.5*
%{_mandir}/man8/rsyslogd.8*
%dir %{rsyslogdocdir}
%doc %{rsyslogdocdir}/ChangeLog
%doc %{rsyslogdocdir}/README
%doc %{rsyslogdocdir}/AUTHORS
%doc %{rsyslogdocdir}/COPYING*
%dir %{_localstatedir}/spool/rsyslog
%{_fillupdir}/sysconfig.syslog-rsyslog
%attr(0755,root,root) %dir %ghost %{rsyslog_rundir}
%attr(0644,root,root) %ghost %{rsyslog_sockets_cfg}
%if 0%{?suse_version}
	%if %{with systemd} && ! %{with systemv}
	%{_sbindir}/rsyslog-service-prepare
	%{_unitdir}/rsyslog.service
	%{_sbindir}/rc%{name}
	%endif
%else
	%{_unitdir}/rsyslog.service
%endif

%if 0%{?suse_version}
%{APPARMOR_PROFILE_PATH_DIR_COMMANDS}
%config %{APPARMOR_PROFILE_PATH}/usr.sbin.rsyslogd
%if 0%{?suse_version} <= 1500
%config(noreplace) %attr(0644,root,root) %{_sysconfdir}/sysconfig/SuSEfirewall2.d/services/%{name}
%endif
%endif

%files doc
%defattr(-,root,root)
%dir %{rsyslogdocdir}/
%doc %{rsyslogdocdir}/html/

%if %{with diagtools}

%files diag-tools
%defattr(-,root,root)
%{_sbindir}/msggen
%{_sbindir}/rsyslog_diag_hostname
%{rsyslog_module_dir_nodeps}/imdiag.so
%endif

%if %{with gssapi}

%files %pkgname_gssapi
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/omgssapi.so
%{rsyslog_module_dir_withdeps}/imgssapi.so
%{rsyslog_module_dir_withdeps}/lmgssutil.so
%endif

%if %{with mysql}
%files %pkgname_mysql
%defattr(-,root,root)
%doc %{rsyslogdocdir}/mysql-createDB.sql
%{rsyslog_module_dir_withdeps}/ommysql.so
%if 0%{?suse_version}
%config %{APPARMOR_PROFILE_PATH}/rsyslog.d/module-mysql
%endif
%endif

%if %{with pgsql}
%files %pkgname_pgsql
%defattr(-,root,root)
%doc %{rsyslogdocdir}/pgsql-createDB.sql
%{rsyslog_module_dir_withdeps}/ompgsql.so
%endif

%if %{with dbi}

%files %pkgname_dbi
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/omlibdbi.so
%endif

%if %{with snmp}
%files %pkgname_snmp
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/omsnmp.so
%if 0%{?suse_version}
	%{rsyslog_module_dir_nodeps}/mmsnmptrapd.so
	%config %{APPARMOR_PROFILE_PATH}/rsyslog.d/module-snmp
%endif
%endif

%if %{with mmsnmptrapd}
%files %pkgname_mmsnmptrapd
%defattr(-,root,root)
%{rsyslog_module_dir_nodeps}/mmsnmptrapd.so
%endif

%files %pkgname_gtls
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/lmnsd_gtls.so

%files %pkgname_openssl
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/lmnsd_ossl.so

%if %{with relp}

%files %pkgname_relp
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/imrelp.so
%{rsyslog_module_dir_withdeps}/omrelp.so
%endif

%if %{with mmnormalize}
%files %pkgname_mmnormalize
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/mmnormalize.so
%if 0%{?suse_version}
%{rsyslog_module_dir_withdeps}/mmjsonparse.so
%{rsyslog_module_dir_withdeps}/mmaudit.so
%endif
%endif

%if %{with mmjsonparse}
%files %pkgname_mmjsonparse
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/mmjsonparse.so
%endif

%if %{with mmaudit}
%files %pkgname_mmaudit
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/mmaudit.so
%endif



%if %{with elasticsearch}
%files %pkgname_elasticsearch
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/omelasticsearch.so
%endif

%if %{with imdocker}
%files %pkgname_imdocker
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/imdocker.so
%endif

%if %{with omhttp}
%files %pkgname_omhttp
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/omhttp.so
%endif

%if %{with omhttpfs}
%files %pkgname_omhttpfs
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/omhttpfs.so
%endif

%if %{with hdfs}

%files %pkgname_hdfs
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/omhdfs.so
%endif

%if %{with mongodb}

%files %pkgname_mongodb
%defattr(-,root,root)
%{_bindir}/logctl
%{rsyslog_module_dir_withdeps}/ommongodb.so
%endif

%if %{with hiredis}

%files %pkgname_hiredis
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/omhiredis.so
%endif

%if %{with zeromq}

%files %pkgname_zeromq
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/imzmq3.so
%{rsyslog_module_dir_withdeps}/omzmq3.so
%endif

%if %{with omamqp1}
%files %pkgname_omamqp1
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/omamqp1.so
%endif

%if %{with gcrypt}

%files %pkgname_gcrypt
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/lmcry_gcry.so
%{_bindir}/rscryutil
%endif

%if %{with tcl}
%files %pkgname_omtcl
%defattr(-,root,root)
%{rsyslog_module_dir_withdeps}/omtcl.so*
%endif

%changelog
* Tue Jun 15 2021 Rainer Gerhards <rgerhards@adiscon.com> - 8.2106.0-1
  new upstream release

* Mon Apr 19 2021 Rainer Gerhards <rgerhards@adiscon.com> - 8.2104.0-1
  new upstream release

* Mon Feb 15 2021 Rainer Gerhards <rgerhards@adiscon.com> - 8.2102.0-1
  new upstream release

* Mon Jan 11 2021 Rainer Gerhards <rgerhards@adiscon.com> - 8.2012.0-1
  new upstream release

* Tue Oct 20 2020 Rainer Gerhards <rgerhards@adiscon.com> - 8.2010.0-1
  new upstream release

* Tue Aug 25 2020 Rainer Gerhards <rgerhards@adiscon.com> - 8.2008.0-1
  new upstream release

* Tue Jun 23 2020 Rainer Gerhards <rgerhards@adiscon.com> - 8.2006.0-1
  new upstream release

* Mon May 25 2020 Rainer Gerhards <rgerhards@adiscon.com> - 8.2004.0-3
  add rsyslog-kafka packages where possible

* Wed May 20 2020 Rainer Gerhards <rgerhards@adiscon.com> - 8.2004.0-2
  add rsyslog-openssl driver package

* Mon May 04 2020 Rainer Gerhards <rgerhards@adiscon.com> - 8.2004.0-1
  new upstream release

* Tue Jan 14 2020 Rainer Gerhards <rgerhards@adiscon.com> - 8.2001.0-1
  new upstream release

* Tue Nov 12 2019 Jan Gerhards <rgerhards@adiscon.com> - 8.1911.0-1
- new upstream version

* Tue Oct 01 2019 Rainer Gerhards <rgerhards@adiscon.com> - 8.1910.0-1
- new upstream version

* Wed Aug 19 2019 Rainer Gerhards <rgerhards@adiscon.com> - 8.1908.0-1
- new upstream version

* Thu Jul 18 2019 Rainer Gerhards <rgerhards@adiscon.com> - 8.1907.0-1
- new upstream version

