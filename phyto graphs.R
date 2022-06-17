## initial graphs
# import/attach files
attach(phyto2021)
# Taxa v SiteID
ggplot(data = phyto2021)+ geom_count(aes(SiteID, `Taxonomic Group`), color = "skyblue")
# Phytoplankton genus v SiteID
ggplot(data = phyto2021)+ geom_count(aes(SiteID, `Phytoplankton genus/descriptor`), color = "skyblue")
# Phyto count v Genus
ggplot(data = phyto2021) +
geom_line(aes(`Raw count C`, `Phytoplankton genus/descriptor`))
