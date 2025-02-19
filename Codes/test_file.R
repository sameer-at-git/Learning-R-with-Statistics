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

















