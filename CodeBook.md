 Code Book

This code book describes the variables of the data set, and any transformations performed to clean up the data in `tidy_data.txt` 

**Work 
The training and test set are concatnated into one data set


While loading both training and test datasets, we only look to keep columns containing 'mean' or 'std'.


We succesfully merge the datasets and then look to clean up the data by replacing some ambiguous words.


Lastly, a tidy dataset is created which contains the mean of each variable for each activity-subject pair.


Final result is stored in TidyData.txt
**List of Features

** Identifiers
* subject/SUBJECT: The ID of the person undergoing the test ranging from 1 - 30
* activity/ACTIVITY`: specific activities individuals were performing, includes: `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`

** Measured Variables
** FEATURE INFO:
* The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.

**TotalData breakdown:-

> str(TotalData)
'data.frame':	10299 obs. of  81 variables:

 tBodyAccelerometerelerometer-mean()-X                               
 $ tBodyAccelerometerelerometer-mean()-Y                               
 $ tBodyAccelerometerelerometer-mean()-Z                              
 $ tBodyAccelerometerelerometer-Standard-Deviation()-X                 
 $ tBodyAccelerometerelerometer-Standard-Deviation()-Y                
 $ tBodyAccelerometerelerometer-Standard-Deviation()-Z                 
 $ tGravityAccelerometerelerometer-mean()-X                           
 $ tGravityAccelerometerelerometer-mean()-Y                           
 $ tGravityAccelerometerelerometer-mean()-Z                            
 $ tGravityAccelerometerelerometer-Standard-Deviation()-X              
 $ tGravityAccelerometerelerometer-Standard-Deviation()-Y              
 $ tGravityAccelerometerelerometer-Standard-Deviation()-Z             
 $ tBodyAccelerometerelerometerJerk-mean()-X                           
 $ tBodyAccelerometerelerometerJerk-mean()-Y                          
 $ tBodyAccelerometerelerometerJerk-mean()-Z                         
 $ tBodyAccelerometerelerometerJerk-Standard-Deviation()-X             
 $ tBodyAccelerometerelerometerJerk-Standard-Deviation()-Y             
 $ tBodyAccelerometerelerometerJerk-Standard-Deviation()-Z            
 $ tBodyGyroscopescope-mean()-X                                        
 $ tBodyGyroscopescope-mean()-Y                                        
 $ tBodyGyroscopescope-mean()-Z                                       
 $ tBodyGyroscopescope-Standard-Deviation()-X                         
 $ tBodyGyroscopescope-Standard-Deviation()-Y                          
 $ tBodyGyroscopescope-Standard-Deviation()-Z                          
 $ tBodyGyroscopescopeJerk-mean()-X                                  
 $ tBodyGyroscopescopeJerk-mean()-Y                                  
 $ tBodyGyroscopescopeJerk-mean()-Z                                   
 $ tBodyGyroscopescopeJerk-Standard-Deviation()-X                      
 $ tBodyGyroscopescopeJerk-Standard-Deviation()-Y                      
 $ tBodyGyroscopescopeJerk-Standard-Deviation()-Z                      
 $ tBodyAccelerometerelerometerMagnitudenitude-mean()                  
 $ tBodyAccelerometerelerometerMagnitudenitude-Standard-Deviation()    
 $ tGravityAccelerometerelerometerMagnitudenitude-mean()               
 $ tGravityAccelerometerelerometerMagnitudenitude-Standard-Deviation() 
 $ tBodyAccelerometerelerometerJerkMagnitudenitude-mean()             
 $ tBodyAccelerometerelerometerJerkMagnitudenitude-Standard-Deviation()
 $ tBodyGyroscopescopeMagnitudenitude-mean()                           
 $ tBodyGyroscopescopeMagnitudenitude-Standard-Deviation()             
 $ tBodyGyroscopescopeJerkMagnitudenitude-mean()                      
 $ tBodyGyroscopescopeJerkMagnitudenitude-Standard-Deviation()         
 $ fBodyAccelerometerelerometer-mean()-X                               
 $ fBodyAccelerometerelerometer-mean()-Y                              
 $ fBodyAccelerometerelerometer-mean()-Z                               
 $ fBodyAccelerometerelerometer-Standard-Deviation()-X                 
 $ fBodyAccelerometerelerometer-Standard-Deviation()-Y                
 $ fBodyAccelerometerelerometer-Standard-Deviation()-Z                 
 $ fBodyAccelerometerelerometer-meanFrequencyuency()-X                 
 $ fBodyAccelerometerelerometer-meanFrequencyuency()-Y                
 $ fBodyAccelerometerelerometer-meanFrequencyuency()-Z                
 $ fBodyAccelerometerelerometerJerk-mean()-X                           
 $ fBodyAccelerometerelerometerJerk-mean()-Y                          
 $ fBodyAccelerometerelerometerJerk-mean()-Z                           
 $ fBodyAccelerometerelerometerJerk-Standard-Deviation()-X            
 $ fBodyAccelerometerelerometerJerk-Standard-Deviation()-Y             
 $ fBodyAccelerometerelerometerJerk-Standard-Deviation()-Z            
 $ fBodyAccelerometerelerometerJerk-meanFrequencyuency()-X            
 $ fBodyAccelerometerelerometerJerk-meanFrequencyuency()-Y             
 $ fBodyAccelerometerelerometerJerk-meanFrequencyuency()-Z          
 $ fBodyGyroscopescope-mean()-X                                        
 $ fBodyGyroscopescope-mean()-Y                                       
 $ fBodyGyroscopescope-mean()-Z                                        
 $ fBodyGyroscopescope-Standard-Deviation()-X                         
 $ fBodyGyroscopescope-Standard-Deviation()-Y                          
 $ fBodyGyroscopescope-Standard-Deviation()-Z                         
 $ fBodyGyroscopescope-meanFrequencyuency()-X                          
 $ fBodyGyroscopescope-meanFrequencyuency()-Y                         
 $ fBodyGyroscopescope-meanFrequencyuency()-Z                          
 $ fBodyAccelerometerelerometerMagnitudenitude-mean()                  
 $ fBodyAccelerometerelerometerMagnitudenitude-Standard-Deviation()   
 $ fBodyAccelerometerelerometerMagnitudenitude-meanFrequencyuency()    
 $ fBodyAccelerometerelerometerJerkMagnitudenitude-mean()              
 $ fBodyAccelerometerelerometerJerkMagnitudenitude-Standard-Deviation()
 $ fBodyAccelerometerelerometerJerkMagnitudenitude-meanFrequencyuency()
 $ fBodyGyroscopescopeMagnitudenitude-mean()                           
 $ fBodyGyroscopescopeMagnitudenitude-Standard-Deviation()             
 $ fBodyGyroscopescopeMagnitudenitude-meanFrequencyuency()            
 $ fBodyGyroscopescopeJerkMagnitudenitude-mean()                       
 $ fBodyGyroscopescopeJerkMagnitudenitude-Standard-Deviation()         
 $ fBodyGyroscopescopeJerkMagnitudenitude-meanFrequencyuency()         
 $ SUBJECT                                                             
 $ ACTIVITY                                                           
 
 

 
