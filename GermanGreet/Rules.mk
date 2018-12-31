$(info Including GermanGreet/Rules.mk)

# Standard things

# Subdirectories, in random order

# Local variables

OBJS_$(nrmk_dir)	:= $(nrmk_dir)/greeting.o

DEPS_$(nrmk_dir)	:= $(OBJS_$(nrmk_dir):%=%.d)

CLEAN			:= $(CLEAN) $(OBJS_$(nrmk_dir)) $(DEPS_$(nrmk_dir)) \
			$(nrmk_dir)/hallo.o

# Local Rules

$(OBJS_$(nrmk_dir)):	CF_TGT := -I$(nrmk_dir)

$(OBJS_$(nrmk_dir)):	$(nrmk_fragment)

.INTERMEDIATE:		$(nrmk_dir)/hallo.o
$(OBJS_$(nrmk_dir)):	$(nrmk_dir)/hallo.o
	mv $< $@

# Standard things

-include $(DEPS_$(nrmk_dir))
