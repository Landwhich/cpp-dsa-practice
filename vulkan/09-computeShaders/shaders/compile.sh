export VXX=$HOME/VulkanSDK/1.4.341.1/macOS/bin/slangc

export VXXFLAGS=("
    -target spirv 
    -profile spirv_1_4 
    -emit-spirv-directly 
    -fvk-use-entrypoint-name 
    -entry vertMain 
    -entry fragMain
    -entry compMain
")

$VXX shaders/shader.slang $VXXFLAGS -o slang.spv
