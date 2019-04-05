# Set install location SCAHOME and SCAROOT
SCAHOME = "${prefix}/sca/core"
SCAROOT = "${localstatedir}/sca/sdr"

# STAGED Versions of these variables (where machine-specific versions are temporarily held,
# libs, etc.)
SCAHOME_STAGED="${STAGING_DIR_TARGET}${SCAHOME}"
SCAROOT_STAGED="${STAGING_DIR_TARGET}${SCAROOT}"

SCAHOME_STAGED_NATIVE="${STAGING_DIR_NATIVE}${SCAHOME}"
SCAROOT_STAGED_NATIVE="${STAGING_DIR_NATIVE}${SCAROOT}"
