// COMPONENT should be defined in the script_component.hpp and included BEFORE this hpp
#define MAINPREFIX z
#define PREFIX abc

#include "script_version.hpp"

#define VERSION     MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_STR MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR  MAJOR,MINOR,PATCHLVL,BUILD

// MINIMAL required version for the Mod. Components can specify others..
#define REQUIRED_VERSION 2.12

#ifdef COMPONENT_BEAUTIFIED
    #define COMPONENT_NAME QUOTE(Brush Clearing - COMPONENT_BEAUTIFIED)
#else
    #define COMPONENT_NAME QUOTE(Brush Clearing - COMPONENT)
#endif
