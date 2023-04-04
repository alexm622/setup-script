# Setup Scripts/configs
---
This consists of all of the setup scripts and configs related to getting started on a new os 


## Branches Overview

### Master:
master branch serves as a base source for all configs. the configs contained within should be non-OS specific, and utilize minimal scripts. this should be configs and any other ambiguous setups that are identical no matter the distro.

### configs_only:
this is just the configs folder, nothing else.

## Current distros
Each distro has a branch corresponding to it, these branches contain OS-specific configs, scripts, and configs
### FreeBSD
the most complete set of scripts and configs currently in this repo, this was the OG setup script, as shown by the first 35-ish commits, it was later in 5ee3124 that this was updated
### Asahi
Asahi linux configs, this is a current WIP as new things are found along the way in the process of using Asahi. the scripts are still the same as from when it was branched off of FreeBSD setup script, but the plan is to migrate it towards its own set of setup stuff
