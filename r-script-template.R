################################################################################
# Script name: r-script-template.R
# Purpose:
# Author: 
# Date Created: YYYY-MM-DD
# Copyright (c) Phillip Hungerford, 2020
# Email: phillip.hungerford@gmail.com
################################################################################
# Notes:
#
#
################################################################################
# set working directory for Mac and PC
#setwd("~/Google Drive/")
#setwd("C:/Users/Phillip/Google Drive/")
################################################################################
options(scipen = 6, digits = 4) 
#memory.limit(30000000)
################################################################################
# Dependencies: 
# require(tidyverse)
# require(data.table)
# source("functions/packages.R")       # loads up all the packages we need

# Alternatively for packages
fLoadPackages <- function(...) {
	
	#'''
	# Purpose: Loads packages for user, if package not detected will install 
	# Inputs: List of packages
	# Outputs: Nothing
	# Example: fLoadPackages('odbc','RODBC','DBI','tidyverse')
	# '''
	libs <- unlist(list(...))
    req <- unlist(lapply(X = libs, FUN = require, character.only=TRUE))
    need <- libs[req==FALSE]
    
    if(length(need)>0){ 
        install.packages(need)
        lapply(need,require,character.only=TRUE)
    }
}

################################################################################
# Level 1
#===============================================================================
# Level 2
#-------------------------------------------------------------------------------
# Level 3
#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Level 4
################################################################################
# Example
#===============================================================================
fExampleFunction() <- function(){
    
    #'''
    # Purpose:
	# Inputs:
	# Outputs:
	# Example: 
	# '''
	
	#---------------------------------------------------------------------------
	# Step 1
	
	#---------------------------------------------------------------------------
	# Step 2
	
	#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	# Step 2a
	
	#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	# Step 2b
	
	#---------------------------------------------------------------------------
	# Step 3
	
}

################################################################################
##################################### END ######################################
################################################################################
