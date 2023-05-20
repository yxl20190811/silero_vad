add_library(front_vad STATIC denoiser.cc resampler.cc sample_queue.cc)
target_link_libraries(front_vad PUBLIC SampleRate::samplerate glog::glog rnnoise)
target_include_directories(front_vad PUBLIC .)