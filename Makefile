include nrmk_tools/Makefile.maketools

### Build flags for all targets.
#
CF_ALL = -g -Wall
LF_ALL =
LL_ALL =

### Build tools
CC         = ./build/ccd-gcc
# INST       = ./build/install
COMP       = $(CC) $(CF_ALL) $(CF_TGT) -o $@ -c $<
LINK       = $(CC) $(LF_ALL) $(LF_TGT) -o $@ $(filter-out $(MAKEFILE_LIST),$^) $(LL_TGT) $(LL_ALL)
COMPLINK   = $(CC) $(CF_ALL) $(CF_TGT) $(LF_ALL) $(LF_TGT) -o $@ $< $(LL_TGT) $(LL_ALL)

GREET_MODULE := EnglishGreet
RECIP_MODULE := EnglishRecipient
INTRO_MODULE := Introduction

### Standard parts
#
$(call nrmk_include)
