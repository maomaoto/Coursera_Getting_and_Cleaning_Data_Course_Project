Coursera_Getting_and_Cleaning_Data_Course_Project
=================================================

Usage
-----
- Process data:
	* Put run_analysis.R in the data directory (ie. "UCI HAR Dataset" in this project)
	* Run run_analysis.R 
	* It will produce "tidy_data_set_1.txt" and "tidy_data_set_2.txt" as the project demands
	* tidy_data_set_1.txt contains the data set as the 1st~4th requirements and arranged in the order of subject/activity
	* tidy_data_set_2.txt contains the data set as the 5th requirements and arranged in the order of subject/activity
	
- Read data:
	* read.table("./tidy_data_set.txt", sep=",", header=TRUE)
	
Process Flow
------------

First data set:
- Read activity_labels and features
- Read train data(subject_train, X_train, y_train)
	* Mapping y_train numbering to activity_labels, then convert into factors
	* Use cbind to combine subject, y_train, X_train
- Read test data(subject_test, X_test, y_test), same as train data
- Combine train and test data
	* Use rbind to combine train and test data because the columns are the same
	* Re-arrange the data set with the order of subject and activity
- Use grep to remove columns other than mean() and std()
- Use write.table to save file

Second data set:
- Use the combined data set as previous, but not removing any columns
- Split data set according to subject and activity, generating a list of 180 elements(30 subjects * 6 activities)
- Use lapply to calculate column mean
- Combine the calculated result into a matrix, then transform into data frame
- Restore column names and activity factors
- Use write.table to save file