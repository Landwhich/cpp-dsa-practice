CXX = clang++

VULKAN_SDK = $(HOME)/VulkanSDK/1.4.341.1/macOS
BREW_PREFIX = /opt/homebrew

CFLAGS = \
	-std=c++17 \
	-O2 \
	-I$(VULKAN_SDK)/include \
	-I$(BREW_PREFIX)/include

LDFLAGS = \
	-L$(VULKAN_SDK)/lib \
	-L$(BREW_PREFIX)/lib \
	-Wl,-rpath,$(VULKAN_SDK)/lib \
	-lglfw \
	-lvulkan \
	-framework Cocoa \
	-framework Metal \
	-framework QuartzCore \
	-framework IOKit \
	-framework CoreVideo

export VK_ICD_FILENAMES = $(VULKAN_SDK)/share/vulkan/icd.d/MoltenVK_icd.json
export VK_LAYER_PATH = $(VULKAN_SDK)/share/vulkan/explicit_layer.d

TARGET = VulkanTest

$(TARGET): main.cpp
	$(CXX) $(CFLAGS) -o $(TARGET) main.cpp $(LDFLAGS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: run clean
