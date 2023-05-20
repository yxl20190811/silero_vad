// Copyright (c) 2022 Zhendong Peng (pzd17@tsinghua.org.cn)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Copyright (c) 2017 Personal (Binbin Zhang)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "front_vad/sample_queue.h"

void SampleQueue::AcceptWaveform(const std::vector<float>& pcm) {
  for (auto p : pcm) {
    queue_.push(p);
  }
}

bool SampleQueue::Read(int num_samples, std::vector<float>* samples) {
  samples->clear();
  if (queue_.size() >= num_samples) {
    for (int i = 0; i < num_samples; i++) {
      samples->emplace_back(queue_.front());
      queue_.pop();
    }
    return true;
  } else {
    return false;
  }
}

void SampleQueue::Clear() { queue_.empty(); }
