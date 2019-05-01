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

# Set install location SCAHOME and SCAROOT
SCAHOME = "${prefix}/sca/core"
SCAROOT = "${localstatedir}/sca/sdr"

# STAGED Versions of these variables (where machine-specific versions are temporarily held,
# libs, etc.)
SCAHOME_STAGED="${STAGING_DIR_TARGET}${SCAHOME}"
SCAROOT_STAGED="${STAGING_DIR_TARGET}${SCAROOT}"

SCAHOME_STAGED_NATIVE="${STAGING_DIR_NATIVE}${SCAHOME}"
SCAROOT_STAGED_NATIVE="${STAGING_DIR_NATIVE}${SCAROOT}"
