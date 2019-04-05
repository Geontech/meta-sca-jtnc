#
# This file is protected by Copyright. Please refer to the COPYRIGHT file distributed 
# with this source distribution.
#
# This file is part of Geon Technology's meta-sca-jtnc.
#
# Geon Technology's meta-sca-jtnc is free software: you can redistribute it and/or 
# modify it under the terms of the GNU Lesser General Public License as published by 
# the Free Software Foundation, either version 3 of the License, or (at your option) 
# any later version.
#
# Geon Technology's meta-sca-jtnc is distributed in the hope that it will be useful, 
# but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or 
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more
# details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see http://www.gnu.org/licenses/.
#
DESCRIPTION = "REDHAWK SCA JTNC Core Framework"
HOMEPAGE = "http://www.geontech.com"
LICENSE = "GPL-3.0"
LIC_MD5 ?= "c79ff39f19dfec6d293b95dea7b07891"
LIC_FILES_CHKSUM ?= "file://${COMMON_LICENSE_DIR}/${LICENSE};md5=${LIC_MD5}"

PR = "0"

PACKAGE_BEFORE_PN += "${PN}-bulkiointerfaces"

DEPENDS += "\
    omniorb omnievents omniorbpy omniorbpy-native \
    expat \
    xsd-native \
    apr apr-util \
    log4cxx \
    boost boost-native \
    python-numpy python-threading python-numbers python-resource python-setuptools-native \
    ossp-uuid \
    zip \
    "
RDEPENDS_${PN} += "\
    python omniorbpy omniorb omnievents e2fsprogs apr-util apr zip expat boost \
    python-numpy python-threading python-subprocess python-numbers python-xml \
    python-resource ossp-uuid \
    "

SRC_URI = "git://github.com/geontech/${PN};protocol=https"
SRCREV = "3a6df1a7658bc821d36ce1042877ddac1d859bb8"
SCA_JTNC_BASEDIR = "${WORKDIR}/git"

# Patches
SRC_URI_append = "\
    file://0001-allow_idl_dir_set.patch \
    file://0002-Fix_Idl_prefix.patch \
    file://0003-include_scoped_ptr.patch \
    file://0004-acinclude_ossie_vs_sca.patch \
    file://0005-scahome-global-prefix.patch \
    file://0006-devicecomponent_scoped_ptr.patch \
    file://0007-noinst-test.patch \
"

S = "${SCA_JTNC_BASEDIR}"

inherit sca-jtnc-sysroot autotools-brokensep pkgconfig pythonnative

PACKAGE_DEBUG_SPLIT_STYLE = "debug-without-src"

EXTRA_OECONF += "\
    --disable-java \
    --with-sca=${SCAHOME} \
    --with-sdr=${SCAROOT} \
    --with-boost=${STAGING_EXECPREFIXDIR} \
    --with-boost-thread=boost_thread \
    --with-expat=${STAGING_EXECPREFIXDIR} \
    idldir=${STAGING_DATADIR}/idl/omniORB \
    OMNIORB_INCLUDEDIR=${STAGING_INCDIR} \
    OMNICOS_IDLDIR=${STAGING_DATADIR}/idl/omniORB/COS \
    "

# Autoreconf fails without these
ac_meta_files () {
    touch ${S}/NEWS ${S}/README ${S}/AUTHORS ${S}/ChangeLog
}
do_unpack[postfuncs] += "ac_meta_files"

CXXFLAGS += "-fpermissive -std=gnu++98"

# Skips for non-standard libdir location (in SCAHOME)
INSANE_SKIP_${PN} += "libdir"
INSANE_SKIP_${PN}-dev += "libdir"
INSANE_SKIP_${PN}-dbg += "libdir"

FILES_${PN} = " \
    ${SCAHOME}/bin \
    ${SCAHOME}/share \
    ${SCAHOME}/lib/lib*.so.* \
    ${SCAHOME}/lib/python \
    ${SCAROOT}/dom \
    ${SCAROOT}/dev \
"

FILES_${PN}-dbg += " \
    ${SCAHOME}/lib/.debug \
"

FILES_${PN}-dev += " \
    ${SCAHOME}/lib/*.so \
    ${SCAHOME}/include \
    ${SCAHOME}/lib/pkgconfig \
"

FILES_${PN}-staticdev = " \
    ${SCAHOME}/lib/*.a \
    ${SCAHOME}/lib/*.la \
"

do_install_append () {
    # TODO: REMOVE this once assets are being installed as part of this package.
    install -d ${D}${SCAROOT}/dev/devices
    install -d ${D}${SCAROOT}/dev/nodes
    install -d ${D}${SCAROOT}/dom/deps
    install -d ${D}${SCAROOT}/dom/mgr
    install -d ${D}${SCAROOT}/dom/components
    install -d ${D}${SCAROOT}/dom/waveforms
}