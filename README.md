# NRMK_Example
Example of how Non-Recursive-Make-Tools can be used
This is an example of a hello world program which is split across different
modules to show how the Makefile.maketools in the Non-RecursiveMakeTools repo can
be used.
<p/>
The different modules are available in different (human) languages
selectable by the Top Level Makefile,
showing how modules can depend on top-level files or config.

After cloning this repo, pull in the NonRecursiveMakeTools repo by running
```
git submodule init
git submodule update
```
Running `make` will load in the Rules.mk fragments specificed in the Makefile and build only what is required to update the hello_world executable.
