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

# This class uses the sca-jtnc sca-convert utility to patch a REDHAWK project to
# SCA 4.1 specifications and regenerate base classes.

inherit sca-jtnc-env

# S is usually set to the implementation source path, so the XML is in the parent.
# This task looks in the parent for the XML and patches it with sca-convert.  It then
# runs sca-codegen.
do_sca_convert () {
    export PYTHONPATH=${SCAHOME_STAGED_NATIVE}/lib/python:${PYTHONPATH}
    bbdebug "Converting component XML to SCA 4.x"
    ${SCAHOME_STAGED_NATIVE}/bin/sca-convert ${S}/..
    bbdebug "Running SCA codegen to rebuild base classes"
    ${SCAHOME_STAGED_NATIVE}/bin/sca-codegen ${S}/..
}
addtask sca_convert after do_patch before do_configure
