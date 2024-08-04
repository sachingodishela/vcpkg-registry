vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sachingodishela/glu
    REF 32a162686d37f089570aeef637b681017a65ec2c
    SHA512 57b2c1865eaaf75a2830e2a0ed0317ecdd4f6df3725add93426df790ea753715fe355f32f9cf5a1f85fc4c72ea4bf7ed14d036ac7bf0e5646b12a9f556f9f991
)


vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

# vcpkg_cmake_config_fixup(PACKAGE_NAME "glu")

# file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

# file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
# configure_file("${CMAKE_CURRENT_LIST_DIR}/usage" "${CURRENT_PACKAGES_DIR}/share/${PORT}/usage" COPYONLY)