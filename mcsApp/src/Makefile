TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = mcs
# mcs.dbd will be created and installed
DBD += mcs.dbd

# mcs.dbd will be made up from these files:
mcs_DBD += base.dbd

# Include dbd files from all support applications:
mcs_DBD += asyn.dbd
mcs_DBD += busySupport.dbd
mcs_DBD += drvAsynIPPort.dbd drvAsynSerialPort.dbd
mcs_DBD += calc.dbd calcSupport.dbd
mcs_DBD += stream.dbd
mcs_DBD += asSupport.dbd
mcs_DBD += devIocStats.dbd
mcs_DBD += calcSupport.dbd
mcs_DBD += reccaster.dbd
mcs_DBD += motorSupport.dbd smaract.dbd

# Add all the support libraries needed by this IOC
mcs_LIBS += asyn busy calc  stream autosave devIocStats reccaster motor smaract

# mcs_registerRecordDeviceDriver.cpp derives from mcs.dbd
mcs_SRCS += mcs_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
mcs_SRCS_DEFAULT += mcsMain.cpp
mcs_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#mcs_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
mcs_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

