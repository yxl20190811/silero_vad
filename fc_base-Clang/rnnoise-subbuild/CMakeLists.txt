# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.1-msvc1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(rnnoise-populate NONE)



include(ExternalProject)
ExternalProject_Add(rnnoise-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "TRUE" "URL" "https://github.com/werman/noise-suppression-for-voice/archive/refs/tags/v1.03.tar.gz" "URL_HASH" "SHA256=8c85cae3ebbb3a18facc38930a3b67ca90e3ad609526a0018c71690de35baf04"
                    SOURCE_DIR          "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/rnnoise-src"
                    BINARY_DIR          "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/rnnoise-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


