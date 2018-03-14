#------asst 14.1

# a
setwd("C:/Users/Ashwin/Desktop/AcadGild assignments/assignment_14.1")
unzip("BlogFeedback.zip")
blog_data <- read.table("blogData_train.csv",header = F,sep=",")
test_data <- read.table("blogData_test-2012.03.30.01_00.csv",header = F,sep=",")
colnames(blog_data) <- c("sd","mean",3:281)
j<-51
for(i in seq(1,50,by=5))
{
  colnames(blog_data)[i] <- paste0("avg_of_col_",j)
  colnames(blog_data)[i+1] <- paste0("sd_of_col_",j)
  colnames(blog_data)[i+2] <- paste0("min_of_col_",j)
  colnames(blog_data)[i+3] <- paste0("max_of_col_",j)
  colnames(blog_data)[i+4] <- paste0("median_of_col_",j)
  j <- j + 1
}
train_data <- blog_data[,c(51,52,53,54,55,281)]

colnames(train_data) <- c("s1","s2","s3","s4","s5","target")

fit <- lm(target~s2+s3,data=train_data)
summary(fit)

# b



# c



# d



# e

n
