#!/bin/bash
if [ "$PKG_PROJ" == "" ]; then
	PKG_PROJ=~/git/rsyslog-pkg-ubuntu/
fi
if [ "$PROJECT" == "" ]; then
	PROJECT=rsyslog # may later also by dynamic
fi
export VERSION="$(cat CURR_VERSION)"
echo processing version $VERSION

# setup
cp rsyslog-$VERSION.tar.gz rsyslog_$VERSION.orig.tar.gz # once!

# build platforms
if false; then
for PLATFORM in trusty xenial bionic eoan focal groovy Debian
do
	# cleanup
	rm -r $VERSION
	mkdir $VERSION
	mkdir $VERSION/debian

	# transform
	case "$PLATFORM" in
		trusty)	OBS_NAME=xUbuntu_14.04 ;;
		xenial)	OBS_NAME=xUbuntu_16.04 ;;
		bionic)	OBS_NAME=xUbuntu_18.04 ;;
		eoan)	OBS_NAME=xUbuntu_19.10 ;;
		focal)	OBS_NAME=xUbuntu_20.04 ;;
		groovy)	OBS_NAME=xUbuntu_20.10 ;;
	esac
	RELEASE="$(head -n1 $PKG_PROJ/$PROJECT/$PLATFORM/v8-stable/debian/changelog |grep -o '8\.*[a-z0-9.-]*')"
	cp -r $PKG_PROJ/$PROJECT/$PLATFORM/v8-stable/debian $VERSION
		ls -l $VERSION/debian/rules
		sed -i 's/--enable-kafka-static/--disable-kafka-static/' $VERSION/debian/rules
		sed -i 's/--enable-imkafka/--enable-imkafka=optional/' $VERSION/debian/rules
		sed -i 's/--enable-omkafka/--enable-omkafka=optional/' $VERSION/debian/rules
	#sed -i '/adisconhelperlrdk-dev/d' $VERSION/debian/control
	sed -i 's/adisconhelperlrdk-dev/librdkafka-dev|debhelper/' $VERSION/debian/control
	if [ "$PLATFORM" == "trusty" ]; then
		sed -i 's/liblz4-dev/liblz4-dev|debhelper/' $VERSION/debian/control
	fi
	dpkg-source -b $VERSION
	mv rsyslog_$RELEASE.dsc rsyslog-$OBS_NAME.dsc
	cat >> rsyslog-$OBS_NAME.dsc <<< "DEBTRANSFORM-TAR: rsyslog-$VERSION.tar.gz\n"
	sed -i 's/adisconhelperlrdk-dev/librdkafka-dev/' rsyslog-$OBS_NAME.dsc
done
fi # REMOVE ME - comment out

# We handle Debian a bit differently
rm -r $VERSION
mkdir $VERSION
mkdir $VERSION/debian
PLATFORM=Debian
RELEASE="$(head -n1 $PKG_PROJ/$PROJECT/$PLATFORM/v8-stable/debian/changelog |grep -o '8\.*[a-z0-9.-]*')"
cp -r $PKG_PROJ/$PROJECT/$PLATFORM/v8-stable/debian $VERSION
dpkg-source -b $VERSION
mv rsyslog_$RELEASE.dsc rsyslog.dsc
cat >> rsyslog.dsc <<< "DEBTRANSFORM-TAR: rsyslog-$VERSION.tar.gz\n"
#sed -i 's/adisconhelperlrdk-dev/librdkafka-dev/' rsyslog-$OBS_NAME.dsc


exit

######################################################################

cp -r $PKG_PROJ/rsyslog/xenial/v8-stable/debian $VERSION
sed -i 's/--enable-kafka-static/--enable-kafka-static=no/' $VERSION/debian/rules
sed -i 's/--enable-imkafka/--enable-imkafka=optional/' $VERSION/debian/rules
sed -i 's/--enable-omkafka/--enable-omkafka=optional/' $VERSION/debian/rules
#sed -i '/adisconhelperlrdk-dev/d' $VERSION/debian/control
sed -i 's/adisconhelperlrdk-dev/librdkafka-dev/' $VERSION/debian/control
dpkg-source -b $VERSION
mv rsyslog_8.2006.0-0adiscon1xenial1.dsc rsyslog-xUbuntu_16.04.dsc
cat << EOF >> rsyslog-xUbuntu_16.04.dsc
DEBTRANSFORM-TAR: rsyslog-8.2006.0.tar.gz
EOF
sed -i 's/adisconhelperlrdk-dev/librdkafka-dev/' rsyslog-xUbuntu_16.04.dsc

rm -rf $VERSION/debian
cp -r $PKG_PROJ/rsyslog/Debian/debian $VERSION
dpkg-source -b $VERSION
mv rsyslog_8.2006.0-2.dsc rsyslog.dsc
cat << EOF >> rsyslog-xUbuntu_16.04.dsc
DEBTRANSFORM-TAR: rsyslog-8.2006.0.tar.gz
EOF
