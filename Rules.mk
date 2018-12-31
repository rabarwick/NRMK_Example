$(info Including Rules.mk)
# Standard things

.SUFFIXES:
.SUFFIXES: .c .o

# all: hello_world
all: targets

# Subdirectories, in random order

$(call nrmk_include,$(GREET_MODULE))
$(call nrmk_include,$(RECIP_MODULE))
$(call nrmk_include,$(INTRO_MODULE))

# General directory independent rules

%.o:    %.c
	$(COMP)

%:      %.o
	$(LINK)

%:      %.c
	$(COMPLINK)


.PHONY:		targets

.PHONY:		clean
clean:
	rm -f $(CLEAN)
