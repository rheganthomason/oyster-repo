## aqua troll data 06-14-2022 (mesocosm test)
# load in all data
library(tidyverse)
setwd("~/Desktop/project catch all pt2/oyster proj")
raw.dir <- here::here("data")
sn811761 <- read.csv(here::here("data/sn811761.csv"), skip=25)
sn461132 <- read.csv(here::here("data/sn461132.csv"), skip=25)
sn788735 <- read.csv(here::here("data/sn788735.csv"), skip=25)
sn811737 <- read.csv(here::here("data/sn811737.csv"), skip=25)
sn461051 <- read.csv(here::here("data/sn461051.csv"), skip=25)
attach(sn461051)
attach(sn461132)
attach(sn788735)
attach(sn811737)
attach(sn811761)
# make df & combine data together in one set, change all column names to match, etc
thesenames <- c ("Date Time", "Actual Conductivity (µS/cm)", "Specific Conductivity (µS/cm)", "Salinity (PSU)", "Resistivity (Ω⋅cm)", "Density (g/cm³)", "Total Dissolved Solids (ppt)", "Chlorophyll-a Fluorescence (RFU)", "RDO Concentration (mg/L)", "RDO Saturation (%Sat)", "Oxygen Partial Pressure (Torr)", "pH", "pH mV", "ORP (mV)", "Temperature (°C)", "External Voltage (V)", "Battery Capacity (%)", "Barometric Pressure (mm Hg)", "Pressure (psi)", "Depth (m)", "new_col")
sn461051$new_col <- "461051"
sn461132$new_col <- "461132"
sn811761$new_col <- "811761"
sn811737$new_col <- "811737"
sn788735$new_col <- "788735"
names(sn461051) = thesenames
names(sn461132) = thesenames
names(sn811737) = thesenames
names(sn811761) = thesenames
names(sn788735) = thesenames
fulldata <- bind_rows(sn811737, sn461051, sn811761, sn461132, sn788735)
#start plottingggg
ggplot(data = fulldata, aes(`Date Time`, `pH`, group=new_col))+ geom_line(aes(color=new_col))+ 
  theme(axis.text.x = element_text(angle = 75, hjust=1, size = 7))+ 
  guides(color=guide_legend(title="Sonde"))
ggplot(data = fulldata, aes(`Date Time`, `Actual Conductivity (µS/cm)`, group=new_col))+ geom_line(aes(color=new_col))+ 
  theme(axis.text.x = element_text(angle = 75, hjust=1, size = 7))+ 
  guides(color=guide_legend(title="Sonde"))
ggplot(data = fulldata, aes(`Date Time`, `Salinity (PSU)`, group=new_col))+ geom_line(aes(color=new_col))+ 
  theme(axis.text.x = element_text(angle = 75, hjust=1, size = 7))+ 
  guides(color=guide_legend(title="Sonde"))
ggplot(data = fulldata, aes(`Date Time`, `Chlorophyll-a Fluorescence (RFU)`, group=new_col))+ geom_line(aes(color=new_col))+ 
  theme(axis.text.x = element_text(angle = 75, hjust=1, size = 7))+ 
  guides(color=guide_legend(title="Sonde"))
ggplot(data = fulldata, aes(`Date Time`, `RDO Saturation (%Sat)`, group=new_col))+ geom_line(aes(color=new_col))+ 
  theme(axis.text.x = element_text(angle = 75, hjust=1, size = 7))+ 
  guides(color=guide_legend(title="Sonde"))
ggplot(data = fulldata, aes(`Date Time`, `Temperature (°C)`, group=new_col))+ geom_line(aes(color=new_col))+ 
  theme(axis.text.x = element_text(angle = 75, hjust=1, size = 7))+ 
  guides(color=guide_legend(title="Sonde"))
