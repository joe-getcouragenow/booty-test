# MUST have for Windows CI to work..
.DEFAULT_GOAL       := all

BOOTY_FSPATH=./../booty
include $(BOOTY_FSPATH)/*.mk

all: print dep example-build

print:
	@echo -- OS --
	$(MAKE) os-print
	@echo

dep:
	@echo dep
	# TODO: should call dep and do nothing because parent make already did all deps.

example-build:
	cd ./example && $(MAKE) all


