# Getting-and-Cleaning-Data-Final-Project

In this project we follow a series of steps to generate the final "TidyData.txt" file

1) First, we download the data from the given link and study what all data/information we have.
2) We then see that there are two sets of data mainly:- "train" and "tidy".
3) We then load all the data and then rbind them into appropriate groups.

For Eg:- Train and test data of subject is rbinded together and stored in a variable called subject.

4)While loading both training and test datasets, we only look to keep columns containing 'mean' or 'std'.

5)We succesfully merge the datasets and then look to clean up the data by replacing some ambiguous words.

6)Lastly, a tidy dataset is created which contains the mean of each variable for each activity-subject pair.

7)Final result is stored in TidyData.txt
