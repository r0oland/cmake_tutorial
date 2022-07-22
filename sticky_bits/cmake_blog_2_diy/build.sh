cmake -S . -B build/debug -DCMAKE_BUILD_TYPE=DEBUG \
      -DCMAKE_TOOLCHAIN_FILE=toolchain-STM32F407.cmake --warn-uninitialized
cmake --build build/debug


cmake -S . -B build/release -DCMAKE_BUILD_TYPE=RELEASE \
      -DCMAKE_TOOLCHAIN_FILE=toolchain-STM32F407.cmake --warn-uninitialized
cmake --build build/release

