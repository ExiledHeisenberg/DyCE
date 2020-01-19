# DyCE - Dynamic Convoy Event
###### Created by TheOneWhoKnocks

DyCE is random convoy generator designed to be easy to install into any 
mission for Arma 3.  It currently requires Exile to be fully functional


**NOTE**: This system has been developed from several other scripts that were abandoned and built into this one system.
This means there are still some weird bits of code that I am working out.  Please be patient as I work through this system


### Releases

*0.9* - Initial release

This is the beta release of the DyCE (Dynamic Convoy Event).  This version is being released for expanded testing and while 
functional, still has some issues to be addressed.



#### Installation (EXILE)

To install the system, you must modify the following files with the content in this download.  

1. Extract the files into your mission file \addon directory.  (Create this directory if it does not exist)
The full path will be _Exile.(missionMapName)\addons\DyCE and all folders and files will be located here


2. *DESCRIPTION.EXT* - Check to see if you already have a section in your file that looks like this:

```
class CfgFunctions
{
	(SOME CODE)
};
```

Check any files that are added using an "#include" statement
If you do please follow instructions labeled EXSITING CFG SECTION
otherwise follow the instructions labeled CLEAN INSTALL


> **EXSITING CFG SECTION**
Modify your section as follows:

```
class CfgFunctions
{
	(SOME EXISTING CODE, ADD THIS AFTER...)

	// Add functions for DycE
	#include "addons\DyCE\cfgFunctions.hpp"
	
	
};	(BUT BEFORE THIS ENDING BRACKET)
```
END SECTION, GO TO STEP 3

> **CLEAN INSTALL**

Modify this file as follows:
A) Near the top of your file you will see a section like this:

```
#define true 1
#define false 0
// Required for the XM8, do not remove!
#include "RscDefines.hpp"

Add this to the next line and save your file

#include "addons\DyCE\DyCE.hpp"
```

3. *INITSERVER.SQF* - Modify this file by adding the contents of SetupFiles\InitServer.sqf to the end of your file.

 
#### Configuration (EXILE)

ConfigDyCE.sqf - Main configuration file for the system.  Read the comments and don't touch things that you don't understand.

ConvoyConfig.sqf - Defines the composition of the convoys.  Please see the included example on how to create your own files

LootConfig.sqf - Defines the loot and the default equipment used when creating the AI.


#### Known issues

- [ ] Sometimes convoys crash - Yeah, Arma logic is tricky.  I'll keep playing with it but things are far from perfect

- [ ] Players don't get respect for kills - Yeah, this is a lot of programming for little payoff.  I'll work on it over time

