include(vcpkg_common_functions)

vcpkg_download_distfile(ARCHIVE
    URLS "https://downloads.sourceforge.net/project/wtl/WTL%2010/WTL%2010.0.9163/WTL10_9163.zip"
    FILENAME "WTL10_9163.zip"
    SHA512 feb7fb1c456e44ad05610f31f8c0f964eb6ce3eadf65a389219051f0ea2547069727666616622631cd90e25ea4a682a7c88c7089a374181870717246ad44e035
)

vcpkg_extract_source_archive_ex(
    OUT_SOURCE_PATH SOURCE_PATH
    ARCHIVE ${ARCHIVE}
    NO_REMOVE_ONE_LEVEL
)

file(INSTALL ${SOURCE_PATH}/Include/ DESTINATION ${CURRENT_PACKAGES_DIR}/include/${PORT} FILES_MATCHING PATTERN "*.h")
file(COPY ${SOURCE_PATH}/Samples DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT})
file(COPY ${SOURCE_PATH}/AppWizard DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT})

file(INSTALL ${SOURCE_PATH}/MS-PL.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
