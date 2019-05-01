#
# This file is protected by Copyright. Please refer to the COPYRIGHT file 
# distributed with this source distribution.
# 
# This file is part of SCA-JTNC core.
# 
# SCA-JTNC core is free software: you can redistribute it and/or modify it under 
# the terms of the GNU Lesser General Public License as published by the Free 
# Software Foundation, either version 3 of the License, or (at your option) any 
# later version.
# 
# SCA-JTNC core is distributed in the hope that it will be useful, but WITHOUT 
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS 
# FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more
# details.
# 
# You should have received a copy of the GNU Lesser General Public License 
# along with this program.  If not, see http://www.gnu.org/licenses/.
#

if [ "X$SCAHOME" = X ] ; then
    export SCAHOME=SCAHOME_BB
    if [ "X$PATH" != X ]; then
        PATH=:${PATH}
    fi
    export PATH=${SCAHOME}/bin${PATH}
    if [ "X$LD_LIBRARY_PATH" != X ]; then
        LD_LIBRARY_PATH=:${LD_LIBRARY_PATH}
    fi
    export LD_LIBRARY_PATH=${SCAHOME}/lib:${SCAHOME}/lib64${LD_LIBRARY_PATH}
    if [ "X$PKG_CONFIG_PATH" != X ]; then
        PKG_CONFIG_PATH=:${PKG_CONFIG_PATH}
    fi
    export PKG_CONFIG_PATH=${SCAHOME}/lib/pkgconfig:${SCAHOME}/lib64/pkgconfig${PKG_CONFIG_PATH}
    if [ "X$PYTHONPATH" != X ]; then
        PYTHONPATH=:${PYTHONPATH}
    fi
    export PYTHONPATH=${SCAHOME}/lib64/python:${SCAHOME}/lib/python${PYTHONPATH}
fi
if [ "X$LD_LIBRARY_PATH" = X ] ; then
    export LD_LIBRARY_PATH=${SCAHOME}/lib64
fi
