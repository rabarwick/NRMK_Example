$(info Including Introduction/Rules.mk)

# Standard things

# Subdirectories, in random order

# Local variables

OBJS_$(nrmk_dir)	:= $(nrmk_dir)/introduction.o

DEPS_$(nrmk_dir)	:= $(OBJS_$(nrmk_dir):%=%.d)

CLEAN			:= $(CLEAN) $(OBJS_$(nrmk_dir)) $(DEPS_$(nrmk_dir))

# Local Rules

$(OBJS_$(nrmk_dir)):	CF_TGT := -I$(nrmk_dir) -I$(GREET_MODULE) -I$(RECIP_MODULE)

$(OBJS_$(nrmk_dir)):	$(nrmk_fragment)

targets:	hello_world

hello_world::	Makefile $(INTRO_MODULE)/introduction.o \
		$(GREET_MODULE)/greeting.o $(RECIP_MODULE)/recipient.o
	$(LINK)

# Standard things

-include $(DEPS_$(nrmk_dir))
