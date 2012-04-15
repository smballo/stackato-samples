IMPORTANT NOTE - DEPRECATED
===========================

This repository has been deprecated as of April 15, 2012. All the individual
apps inside this repo have been moved into separate repos under
https://github.com/Stackato-Apps/

t checkout -- <file>Furthermore, this repo contains submodule pointers to all the new repos. You
can use it to clone all the repos into one place. Just run these commands:

    git submodule init
    git submodule sync
    git submodule update


Stackato Samples
================

The applications in this repository can all be run on ActiveState's
[Stackato](http://activestate.com/cloud) cloud hosting platform.

You'll need a Stackato VM and the stackato client for these
demos. Binaries for Windows, Mac OS X and Linux can be downloaded from
[community.activestate.com](http://community.activestate.com/stackato/download).

If you have ActivePython 2.7 or 3.2, the stackato client can alternatively be
installed using pypm:

    pypm install stackato
  
Specific instructions on configuring and pushing are in the README.md
file for each application, as the configuration steps differ slightly
for each one.
