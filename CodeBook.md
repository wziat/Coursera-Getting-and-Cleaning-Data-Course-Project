
# Code Book

## Data FILE

tidy_data.txt is a space delimited text file containing variable names in the first row

## Identifiers Variables

* `subject_id` : ID of the subject
* `activity_id` : Type of activity performed, with the following labels:

### Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

## Measurements Variables

For each measurements, the mean is computed by subject and activity

### Time Domain Signal

* `TimeDomainBodyAccelerometerMeanX`
* `TimeDomainBodyAccelerometerMeanY`
* `TimeDomainBodyAccelerometerMeanZ`
* `TimeDomainBodyAccelerometerStanDevX`
* `TimeDomainBodyAccelerometerStanDevY`
* `TimeDomainBodyAccelerometerStanDevZ`
* `TimeDomainGravityAccelerometerMeanX`
* `TimeDomainGravityAccelerometerMeanY`
* `TimeDomainGravityAccelerometerMeanZ`
* `TimeDomainGravityAccelerometerStanDevX`
* `TimeDomainGravityAccelerometerStanDevY`
* `TimeDomainGravityAccelerometerStanDevZ`
* `TimeDomainBodyAccelerometerJerkMeanX`
* `TimeDomainBodyAccelerometerJerkMeanY`
* `TimeDomainBodyAccelerometerJerkMeanZ`
* `TimeDomainBodyAccelerometerJerkStanDevX`
* `TimeDomainBodyAccelerometerJerkStanDevY`
* `TimeDomainBodyAccelerometerJerkStanDevZ`
* `TimeDomainBodyGyroscopeMeanX`
* `TimeDomainBodyGyroscopeMeanY`
* `TimeDomainBodyGyroscopeMeanZ`
* `TimeDomainBodyGyroscopeStanDevX`
* `TimeDomainBodyGyroscopeStanDevY`
* `TimeDomainBodyGyroscopeStanDevZ`
* `TimeDomainBodyGyroscopeJerkMeanX`
* `TimeDomainBodyGyroscopeJerkMeanY`
* `TimeDomainBodyGyroscopeJerkMeanZ`
* `TimeDomainBodyGyroscopeJerkStanDevX`
* `TimeDomainBodyGyroscopeJerkStanDevY`
* `TimeDomainBodyGyroscopeJerkStanDevZ`
* `TimeDomainBodyAccelerometerMagnitudeMean`
* `TimeDomainBodyAccelerometerMagnitudeStanDev`
* `TimeDomainGravityAccelerometerMagnitudeMean`
* `TimeDomainGravityAccelerometerMagnitudeStanDev`
* `TimeDomainBodyAccelerometerJerkMagnitudeMean`
* `TimeDomainBodyAccelerometerJerkMagnitudeStanDev`
* `TimeDomainBodyGyroscopeMagnitudeMean`
* `TimeDomainBodyGyroscopeMagnitudeStanDev`
* `TimeDomainBodyGyroscopeJerkMagnitudeMean`
* `TimeDomainBodyGyroscopeJerkMagnitudeStanDev`

### Frequency Domain Signal

* `FrequencyDomainBodyAccelerometerMeanX`
* `FrequencyDomainBodyAccelerometerMeanY`
* `FrequencyDomainBodyAccelerometerMeanZ`
* `FrequencyDomainBodyAccelerometerStanDevX`
* `FrequencyDomainBodyAccelerometerStanDevY`
* `FrequencyDomainBodyAccelerometerStanDevZ`
* `FrequencyDomainBodyAccelerometerMeanFreqX`
* `FrequencyDomainBodyAccelerometerMeanFreqY`
* `FrequencyDomainBodyAccelerometerMeanFreqZ`
* `FrequencyDomainBodyAccelerometerJerkMeanX`
* `FrequencyDomainBodyAccelerometerJerkMeanY`
* `FrequencyDomainBodyAccelerometerJerkMeanZ`
* `FrequencyDomainBodyAccelerometerJerkStanDevX`
* `FrequencyDomainBodyAccelerometerJerkStanDevY`
* `FrequencyDomainBodyAccelerometerJerkStanDevZ`
* `FrequencyDomainBodyAccelerometerJerkMeanFreqX`
* `FrequencyDomainBodyAccelerometerJerkMeanFreqY`
* `FrequencyDomainBodyAccelerometerJerkMeanFreqZ`
* `FrequencyDomainBodyGyroscopeMeanX`
* `FrequencyDomainBodyGyroscopeMeanY`
* `FrequencyDomainBodyGyroscopeMeanZ`
* `FrequencyDomainBodyGyroscopeStanDevX`
* `FrequencyDomainBodyGyroscopeStanDevY`
* `FrequencyDomainBodyGyroscopeStanDevZ`
* `FrequencyDomainBodyGyroscopeMeanFreqX`
* `FrequencyDomainBodyGyroscopeMeanFreqY`
* `FrequencyDomainBodyGyroscopeMeanFreqZ`
* `FrequencyDomainBodyAccelerometerMagnitudeMean`
* `FrequencyDomainBodyAccelerometerMagnitudeStanDev`
* `FrequencyDomainBodyAccelerometerMagnitudeMeanFreq`
* `FrequencyDomainBodyAccelerometerJerkMagnitudeMean`
* `FrequencyDomainBodyAccelerometerJerkMagnitudeStanDev`
* `FrequencyDomainBodyAccelerometerJerkMagnitudeMeanFreq`
* `FrequencyDomainBodyGyroscopeMagnitudeMean`
* `FrequencyDomainBodyGyroscopeMagnitudeStanDev`
* `FrequencyDomainBodyGyroscopeMagnitudeMeanFreq`
* `FrequencyDomainBodyGyroscopeJerkMagnitudeMean`
* `FrequencyDomainBodyGyroscopeJerkMagnitudeStanDev`
* `FrequencyDomainBodyGyroscopeJerkMagnitudeMeanFreq`

