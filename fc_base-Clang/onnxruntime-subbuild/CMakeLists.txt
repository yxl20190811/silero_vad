# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.1-msvc1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(onnxruntime-populate NONE)



include(ExternalProject)
ExternalProject_Add(onnxruntime-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "TRUE" "URL" "https://github.com/microsoft/onnxruntime/releases/download/v1.12.0/onnxruntime-win-x64-1.12.0.zip" "URL_HASH" "SHA256=8b5d61204989350b7904ac277f5fbccd3e6736ddbb6ec001e412723d71c9c176"
                    SOURCE_DIR          "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/onnxruntime-src"
                    BINARY_DIR          "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/onnxruntime-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


