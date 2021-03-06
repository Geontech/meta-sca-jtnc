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

SUMMARY = "Console-only image with the SCA JTNC Core Framework installed"

LICENSE = "LGPL-3.0"

# Both files re-used from Philip Balister @ Ettus Research
require version-image.inc
require native-sdk.inc

# Removed tools-sdk debug-tweaks dev-pkgs tools-debug 
IMAGE_FEATURES += " \
    splash ssh-server-openssh \
    "

EXTRA_IMAGE_FEATURES += "package-management"

CORE_IMAGE_EXTRA_INSTALL += "packagegroup-sca-jtnc"

inherit core-image
