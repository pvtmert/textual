#!/bin/sh

set -e

ICL_PRODUCT_LOCATION="${CODESIGNING_FOLDER_PATH}"
ICL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_LOCATION}/Contents/MacOS/${EXECUTABLE_NAME}"

# Core Media
cd "${PROJECT_DIR}/Extensions/Core Media/"

xcodebuild -target "Core Media" \
 -configuration "${ICL_EXTENSION_BUILD_SCHEME}" \
 CODE_SIGN_IDENTITY="${CODE_SIGN_IDENTITY}" \
 DEVELOPMENT_TEAM="${DEVELOPMENT_TEAM}" \
 PROVISIONING_PROFILE_SPECIFIER="" \
 TEXTUAL_PRODUCT_LOCATION="${TEXTUAL_PRODUCT_LOCATION}" \
 TEXTUAL_PROJECT_DIR="${TEXTUAL_PROJECT_DIR}"
