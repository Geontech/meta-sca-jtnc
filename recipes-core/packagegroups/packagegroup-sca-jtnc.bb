LICENSE = "LGPL-3.0"
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

inherit packagegroup

PACKAGES = "\
    packagegroup-sca-jtnc \
    "

PROVIDES = "${PACKAGES}"

SUMMARY_packagegroup-sca-jtnc = "Basic packages for the SCA JTNC Core Framework"
RDEPENDS_packagegroup-sca-jtnc = "\
    sca-jtnc \
    "

