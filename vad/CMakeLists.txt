add_library(vad STATIC onnx_model.cc vad_model.cc)
target_link_libraries(vad PUBLIC front_vad glog::glog onnxruntime)
target_include_directories(front_vad PUBLIC .)