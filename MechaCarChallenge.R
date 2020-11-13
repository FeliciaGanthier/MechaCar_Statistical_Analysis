library(dplyr)
read.csv(C:\Users\Felicia Ganthier\Desktop\Data Camp\Challenges\Challenge 15\MechaCar_mpg.csv)
read.csv(C:\\Users\\Felicia Ganthier\\Desktop\\Data Camp\\Challenges\\Challenge 15\\MechaCar_mpg.csv), header=TRUE
read.csv("C:\\Users\\Felicia Ganthier\\Desktop\\Data Camp\\Challenges\\Challenge 15\\MechaCar_mpg.csv", header=TRUE)
data.frame(MechaCar_mpg)
?lm()
lm(mpgvehicle_length)
lm(mpg~vehicle_length + vehicle_width + spoiler_angle + ground_clearance + AWD, data = Mechacar_mpg)
View(MechaCar_mpg)
library(dplyr)
MechaCar<-read.csv(file = 'MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
Mecha_lm<- lm(mpg~vehicle_lenght + vehicle_weight + spoiler_angle + groun_clearance +AWD, data =MechaCar)
Mecha_lm<- lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + groun_clearance +AWD, data =MechaCar)
R version 4.0.3 (2020-10-10) -- "Bunny-Wunnies Freak Out"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)
R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.
Natural language support but running in an English locale
R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.
Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.
[Workspace loaded from C:/Users/Felicia Ganthier/Desktop/Data Camp/Challenges/Challenge 15/.RData]
> library(dplyr)
> MechaCar<-read.csv(file = 'MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
>
  Mecha_lm<- lm(mpg~vehicle_lenght + vehicle_weight + spoiler_angle + groun_clearance +AWD, data =MechaCar)
Error in eval(predvars, data, env) : object 'vehicle_lenght' not found
> Mecha_lm<- lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD, data =MechaCar)
#Deliverable 1
#Load the dplyr package
library(dplyr)
#Read the MechaCar_mpg.csv as a dataframe
MechaCar<-read.csv(file = 'MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
#Perform the linear regression using lm()function passing all six variables with mpg as the y axis
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)
#Use the summary() function to determine the p-value and the r-squared value and save code to GitHub
summary(Mecha_lm)
#Deliverable 2
#Read the Suspension_Coil.csv file
Suspension<-read.csv(file = 'Suspension_coil.csv',check.names = F,stringsAsFactors = F)
#Create a total_summary dataframe using the summarize() function
#to get the mean, median, variance, and standard deviation of the PSI column
total_summary <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
#Create a lot_summary dataframe using groupby() and summarize() functions
lot_summary <-Suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
#Deliverable 3
#Using t.test() function
#Using t.test() function to determine if the PSI across all lots is
#statistically different from the population mean of 1500 ppsi
#First test all lots
t.test(Suspension$PSI,mu=1500)
#Load the dplyr package
library(dplyr)
#Read the MechaCar_mpg.csv
MechaCar<-read.csv(file = 'MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
#Linear regression using lm()function passing all six variables
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)
#Summary() function to determine the p-value and the r-squared value
summary(Mecha_lm)
#Read the Suspension_Coil.csv file
Suspension<-read.csv(file = 'Suspension_coil.csv',check.names = F,stringsAsFactors = F)
#Total_summary dataframe with summarize() function
#to get the mean, median, variance, and standard deviation of the PSI column
total_summary <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
#Lot_summary dataframe with groupby() and summarize() functions
lot_summary <-Suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
#t.test() function to determine PSI
#Test for lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
#Test for Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
#Test for Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
