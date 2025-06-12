define HIREDIS_APPLY_PATCHES
    $(APPLY_PATCHES) $(@D) base_external/package/hiredis 0001-*.patch
endef

HIREDIS_PRE_CONFIGURE_HOOKS += HIREDIS_APPLY_PATCHES
