#First Section ####
#hi this is first scetion 
## This is subsection of first section ####
 9*4

9/5

9/0

 typeof(6)

 typeof(6L)

#whenever a variable is defined in this console it will be shownin the global environments on the right panel
   a=6
   #here a is an object
   
#Second Section ####
   #Hi this is second section 
   ## THis is subsection of Second section ####
   #Haha welcome back again 
a=c(4,5,6)
typeof(a)   
b=c(4,5,6L)
typeof(b)
x<-c(1,2,3)
num<-x
rm(x)
c=c("A","b")
A<-1:100
A
B<-100:1
B

m1<-matrix(c(1,2,3,4,5,6),nrow=3)
m1
m2<-matrix(c(1,2,3,4,5,6),ncol=3)
m2
m2 %*% m1


x1<-c("Apple","Samsung","Nokia")
x1
"Vivo" %in% x1
"Apple" %in% x1
"apple" %in% x1
tolower(x1)
x1
j=tolower(x1)
j
j == x1
x1 == x1
k = toupper(x1)
j == k
k
x<-c(1,2,3,4,5,6,11,12,32,412)
x
mean(x)
max(x)
min(x)
summary(x)
median(x)
#Third Section ####
#Hi this is second section ####

#a buil in dataset on cars:
dataset= mtcars
dataset
summary(dataset)
range(dataset)
sum(x)
sd(x)
is.na(dataset)
x
a3<-c(1,2,NA,4)
is.na(a3)
which(is.na(a3))
any(is.na(a3))

is.vector(x)
is.data.frame(x)
is.list(x)
is.array(x)
is.matrix(x)
is.matrix(m1)
set.seed(001)
x2<-sample(1:10,3)
x2
x3<-sample(1:10,3,replace=TRUE)
x3
table(sample(1:10,3,replace = TRUE))
x4<-runif(5)
x4
x5<-runif(2)
x5
x6<-sample(1:5,2,prob=c(0.3,0.2,0.1,0.2,0.2))
x6
x7<-seq(from=1,to=10,by=2)
x7
x8<-seq(from=1,to=10,by=4)
x8
x9<-seq(from=1,to=10,length.out=4)
x9
x10<-seq(from=1,to=10,length.out=8)
x10
x11<-seq(from=1,to=10,along.with=4)
x11


#Fourth Section ####
x7
x7<5
x7>4
x7[4]
x7[1:3]
x7[3:4]
length(x7)
x7
x7[c(FALSE,TRUE,TRUE,TRUE,FALSE)]
x7[c(2,3,4)]
x7[x7<5 & x7>1] #values of said cond'n.
which(x7<5 & x7>1) #indexes of said cond'n.
x7[which(x7<5 & x7>1)] #values of indexes of said cond'n
x7
replace(x7,x7<5,5)


m1
m1[,]
m1[,2]
m1[2,]
m1[2,2]
m1[2,2]<-0
m1[,]
dim(m1)



df1<-data.frame(id=c(1,2,3),
                name=c("Ajmal",NA,"Chuchu"),
                age=c(10,20,15)
                )
df1
is.data.frame(df1)
summary(df1)
is.na(df1)
which(is.na(df1))
df1[2,2]
df1[2,2]<-"Bashir"
df1
summary(df1)

df2<-data.frame(id=c(1,2,3),
                gender=factor(c("Male","Female","Male")),
                age=c(10,20,15)
)
df2
summary(df2)

df3<-data.frame(id=c(1,2,3),
           name=c("Male","Female","Male"),
           age=c(10,20,15), stringsAsFactors = TRUE
)
summary(df3)
m1
diag(m1)
solve(m1)
m3<-matrix(c(1,2,3,4),nrow=2)
solve(m3)  #reverse matrix iff det(matrix)!=0

df3$age
mean(df3$age)
rownames(df2)
colnames(df2)


#Fifth Section ####
df1
df1$country
df1
df1$country <- c("Ban","Ind","Pak")
df1
summary(df1)
summary(df3)
df3$country<-c("Ban","Ind","Pak")
summary(df3) 
df3
df3[3,c(3,4)]
df3$age<18
df3[df3$age<18,]

df3$age_month <- df3$age * 12





