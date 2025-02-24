data <- data.frame(
  ID = 1:10,
  Name = c("AAbid","Bassi","Chacha","Dayho","Eliza","Fakhir",
           "Gandhi","Hayrukuhai","Innita","Jaiswal"),
  Age = c(10,14,15,16,17,18,13,19,12,11),
  Salary = c(100,130,150,200,210,150,120,111,200,200),
  Department = c("Labor","Paisa","Chori","Chori","Chori",
                 "Chamkles","Labor","Labor","Chori","Labor"),
  Performance_Score = c(88,90,87,67,99,98,96,78,80,90)
)

data
#Filtering Rows: ####

##Base-R--------------
data[data$Age >14,]
data[data$Department=="Labor",]
#we can attach the data so that we can access to these column
attach(data)
data[Age >16,]
#attach() is not recommended
detach(data)
data[Age >16,]


##dplyr------------
#pipe operator (%>%) is part of magrittr package

round(mean(c(1,2,3,4,5,6.7)),1)
c(1,2,3,4,5,6.7) %>% 
  mean() %>%
  round(1)
#ctrl+shift+m = shortcut for pipe

#filtering using dplyr:


data %>% filter(Age>15)
data %>% filter(ID>4)
data %>% filter(Department == "Chori")
data %>% filter(Department == "Chori")
data %>% filter(Department == "Labor",Salary>150)
data %>% filter(Name %in% c("Jaiswal","Bassi"))

#Selecting Columns: ####
##base-R:---------------
data['ID']
data$ID
typeof(data['ID']) #BASICALLY DATAFRAME
typeof(data$ID) #basically a vector
data[c('Name','ID')]
data[,c('Name','ID')]  #prefereable
data[,c(1,2)]
data
data[,!(names(data) %in% c("Department"))]
data[,-5]

##dplyr:---------------
data %>% select(Name)
data %>% select(ID)
data %>% select(Name,Salary)
data %>% select(2,4)
data %>% select(-Department)
data %>% select(-5)
data %>%  select(starts_with("P"))
data %>%  select(ends_with("e"))
data %>%  select(contains("a"))
data %>%  select(contains("age"))
data %>% select(where(is.numeric))
data %>% select(where(is.character))

data %>% slice(1:7)
data %>% slice(7)
data %>% slice_sample(n=4)


#Creating Columns:-------------------
##base-R:------------
data$Experience <- c(2,3,1,2,3,4,2,1,3,3)
data$NoChange <- 2
data
#always new column is inserting at the end 
data$Bonus <- data$Salary*data$Performance_Score*0.001
data

##dplyr:----------------------
data <- data %>% mutate(
  City=c("Dhaka","Sylhet","Dhaka","Sylhet","Dhaka","Sylhet","Dhaka","Sylhet","Dhaka","Sylhet")
  
  
)
data

#Removing Columns:------------------
##base-R-------------
data$NoChange <- NULL
data
##dplyr---------------
data <- data %>% select(-City)
data


#Editing Columns:-------------------
##base-R----------------
colnames(data)[which(colnames(data)=="Monthly Salary")] <- "Monthly_Salary"
data
data$Age <- data$Age+1
data
##dplyr------------------
data <- data %>% rename(Salary =Monthly_Salary) 
data
data %>% mutate(Age=Age+1)

#Editing Rows:-------------------
##base-R------------
data[data$Name == "Bassi" , "Performance_Score"] <- 50
data
newrow <- data.frame(ID=20,Name="MeNew",Age=20,Salary=1000,Department="Chamkles",Performance_Score=98,Experience=5,Bonus=14.800)
data <- rbind(data, newrow)
newrow
data
##dplyr-------------
data <- data %>% mutate(
  Performance_Score= if_else(Name=="Innita",70,Performance_Score)
)
data

data %>% arrange(Performance_Score)
data %>% arrange(desc(Performance_Score))
data %>% arrange(Department,desc(Performance_Score))

data <- bind_rows(data, newrow)
data


#Reshaping:------------------------
data_wide <- data.frame(
  country = c("Ban","Ind","Pak","Aus"),
  teams = c("A","B","A","B"),
  wins_1st = c(0,3,2,1),
  wins_2nd = c(1,3,1,1),
  wins_3rd = c(3,2,0,1)

)
data_wide

install.packages("tidyr")
library(tidyr)
##base-R:-------------
#cant do this operation in base-R 
##dplyr:--------------
data_long <- data_wide %>% 
  pivot_longer(cols=starts_with("wins_"),
               names_to="Rounds",
               names_prefix="wins_",
               values_to="Wins")

data_wide_back <- data_long %>% 
  pivot_wider(names_from="Rounds",
              values_from="Wins",
              names_prefix ="Wins_" )

data_wide_back
data_wide

#Joining Datasets: ####
emp <- data.frame(
  ID = c(1,2,3,4,5),
  Name = c("Amir","Kwahir","Mlazo","Breenie","Xenagz"),
  Department = c("HR","IT","Finance","IT","HR")
)

salaries <- data.frame(
  ID = c(1,2,3,4,6),
  Salary = c(1000,2000,1500,1220,1600)
)
left_join(emp,salaries,by="ID")
right_join(emp,salaries,by="ID")
inner_join(emp,salaries,by="ID")
full_join(emp,salaries,by="ID")


#Extra: ADD-ins :------------
##Pipe-Steps:----------------
install.packages("ViewPipeSteps")
##Styler:----------------
install.packages("styler")
##Reprex:-----------------
install.packages("reprex")
##Question-r:---------------
install.packages("questionr")





























































































































