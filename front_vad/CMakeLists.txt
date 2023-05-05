add_library(front_vad STATIC denoiser.cc resampler.cc sample_queue.cc)
target_link_libraries(front_vad PUBLIC glog samplerate rnnoise)
