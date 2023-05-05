# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/gflags-src"
  "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/gflags-build"
  "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/gflags-subbuild/gflags-populate-prefix"
  "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/gflags-subbuild/gflags-populate-prefix/tmp"
  "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/gflags-subbuild/gflags-populate-prefix/src/gflags-populate-stamp"
  "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/gflags-subbuild/gflags-populate-prefix/src"
  "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/gflags-subbuild/gflags-populate-prefix/src/gflags-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/gflags-subbuild/gflags-populate-prefix/src/gflags-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/Git/BossDictation/whisper/silero_vad/fc_base-Clang/gflags-subbuild/gflags-populate-prefix/src/gflags-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
