### Build Options ###

# Override these options in settings.mk or with `make SETTING=value'.

BASEROM = baserom.z64
TARGET = papermario
COMPARE = 1
NON_MATCHING = 0
WATCH_INCLUDES = 1

-include settings.mk

# Fail early if baserom does not exist
ifeq ($(wildcard $(BASEROM)),)
$(error Baserom `$(BASEROM)' not found.)
endif

# NON_MATCHING=1 implies COMPARE=0
ifeq ($(NON_MATCHING),1)
override COMPARE=0
endif

# PERMUTER=1 implies WATCH_INCLUDES=0
ifeq ($(PERMUTER),1)
override WATCH_INCLUDES=0
endif


### Output ###

BUILD_DIR := build
ROM := $(TARGET).z64
ELF := $(BUILD_DIR)/$(TARGET).elf
LD_SCRIPT := $(TARGET).ld
LD_MAP := $(BUILD_DIR)/$(TARGET).map
ASSETS_BIN := $(BUILD_DIR)/bin/assets/assets.bin


### Tools ###

PYTHON := python3
N64CKSUM := tools/n64crc
SPLAT_YAML := tools/splat.yaml
SPLAT = $(PYTHON) tools/n64splat/split.py $(BASEROM) $(SPLAT_YAML) .
YAY0COMPRESS = tools/Yay0compress
EMULATOR = mupen64plus


### Compiler Options ###

CROSS := mips-linux-gnu-
AS := $(CROSS)as
OLD_AS := tools/mips-nintendo-nu64-as
CC := tools/cc1
CPP := cpp
LD := $(CROSS)ld
OBJCOPY := $(CROSS)objcopy

CPPFLAGS   := -Iinclude -Isrc -D _LANGUAGE_C -ffreestanding -DF3DEX_GBI_2 -D_MIPS_SZLONG=32 -Wundef -Wcomment
ASFLAGS    := -EB -Iinclude -march=vr4300 -mtune=vr4300
OLDASFLAGS := -EB -Iinclude -G 0
CFLAGS     := -O2 -quiet -G 0 -mcpu=vr4300 -mfix4300 -mips3 -mgp32 -mfp32 -Wimplicit -Wuninitialized -Wshadow
LDFLAGS    := -T undefined_syms.txt -T undefined_funcs.txt -T $(BUILD_DIR)/$(LD_SCRIPT) -Map $(LD_MAP) --no-check-sections

ifeq ($(WATCH_INCLUDES),1)
CPPMFLAGS   = -MP -MD -MF $@.mk -MT $(BUILD_DIR)/$*.d
MDEPS       = $(BUILD_DIR)/%.d
endif

ifeq ($(NON_MATCHING),1)
CPPFLAGS += -DNON_MATCHING
endif


### Sources ###

include sources.mk

%.d: ;

ifeq ($(WATCH_INCLUDES),1)
-include $(foreach obj, $(OBJECTS), $(obj).mk)
endif


### Targets ###

clean:
	rm -rf $(BUILD_DIR)

clean-code:
	rm -rf $(BUILD_DIR)/src

setup: clean submodules split
	make -C tools

submodules:
	git submodule update --init --recursive

split:
	rm -rf bin img
	$(SPLAT) --modes ld bin Yay0 PaperMarioMapFS img

split-%:
	$(SPLAT) --modes ld $*

split-all:
	rm -rf bin img
	$(SPLAT) --modes all

test: $(ROM)
	$(EMULATOR) $<

# Compressed files
%.Yay0: %
	@mkdir -p $(shell dirname $@)
	$(YAY0COMPRESS) $< $@
$(BUILD_DIR)/%.bin.Yay0: %.bin
	@mkdir -p $(shell dirname $@)
	$(YAY0COMPRESS) $< $@

# Data objects
$(BUILD_DIR)/%.bin.o: %.bin
	@mkdir -p $(shell dirname $@)
	$(LD) -r -b binary -o $@ $<

# Compressed data objects
$(BUILD_DIR)/%.Yay0.o: $(BUILD_DIR)/%.bin.Yay0
	@mkdir -p $(shell dirname $@)
	$(LD) -r -b binary -o $@ $<

# Compile C files
$(BUILD_DIR)/%.c.o: %.c $(MDEPS) | include/ld_addrs.h
	@mkdir -p $(shell dirname $@)
	$(CPP) $(CPPFLAGS) -o - $(CPPMFLAGS) $< | iconv --from UTF-8 --to SHIFT-JIS | $(CC) $(CFLAGS) -o - | $(OLD_AS) $(OLDASFLAGS) -o $@ -

# Compile C files (with DSL macros)
$(foreach cfile, $(DSL_C_FILES), $(BUILD_DIR)/$(cfile).o): $(BUILD_DIR)/%.c.o: %.c $(MDEPS) tools/compile_dsl_macros.py | include/ld_addrs.h
	@mkdir -p $(shell dirname $@)
	$(CPP) $(CPPFLAGS) -o - $< $(CPPMFLAGS) | $(PYTHON) tools/compile_dsl_macros.py | iconv --from UTF-8 --to SHIFT-JIS | $(CC) $(CFLAGS) -o - | $(OLD_AS) $(OLDASFLAGS) -o $@ -

# Assemble handwritten ASM
$(BUILD_DIR)/%.s.o: %.s
	@mkdir -p $(shell dirname $@)
	$(AS) $(ASFLAGS) -o $@ $<

# Images
$(BUILD_DIR)/%.png.o: $(BUILD_DIR)/%.png
	$(LD) -r -b binary -o $@ $<
$(BUILD_DIR)/%.rgba16.png: %.png
	@mkdir -p $(shell dirname $@)
	$(PYTHON) tools/convert_image.py rgba16 $< $@ $(IMG_FLAGS)
$(BUILD_DIR)/%.rgba32.png: %.png
	@mkdir -p $(shell dirname $@)
	$(PYTHON) tools/convert_image.py rgba32 $< $@ $(IMG_FLAGS)
$(BUILD_DIR)/%.ci8.png: %.png
	@mkdir -p $(shell dirname $@)
	$(PYTHON) tools/convert_image.py ci8 $< $@ $(IMG_FLAGS)
$(BUILD_DIR)/%.ci4.png: %.png
	@mkdir -p $(shell dirname $@)
	$(PYTHON) tools/convert_image.py ci4 $< $@ $(IMG_FLAGS)
$(BUILD_DIR)/%.palette.png: %.png
	@mkdir -p $(shell dirname $@)
	$(PYTHON) tools/convert_image.py palette $< $@ $(IMG_FLAGS)
$(BUILD_DIR)/%.ia4.png: %.png
	@mkdir -p $(shell dirname $@)
	$(PYTHON) tools/convert_image.py ia4 $< $@ $(IMG_FLAGS)
$(BUILD_DIR)/%.ia8.png: %.png
	@mkdir -p $(shell dirname $@)
	$(PYTHON) tools/convert_image.py ia8 $< $@ $(IMG_FLAGS)
$(BUILD_DIR)/%.ia16.png: %.png
	@mkdir -p $(shell dirname $@)
	$(PYTHON) tools/convert_image.py ia16 $< $@ $(IMG_FLAGS)
$(BUILD_DIR)/%.i4.png: %.png
	@mkdir -p $(shell dirname $@)
	$(PYTHON) tools/convert_image.py i4 $< $@ $(IMG_FLAGS)
$(BUILD_DIR)/%.i8.png: %.png
	@mkdir -p $(shell dirname $@)
	$(PYTHON) tools/convert_image.py i8 $< $@ $(IMG_FLAGS)

ASSET_FILES := $(foreach asset, $(ASSETS), $(BUILD_DIR)/bin/assets/$(asset))
YAY0_ASSET_FILES := $(foreach asset, $(filter-out %_tex, $(ASSET_FILES)), $(asset).Yay0)

$(BUILD_DIR)/bin/assets/%: bin/assets/%.bin
	@mkdir -p $(shell dirname $@)
	@cp $< $@

$(ASSETS_BIN): $(ASSET_FILES) $(YAY0_ASSET_FILES) sources.mk
	@mkdir -p $(shell dirname $@)
	@echo "building $@"
	@$(PYTHON) tools/build_assets_bin.py $@ $(ASSET_FILES)

$(ASSETS_BIN:.bin=.o): $(ASSETS_BIN)
	$(LD) -r -b binary -o $@ $<

$(LD_SCRIPT): $(SPLAT_YAML)
	$(SPLAT) --modes ld

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	@mkdir -p $(shell dirname $@)
	$(CPP) -P -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(ROM): $(BUILD_DIR)/$(TARGET).bin
	@cp $< $@
ifeq ($(COMPARE),1)
	@sha1sum -c checksum.sha1 || (echo 'The build succeeded, but did not match the base ROM. This is expected if you are making changes to the game. To skip this check, use "make COMPARE=0".' && false)
endif

$(BUILD_DIR)/$(TARGET).elf: $(BUILD_DIR)/$(LD_SCRIPT) $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@

$(BUILD_DIR)/$(TARGET).bin: $(BUILD_DIR)/$(TARGET).elf
	$(OBJCOPY) $< $@ -O binary

include/ld_addrs.h: $(BUILD_DIR)/$(LD_SCRIPT)
	grep -E "[^ ]+ =" $< -o | sed 's/^/extern void* /; s/ =/;/' > $@

### Make Settings ###

.PHONY: clean test setup submodules split $(ROM)
.DELETE_ON_ERROR:
.SECONDARY:
.PRECIOUS: $(ROM) %.Yay0
.DEFAULT_GOAL := $(ROM)

# Remove built-in implicit rules to improve performance
MAKEFLAGS += --no-builtin-rules

# Fail targets if any command in the pipe exits with error
SHELL = /bin/bash -e -o pipefail
