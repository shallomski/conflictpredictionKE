old_packages<-installed.packages(lib.loc = "C:/Users/shallom/Documents/R/win-library/3.6/")
head(old_packages[,1])
.libPaths()
new_packages<-installed.packages()
missing_df<-as.data.frame(old_packages[!old_packages[,"Package"]%in% new_packages[,"Package"],])
missing_df
install.packages(missing_df$Package)
