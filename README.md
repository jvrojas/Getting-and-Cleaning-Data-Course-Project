# Getting-and-Cleaning-Data-Course-Project
The objective of this project was to clean and extract data from the "Human Activity Recognition Using Smartphones Dataset", in order to use it in future analyzes.

## Repository content
README.md: This file presents the project objective and the content of the repository.

tidy_data.txt: Tidy dataframe, containing the average value of each of the variables in the original data set, calculated for
each subject participating in the research (from 1 to 30) and for each activity performed by the subjects (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING).

run_analysis.R: Script with code used to merge training and test data, label based on subjects and activities, calculate averages and generate tidy_data.txt.

Code book.md: modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated,
along with units, and any other relevant information

X_train.txt: Original train set.

X_test.txt: Original test set.

features.txt: Original list of all features.

y_train.txt: Original train labels.

y_test.txt: Original test labels.

subject_train.txt: The subjects in train set who performed the activity. It can range from 1 to 30. 

subject_test.txt: The subjects in train set who performed the activity. It can range from 1 to 30.
