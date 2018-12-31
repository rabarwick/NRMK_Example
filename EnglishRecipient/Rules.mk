$(info Including EnglishRecipient/Rules.mk)

# Standard things

# Subdirectories, in random order

# Local variables

OBJS_$(nrmk_dir)	:= $(nrmk_dir)/recipient.o

DEPS_$(nrmk_dir)	:= $(OBJS_$(nrmk_dir):%=%.d)

CLEAN			:= $(CLEAN) $(OBJS_$(nrmk_dir)) $(DEPS_$(nrmk_dir))

# Local Rules

$(OBJS_$(nrmk_dir)):	CF_TGT := -I$(nrmk_dir)

$(OBJS_$(nrmk_dir)):	$(nrmk_fragment)

$(OBJS_$(nrmk_dir)):	$(nrmk_dir)/recipient.c

# Standard things

-include $(DEPS_$(nrmk_dir))
