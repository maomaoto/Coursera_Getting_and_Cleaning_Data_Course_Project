# For Coursera Getting and Cleaning Data Course Project

activity_labels <- read.table("./activity_labels.txt", header=FALSE, sep="",stringsAsFactors=FALSE)
features <- read.table("./features.txt", header=FALSE, sep="",stringsAsFactors=FALSE)

##
# read train data
subject_train <- read.table("./train/subject_train.txt", header=FALSE, sep="",stringsAsFactors=FALSE)
X_train <- read.table("./train/X_train.txt", header=FALSE, sep="",stringsAsFactors=FALSE)
Y_train <- read.table("./train/y_train.txt", header=FALSE, sep="",stringsAsFactors=FALSE)

# unlist Y_train to vector
Y_train <- unlist(Y_train, use.names=FALSE)
# substitute Y_train numbers with corresponding activity labels
for (x in activity_labels[,1]) Y_train[Y_train==x] <- activity_labels[x,2]
# transform Y_train from chr into factors
Y_train <- factor(Y_train, levels=activity_labels[,2])

# Combine subject number and activity labels
X_train <- cbind(subject_train, Y_train, X_train)
names(X_train) <- c("subject", "activity", features[,2])


# read test data
subject_test <- read.table("./test/subject_test.txt", header=FALSE, sep="",stringsAsFactors=FALSE)
X_test <- read.table("./test/X_test.txt", header=FALSE, sep="",stringsAsFactors=FALSE)
Y_test <- read.table("./test/y_test.txt", header=FALSE, sep="",stringsAsFactors=FALSE)

# unlist Y_train to vector
Y_test <- unlist(Y_test, use.names=FALSE)
# substitute Y_test numbers with corresponding activity labels
for (x in activity_labels[,1]) Y_test[Y_test==x] <- activity_labels[x,2]
# transform Y_test from chr into factors
Y_test <- factor(Y_test, levels=activity_labels[,2])

# Combine subject number and activity labels
X_test <- cbind(subject_test, Y_test, X_test)
names(X_test) <- c("subject", "activity", features[,2])

# merge train data and test data
# because subject number does not repeat, just use rbind to combine dataset
data <- rbind(X_train, X_test)
# extract only subject/activity/mean/standard deviation
data <- data[,grepl("subject|activity|mean\\(\\)|std\\(\\)", names(data))]


###################
# for 2nd data set, only remain mean() data
data2 <- data[,grepl("subject|activity|mean\\(\\)", names(data))]

# combine subject and activity to form split factor
sub_act <- paste(data2$subject, data2$activity)
# split data into each subject and each activity
b <- split(data2, sub_act)
# calculate average of each column
c <- lapply(b, function(elt) {temp <- colMeans(elt[,seq(3,35)]); temp <- c(elt[1,1:2], temp)})

# combine calculated data
result = vector()
for (i in seq(length(c))) {
  result = rbind(result, unlist(c[[i]]))
}
result <- data.frame(result)
names(result) <- names(data2)
for (x in activity_labels[,1]) result$activity[result$activity==x] <- activity_labels[x,2]