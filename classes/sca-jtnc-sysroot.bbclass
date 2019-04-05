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
