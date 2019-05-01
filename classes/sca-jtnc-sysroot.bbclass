#
# This file is protected by Copyright. Please refer to the COPYRIGHT file distributed
# with this source distribution.
#
# This file is part of Geon Technology's SCA-JTNC.
#
# Geon Technology's SCA-JTNC is free software: you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or (at your option)
# any later version.
#
# Geon Technology's SCA-JTNC is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more
# details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see http://www.gnu.org/licenses/.
#

inherit sca-jtnc-env

fakeroot sca_jtnc_core_scahome_sysroot () {
    sysroot_stage_dir ${D}${SCAHOME} \
        ${SYSROOT_DESTDIR}${SCAHOME}
}
fakeroot sca_jtnc_core_scaroot_sysroot () {
    sysroot_stage_dir ${D}${SCAROOT} \
        ${SYSROOT_DESTDIR}${SCAROOT}
}
SYSROOT_PREPROCESS_FUNCS += "sca_jtnc_core_scahome_sysroot"
SYSROOT_PREPROCESS_FUNCS += "sca_jtnc_core_scaroot_sysroot"
