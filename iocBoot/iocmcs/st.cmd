#!../../bin/linux-x86_64/mcs

#- You may have to change mcs to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/mcs.dbd",0,0)
mcs_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/mcs.db","user=hxu")

iocInit()

## Start any sequence programs
#seq sncmcs,"user=hxu"
