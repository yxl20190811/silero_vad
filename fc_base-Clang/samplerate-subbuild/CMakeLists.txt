# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.25.1-msvc1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(samplerate-populate NONE)



include(ExternalProject)
ExternalProject_Add(samplerate-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "TRUE" "URL" "https://github.com/libsndfile/libsamplerate/archive/refs/tags/0.2.2.tar.gz" "URL_HASH" "SHA256=16e881487f184250deb4fcb60432d7556ab12cb58caea71ef23960aec6c0405a"
                    SOURCE_DIR          "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/samplerate-src"
                    BINARY_DIR          "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/samplerate-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


