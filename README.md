TiDZYapDatabase
===============

Titanium Wrapper for DZYapDatabase. (**Exclusive Release for TiConf 2014 BLR**)

> YapDatabase is a "key/value store and MUCH MORE" built atop sqlite for iOS & Mac.  
> \- YapDatabase Main Repo

APIs
---
Check the example/app.js file for the various APIs, parameters, usage and remarks on the same.

DOWNLOAD
--------
You can download a compiled copy of the module from the Releases section. Minimum supported: iOS 7.

BUILDING
--------
If you'd like to tweak the module, after cloing the repo, you must initialize the submodules like so:

	git submodule init
	git submodule update

INSTALL YOUR MODULE
--------------------

1. Run `build.py` which creates your distribution
2. cd to `/Library/Application Support/Titanium`
3. copy this zip file into the folder of your Titanium SDK

REGISTER YOUR MODULE
---------------------

Register your module with your application by editing `tiapp.xml` and adding your module.
Example:

    <modules>
	    <module version=“1.1”>com.dezinezync.dzyapdatabase</module>
    </modules>

LICENSE
-------
TiDZYapDatabase is licensed under the MIT License. Check the License file for more information.
