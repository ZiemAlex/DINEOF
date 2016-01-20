#
# Include file for MIPSpro Fortran compiler on IRIX
#


F90C := f90
F90FLAGS := 
LD := $(F90C)
LDFLAGS := 

ifeq ($(FORMAT),little_endian)
error:
	echo "Error: machine format little_endian not available."; exit 1
endif  

ifdef DEBUG
  F90FLAGS += -g
else
  F90FLAGS += -O3
endif

ifdef DOUBLEPREC
  F90FLAGS += -r8 -DDOUBLE_PRECISION
endif


#==========================================================================
# Library locations
#==========================================================================

#==========================================================================
# Locations of the ARPACK library
# This directory should contains a file usually called libarpack.a
#==========================================================================

ARPACK_LIB ?=

#==========================================================================
# Locations of the NetCDF library
# This directory should contains a file usually called libnetcdf.a
#==========================================================================

NETCDF_LIB ?=

#==========================================================================
# This directory should contains a file usually called netcdf.inc and 
# netcdf.mod
#==========================================================================

NETCDF_INC ?=

#==========================================================================
# All include options
#==========================================================================

INCLUDES = -I$(NETCDF_INC)

#==========================================================================
# All library link options
#==========================================================================

LIBRARIES = -L$(ARPACK_LIB) -larpack -llapack -lblas -L$(NETCDF_LIB) -lnetcdf


