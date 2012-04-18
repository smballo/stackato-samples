Stackato Samples
================

The applications in this repository can all be run on ActiveState's
[Stackato](http://activestate.com/stackato) cloud hosting platform.

Use the '--recursive' option when cloning this repository to include all
of the submodules. If you've already cloned it, run these commands:

    git submodule init
    git submodule sync
    git submodule update

The canonical repositories the submodules can be found in
[Stackato-Apps](https://github.com/Stackato-Apps/) which may
include recent changes not reflected here.

Using the Samples
-----------------
 
You'll need a [Stackato VM](http://www.activestate.com/stackato/get_stackato) or an account on a
Stackato PaaS and the [stackato client](http://www.activestate.com/stackato/download_client) to deploy
these demos.

If you have ActivePython 2.7 or 3.2, the stackato client can be
installed using pypm:

    pypm install stackato
  
Specific instructions on configuring and pushing are in the README.md
file for each application, as the configuration steps differ slightly
for each one.
