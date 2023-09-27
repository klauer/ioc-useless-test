#!../../bin/rhel7-x86_64/newtest
#- You may have to change test to something else
#- everywhere it appears in this file

< envPaths

## Register all support components
dbLoadDatabase "../../dbd/test.dbd"
test_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("missing_dbfile.db","user=klauer")
dbLoadRecords("test.db","user=klauer")

iocInit

cd $(TOP)
dbl

## Start any sequence programs
#seq sncxxx,"user=klauer"
