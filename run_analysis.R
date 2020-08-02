# Read X_train
train <- read.table("X_train.txt")
str(train)

# Read X_test
test <- read.table("X_test.txt")
str(test)

# Merge train and test dataframes
data <- rbind(train, test)

# Read features_info.txt into vector and use colnames to name "data" variables
features <- read.table("features.txt")
names <- features[,2]
colnames(data)<-names
head(data)

# Extracting the mean and the standard deviation for each measurement
datameansd <- data[,grep("mean|std",colnames(data))] 
datameansd <- datameansd[,-grep("meanFreq()",colnames(datameansd))] 

# Reading activity for each observation and merging to the dataset
acttrain <- read.table("y_train.txt")
acttest <- read.table("y_test.txt")
act <- rbind(acttrain, acttest)
colnames(act)<-"Activity"
data <- cbind(data,act)

# Uses descriptive activity names to name the activities in the data set
data$Activity <- gsub("1","WALKING",data$Activity)
data$Activity <- gsub("2","WALKING_UPSTAIRS",data$Activity)
data$Activity <- gsub("3","WALKING_DOWNSTAIRS",data$Activity)
data$Activity <- gsub("4","SITTING",data$Activity)
data$Activity <- gsub("5","STANDING",data$Activity)
data$Activity <- gsub("6","LAYING",data$Activity)

# Reading subject for each observation and merging to the dataset
subjtrain <- read.table("subject_train.txt")
subjtest <- read.table("subject_test.txt")
subj <- rbind(subjtrain, subjtest)
colnames(subj)<-"Subject"
data <- cbind(data,subj)

# A new tidy data set with the average of each variable for each activity and each subject
averagedata <- aggregate(data, list(Activity = data$Activity, Subject = data$Subject), mean)
averagedata <- averagedata[,1:563]

# Create a .txt file with the tidy data sets created in step 5
write.table(averagedata, "tidy_data.txt",row.names=FALSE)

