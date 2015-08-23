---
title: "Codebook"
author: "Cyril Medabalimi"
date: "August 23, 2015"
output: html_document:
  keep_md: true
---

Codebook
========

Variable list and descriptions
------------------------------

Variable name    | Description
-----------------|------------
subject          | ID the subject who performed the activity for each window sample. Its range is from 1 to 30.
activity         | Activity name
featDomain       | Feature: Time domain signal or frequency domain signal (Time or Freq)
featInstrument   | Feature: Measuring instrument (Accelerometer or Gyroscope)
featAcceleration | Feature: Acceleration signal (Body or Gravity)
featVariable     | Feature: Variable (Mean or SD)
featJerk         | Feature: Jerk signal
featMagnitude    | Feature: Magnitude of the signals calculated using the Euclidean norm
featAxis         | Feature: 3-axial signals in the X, Y and Z directions (X, Y, or Z)
featCount        | Feature: Count of data points used to compute `average`
featAverage      | Feature: Average of each variable for each activity and each subject

Dataset structure
-----------------


```r
str(dtTidy)
```

```
## Error in str(dtTidy): object 'dtTidy' not found
```


Show a few rows of the dataset
------------------------------


```r
head(Data2)
```

```
##     subject activity timeBodyAccelerometer-mean()-X
## 1         1        1                      0.2773308
## 31        1        2                      0.2554617
## 61        1        3                      0.2891883
## 91        1        4                      0.2612376
## 121       1        5                      0.2789176
## 151       1        6                      0.2215982
##     timeBodyAccelerometer-mean()-Y timeBodyAccelerometer-mean()-Z
## 1                     -0.017383819                     -0.1111481
## 31                    -0.023953149                     -0.0973020
## 61                    -0.009918505                     -0.1075662
## 91                    -0.001308288                     -0.1045442
## 121                   -0.016137590                     -0.1106018
## 151                   -0.040513953                     -0.1132036
##     timeBodyAccelerometer-std()-X timeBodyAccelerometer-std()-Y
## 1                     -0.28374026                   0.114461337
## 31                    -0.35470803                  -0.002320265
## 61                     0.03003534                  -0.031935943
## 91                    -0.97722901                  -0.922618642
## 121                   -0.99575990                  -0.973190056
## 151                   -0.92805647                  -0.836827406
##     timeBodyAccelerometer-std()-Z timeGravityAccelerometer-mean()-X
## 1                     -0.26002790                         0.9352232
## 31                    -0.01947924                         0.8933511
## 61                    -0.23043421                         0.9318744
## 91                    -0.93958629                         0.8315099
## 121                   -0.97977588                         0.9429520
## 151                   -0.82606140                        -0.2488818
##     timeGravityAccelerometer-mean()-Y timeGravityAccelerometer-mean()-Z
## 1                          -0.2821650                       -0.06810286
## 31                         -0.3621534                       -0.07540294
## 61                         -0.2666103                       -0.06211996
## 91                          0.2044116                        0.33204370
## 121                        -0.2729838                        0.01349058
## 151                         0.7055498                        0.44581772
##     timeGravityAccelerometer-std()-X timeGravityAccelerometer-std()-Y
## 1                         -0.9766096                       -0.9713060
## 31                        -0.9563670                       -0.9528492
## 61                        -0.9505598                       -0.9370187
## 91                        -0.9684571                       -0.9355171
## 121                       -0.9937630                       -0.9812260
## 151                       -0.8968300                       -0.9077200
##     timeGravityAccelerometer-std()-Z timeBodyAccelerometerJerk-mean()-X
## 1                         -0.9477172                         0.07404163
## 31                        -0.9123794                         0.10137273
## 61                        -0.8959397                         0.05415532
## 91                        -0.9490409                         0.07748252
## 121                       -0.9763241                         0.07537665
## 151                       -0.8523663                         0.08108653
##     timeBodyAccelerometerJerk-mean()-Y timeBodyAccelerometerJerk-mean()-Z
## 1                         0.0282721096                       -0.004168406
## 31                        0.0194863076                       -0.045562545
## 61                        0.0296504490                       -0.010971973
## 91                       -0.0006191028                       -0.003367792
## 121                       0.0079757309                       -0.003685250
## 151                       0.0038382040                        0.010834236
##     timeBodyAccelerometerJerk-std()-X timeBodyAccelerometerJerk-std()-Y
## 1                         -0.11361560                         0.0670025
## 31                        -0.44684389                        -0.3782744
## 61                        -0.01228386                        -0.1016014
## 91                        -0.98643071                        -0.9813720
## 121                       -0.99460454                        -0.9856487
## 151                       -0.95848211                        -0.9241493
##     timeBodyAccelerometerJerk-std()-Z timeBodyGyroscope-mean()-X
## 1                          -0.5026998                -0.04183096
## 31                         -0.7065935                 0.05054938
## 61                         -0.3457350                -0.03507819
## 91                         -0.9879108                -0.04535006
## 121                        -0.9922512                -0.02398773
## 151                        -0.9548551                -0.01655309
##     timeBodyGyroscope-mean()-Y timeBodyGyroscope-mean()-Z
## 1                  -0.06953005                 0.08494482
## 31                 -0.16617002                 0.05835955
## 61                 -0.09093713                 0.09008501
## 91                 -0.09192415                 0.06293138
## 121                -0.05939722                 0.07480075
## 151                -0.06448612                 0.14868944
##     timeBodyGyroscope-std()-X timeBodyGyroscope-std()-Y
## 1                  -0.4735355              -0.054607769
## 31                 -0.5448711               0.004105184
## 61                 -0.4580305              -0.126349195
## 91                 -0.9772113              -0.966473895
## 121                -0.9871919              -0.987734440
## 151                -0.8735439              -0.951090440
##     timeBodyGyroscope-std()-Z timeBodyGyroscopeJerk-mean()-X
## 1                  -0.3442666                    -0.08999754
## 31                 -0.5071687                    -0.12223277
## 61                 -0.1247025                    -0.07395920
## 91                 -0.9414259                    -0.09367938
## 121                -0.9806456                    -0.09960921
## 151                -0.9082847                    -0.10727095
##     timeBodyGyroscopeJerk-mean()-Y timeBodyGyroscopeJerk-mean()-Z
## 1                      -0.03984287                    -0.04613093
## 31                     -0.04214859                    -0.04071255
## 61                     -0.04399028                    -0.02704611
## 91                     -0.04021181                    -0.04670263
## 121                    -0.04406279                    -0.04895055
## 151                    -0.04151729                    -0.07405012
##     timeBodyGyroscopeJerk-std()-X timeBodyGyroscopeJerk-std()-Y
## 1                      -0.2074219                    -0.3044685
## 31                     -0.6147865                    -0.6016967
## 61                     -0.4870273                    -0.2388248
## 91                     -0.9917316                    -0.9895181
## 121                    -0.9929451                    -0.9951379
## 151                    -0.9186085                    -0.9679072
##     timeBodyGyroscopeJerk-std()-Z timeBodyAccelerometerMagnitude-mean()
## 1                      -0.4042555                           -0.13697118
## 31                     -0.6063320                           -0.12992763
## 61                     -0.2687615                            0.02718829
## 91                     -0.9879358                           -0.94853679
## 121                    -0.9921085                           -0.98427821
## 151                    -0.9577902                           -0.84192915
##     timeBodyAccelerometerMagnitude-std()
## 1                            -0.21968865
## 31                           -0.32497093
## 61                            0.01988435
## 91                           -0.92707842
## 121                          -0.98194293
## 151                          -0.79514486
##     timeGravityAccelerometerMagnitude-mean()
## 1                                -0.13697118
## 31                               -0.12992763
## 61                                0.02718829
## 91                               -0.94853679
## 121                              -0.98427821
## 151                              -0.84192915
##     timeGravityAccelerometerMagnitude-std()
## 1                               -0.21968865
## 31                              -0.32497093
## 61                               0.01988435
## 91                              -0.92707842
## 121                             -0.98194293
## 151                             -0.79514486
##     timeBodyAccelerometerJerkMagnitude-mean()
## 1                                 -0.14142881
## 31                                -0.46650345
## 61                                -0.08944748
## 91                                -0.98736420
## 121                               -0.99236779
## 151                               -0.95439626
##     timeBodyAccelerometerJerkMagnitude-std()
## 1                                -0.07447175
## 31                               -0.47899162
## 61                               -0.02578772
## 91                               -0.98412002
## 121                              -0.99309621
## 151                              -0.92824563
##     timeBodyGyroscopeMagnitude-mean() timeBodyGyroscopeMagnitude-std()
## 1                         -0.16097955                       -0.1869784
## 31                        -0.12673559                       -0.1486193
## 61                        -0.07574125                       -0.2257244
## 91                        -0.93089249                       -0.9345318
## 121                       -0.97649379                       -0.9786900
## 151                       -0.87475955                       -0.8190102
##     timeBodyGyroscopeJerkMagnitude-mean()
## 1                              -0.2987037
## 31                             -0.5948829
## 61                             -0.2954638
## 91                             -0.9919763
## 121                            -0.9949668
## 151                            -0.9634610
##     timeBodyGyroscopeJerkMagnitude-std()
## 1                             -0.3253249
## 31                            -0.6485530
## 61                            -0.3065106
## 91                            -0.9883087
## 121                           -0.9947332
## 151                           -0.9358410
##     frequencyBodyAccelerometer-mean()-X
## 1                           -0.20279431
## 31                          -0.40432178
## 61                           0.03822918
## 91                          -0.97964124
## 121                         -0.99524993
## 151                         -0.93909905
##     frequencyBodyAccelerometer-mean()-Y
## 1                           0.089712726
## 31                         -0.190976721
## 61                          0.001549908
## 91                         -0.944084550
## 121                        -0.977070848
## 151                        -0.867065205
##     frequencyBodyAccelerometer-mean()-Z frequencyBodyAccelerometer-std()-X
## 1                            -0.3315601                        -0.31913472
## 31                           -0.4333497                        -0.33742819
## 61                           -0.2255745                         0.02433084
## 91                           -0.9591849                        -0.97641231
## 121                          -0.9852971                        -0.99602835
## 151                          -0.8826669                        -0.92443743
##     frequencyBodyAccelerometer-std()-Y frequencyBodyAccelerometer-std()-Z
## 1                           0.05604001                        -0.27968675
## 31                          0.02176951                         0.08595655
## 61                         -0.11296374                        -0.29792789
## 91                         -0.91727501                        -0.93446956
## 121                        -0.97229310                        -0.97793726
## 151                        -0.83362556                        -0.81289156
##     frequencyBodyAccelerometerJerk-mean()-X
## 1                               -0.17054696
## 31                              -0.47987525
## 61                              -0.02766387
## 91                              -0.98659702
## 121                             -0.99463080
## 151                             -0.95707388
##     frequencyBodyAccelerometerJerk-mean()-Y
## 1                               -0.03522552
## 31                              -0.41344459
## 61                              -0.12866716
## 91                              -0.98157947
## 121                             -0.98541870
## 151                             -0.92246261
##     frequencyBodyAccelerometerJerk-mean()-Z
## 1                                -0.4689992
## 31                               -0.6854744
## 61                               -0.2883347
## 91                               -0.9860531
## 121                              -0.9907522
## 151                              -0.9480609
##     frequencyBodyAccelerometerJerk-std()-X
## 1                               -0.1335866
## 31                              -0.4619070
## 61                              -0.0863279
## 91                              -0.9874930
## 121                             -0.9950738
## 151                             -0.9641607
##     frequencyBodyAccelerometerJerk-std()-Y
## 1                                0.1067399
## 31                              -0.3817771
## 61                              -0.1345800
## 91                              -0.9825139
## 121                             -0.9870182
## 151                             -0.9322179
##     frequencyBodyAccelerometerJerk-std()-Z frequencyBodyGyroscope-mean()-X
## 1                               -0.5347134                      -0.3390322
## 31                              -0.7260402                      -0.4926117
## 61                              -0.4017215                      -0.3524496
## 91                              -0.9883392                      -0.9761615
## 121                             -0.9923498                      -0.9863868
## 151                             -0.9605870                      -0.8502492
##     frequencyBodyGyroscope-mean()-Y frequencyBodyGyroscope-mean()-Z
## 1                       -0.10305942                     -0.25594094
## 31                      -0.31947461                     -0.45359721
## 61                      -0.05570225                     -0.03186943
## 91                      -0.97583859                     -0.95131554
## 121                     -0.98898446                     -0.98077312
## 151                     -0.95219149                     -0.90930272
##     frequencyBodyGyroscope-std()-X frequencyBodyGyroscope-std()-Y
## 1                       -0.5166919                    -0.03350816
## 31                      -0.5658925                     0.15153891
## 61                      -0.4954225                    -0.18141473
## 91                      -0.9779042                    -0.96234504
## 121                     -0.9874971                    -0.98710773
## 151                     -0.8822965                    -0.95123205
##     frequencyBodyGyroscope-std()-Z
## 1                       -0.4365622
## 31                      -0.5717078
## 61                      -0.2384436
## 91                      -0.9439178
## 121                     -0.9823453
## 151                     -0.9165825
##     frequencyBodyAccelerometerMagnitude-mean()
## 1                                  -0.12862345
## 31                                 -0.35239594
## 61                                  0.09658453
## 91                                 -0.94778292
## 121                                -0.98535636
## 151                                -0.86176765
##     frequencyBodyAccelerometerMagnitude-std()
## 1                                  -0.3980326
## 31                                 -0.4162601
## 61                                 -0.1865303
## 91                                 -0.9284448
## 121                                -0.9823138
## 151                                -0.7983009
##     frequencyBodyAccelerometerJerkMagnitude-mean()
## 1                                      -0.05711940
## 31                                     -0.44265216
## 61                                      0.02621849
## 91                                     -0.98526213
## 121                                    -0.99254248
## 151                                    -0.93330036
##     frequencyBodyAccelerometerJerkMagnitude-std()
## 1                                      -0.1034924
## 31                                     -0.5330599
## 61                                     -0.1040523
## 91                                     -0.9816062
## 121                                    -0.9925360
## 151                                    -0.9218040
##     frequencyBodyGyroscopeMagnitude-mean()
## 1                               -0.1992526
## 31                              -0.3259615
## 61                              -0.1857203
## 91                              -0.9584356
## 121                             -0.9846176
## 151                             -0.8621902
##     frequencyBodyGyroscopeMagnitude-std()
## 1                              -0.3210180
## 31                             -0.1829855
## 61                             -0.3983504
## 91                             -0.9321984
## 121                            -0.9784661
## 151                            -0.8243194
##     frequencyBodyGyroscopeJerkMagnitude-mean()
## 1                                   -0.3193086
## 31                                  -0.6346651
## 61                                  -0.2819634
## 91                                  -0.9897975
## 121                                 -0.9948154
## 151                                 -0.9423669
##     frequencyBodyGyroscopeJerkMagnitude-std()
## 1                                  -0.3816019
## 31                                 -0.6939305
## 61                                 -0.3919199
## 91                                 -0.9870496
## 121                                -0.9946711
## 151                                -0.9326607
```

Summary of variables
--------------------


```r
summary(Data2)
```

```
##     subject        activity   timeBodyAccelerometer-mean()-X
##  Min.   : 1.0   Min.   :1.0   Min.   :0.2216                
##  1st Qu.: 8.0   1st Qu.:2.0   1st Qu.:0.2712                
##  Median :15.5   Median :3.5   Median :0.2770                
##  Mean   :15.5   Mean   :3.5   Mean   :0.2743                
##  3rd Qu.:23.0   3rd Qu.:5.0   3rd Qu.:0.2800                
##  Max.   :30.0   Max.   :6.0   Max.   :0.3015                
##  timeBodyAccelerometer-mean()-Y timeBodyAccelerometer-mean()-Z
##  Min.   :-0.040514              Min.   :-0.15251              
##  1st Qu.:-0.020022              1st Qu.:-0.11207              
##  Median :-0.017262              Median :-0.10819              
##  Mean   :-0.017876              Mean   :-0.10916              
##  3rd Qu.:-0.014936              3rd Qu.:-0.10443              
##  Max.   :-0.001308              Max.   :-0.07538              
##  timeBodyAccelerometer-std()-X timeBodyAccelerometer-std()-Y
##  Min.   :-0.9961               Min.   :-0.99024             
##  1st Qu.:-0.9799               1st Qu.:-0.94205             
##  Median :-0.7526               Median :-0.50897             
##  Mean   :-0.5577               Mean   :-0.46046             
##  3rd Qu.:-0.1984               3rd Qu.:-0.03077             
##  Max.   : 0.6269               Max.   : 0.61694             
##  timeBodyAccelerometer-std()-Z timeGravityAccelerometer-mean()-X
##  Min.   :-0.9877               Min.   :-0.6800                  
##  1st Qu.:-0.9498               1st Qu.: 0.8376                  
##  Median :-0.6518               Median : 0.9208                  
##  Mean   :-0.5756               Mean   : 0.6975                  
##  3rd Qu.:-0.2306               3rd Qu.: 0.9425                  
##  Max.   : 0.6090               Max.   : 0.9745                  
##  timeGravityAccelerometer-mean()-Y timeGravityAccelerometer-mean()-Z
##  Min.   :-0.47989                  Min.   :-0.49509                 
##  1st Qu.:-0.23319                  1st Qu.:-0.11726                 
##  Median :-0.12782                  Median : 0.02384                 
##  Mean   :-0.01621                  Mean   : 0.07413                 
##  3rd Qu.: 0.08773                  3rd Qu.: 0.14946                 
##  Max.   : 0.95659                  Max.   : 0.95787                 
##  timeGravityAccelerometer-std()-X timeGravityAccelerometer-std()-Y
##  Min.   :-0.9968                  Min.   :-0.9942                 
##  1st Qu.:-0.9825                  1st Qu.:-0.9711                 
##  Median :-0.9695                  Median :-0.9590                 
##  Mean   :-0.9638                  Mean   :-0.9524                 
##  3rd Qu.:-0.9509                  3rd Qu.:-0.9370                 
##  Max.   :-0.8296                  Max.   :-0.6436                 
##  timeGravityAccelerometer-std()-Z timeBodyAccelerometerJerk-mean()-X
##  Min.   :-0.9910                  Min.   :0.04269                   
##  1st Qu.:-0.9605                  1st Qu.:0.07396                   
##  Median :-0.9450                  Median :0.07640                   
##  Mean   :-0.9364                  Mean   :0.07947                   
##  3rd Qu.:-0.9180                  3rd Qu.:0.08330                   
##  Max.   :-0.6102                  Max.   :0.13019                   
##  timeBodyAccelerometerJerk-mean()-Y timeBodyAccelerometerJerk-mean()-Z
##  Min.   :-0.0386872                 Min.   :-0.067458                 
##  1st Qu.: 0.0004664                 1st Qu.:-0.010601                 
##  Median : 0.0094698                 Median :-0.003861                 
##  Mean   : 0.0075652                 Mean   :-0.004953                 
##  3rd Qu.: 0.0134008                 3rd Qu.: 0.001958                 
##  Max.   : 0.0568186                 Max.   : 0.038053                 
##  timeBodyAccelerometerJerk-std()-X timeBodyAccelerometerJerk-std()-Y
##  Min.   :-0.9946                   Min.   :-0.9895                  
##  1st Qu.:-0.9832                   1st Qu.:-0.9724                  
##  Median :-0.8104                   Median :-0.7756                  
##  Mean   :-0.5949                   Mean   :-0.5654                  
##  3rd Qu.:-0.2233                   3rd Qu.:-0.1483                  
##  Max.   : 0.5443                   Max.   : 0.3553                  
##  timeBodyAccelerometerJerk-std()-Z timeBodyGyroscope-mean()-X
##  Min.   :-0.99329                  Min.   :-0.20578          
##  1st Qu.:-0.98266                  1st Qu.:-0.04712          
##  Median :-0.88366                  Median :-0.02871          
##  Mean   :-0.73596                  Mean   :-0.03244          
##  3rd Qu.:-0.51212                  3rd Qu.:-0.01676          
##  Max.   : 0.03102                  Max.   : 0.19270          
##  timeBodyGyroscope-mean()-Y timeBodyGyroscope-mean()-Z
##  Min.   :-0.20421           Min.   :-0.07245          
##  1st Qu.:-0.08955           1st Qu.: 0.07475          
##  Median :-0.07318           Median : 0.08512          
##  Mean   :-0.07426           Mean   : 0.08744          
##  3rd Qu.:-0.06113           3rd Qu.: 0.10177          
##  Max.   : 0.02747           Max.   : 0.17910          
##  timeBodyGyroscope-std()-X timeBodyGyroscope-std()-Y
##  Min.   :-0.9943           Min.   :-0.9942          
##  1st Qu.:-0.9735           1st Qu.:-0.9629          
##  Median :-0.7890           Median :-0.8017          
##  Mean   :-0.6916           Mean   :-0.6533          
##  3rd Qu.:-0.4414           3rd Qu.:-0.4196          
##  Max.   : 0.2677           Max.   : 0.4765          
##  timeBodyGyroscope-std()-Z timeBodyGyroscopeJerk-mean()-X
##  Min.   :-0.9855           Min.   :-0.15721              
##  1st Qu.:-0.9609           1st Qu.:-0.10322              
##  Median :-0.8010           Median :-0.09868              
##  Mean   :-0.6164           Mean   :-0.09606              
##  3rd Qu.:-0.3106           3rd Qu.:-0.09110              
##  Max.   : 0.5649           Max.   :-0.02209              
##  timeBodyGyroscopeJerk-mean()-Y timeBodyGyroscopeJerk-mean()-Z
##  Min.   :-0.07681               Min.   :-0.092500             
##  1st Qu.:-0.04552               1st Qu.:-0.061725             
##  Median :-0.04112               Median :-0.053430             
##  Mean   :-0.04269               Mean   :-0.054802             
##  3rd Qu.:-0.03842               3rd Qu.:-0.048985             
##  Max.   :-0.01320               Max.   :-0.006941             
##  timeBodyGyroscopeJerk-std()-X timeBodyGyroscopeJerk-std()-Y
##  Min.   :-0.9965               Min.   :-0.9971              
##  1st Qu.:-0.9800               1st Qu.:-0.9832              
##  Median :-0.8396               Median :-0.8942              
##  Mean   :-0.7036               Mean   :-0.7636              
##  3rd Qu.:-0.4629               3rd Qu.:-0.5861              
##  Max.   : 0.1791               Max.   : 0.2959              
##  timeBodyGyroscopeJerk-std()-Z timeBodyAccelerometerMagnitude-mean()
##  Min.   :-0.9954               Min.   :-0.9865                      
##  1st Qu.:-0.9848               1st Qu.:-0.9573                      
##  Median :-0.8610               Median :-0.4829                      
##  Mean   :-0.7096               Mean   :-0.4973                      
##  3rd Qu.:-0.4741               3rd Qu.:-0.0919                      
##  Max.   : 0.1932               Max.   : 0.6446                      
##  timeBodyAccelerometerMagnitude-std()
##  Min.   :-0.9865                     
##  1st Qu.:-0.9430                     
##  Median :-0.6074                     
##  Mean   :-0.5439                     
##  3rd Qu.:-0.2090                     
##  Max.   : 0.4284                     
##  timeGravityAccelerometerMagnitude-mean()
##  Min.   :-0.9865                         
##  1st Qu.:-0.9573                         
##  Median :-0.4829                         
##  Mean   :-0.4973                         
##  3rd Qu.:-0.0919                         
##  Max.   : 0.6446                         
##  timeGravityAccelerometerMagnitude-std()
##  Min.   :-0.9865                        
##  1st Qu.:-0.9430                        
##  Median :-0.6074                        
##  Mean   :-0.5439                        
##  3rd Qu.:-0.2090                        
##  Max.   : 0.4284                        
##  timeBodyAccelerometerJerkMagnitude-mean()
##  Min.   :-0.9928                          
##  1st Qu.:-0.9807                          
##  Median :-0.8168                          
##  Mean   :-0.6079                          
##  3rd Qu.:-0.2456                          
##  Max.   : 0.4345                          
##  timeBodyAccelerometerJerkMagnitude-std()
##  Min.   :-0.9946                         
##  1st Qu.:-0.9765                         
##  Median :-0.8014                         
##  Mean   :-0.5842                         
##  3rd Qu.:-0.2173                         
##  Max.   : 0.4506                         
##  timeBodyGyroscopeMagnitude-mean() timeBodyGyroscopeMagnitude-std()
##  Min.   :-0.9807                   Min.   :-0.9814                 
##  1st Qu.:-0.9461                   1st Qu.:-0.9476                 
##  Median :-0.6551                   Median :-0.7420                 
##  Mean   :-0.5652                   Mean   :-0.6304                 
##  3rd Qu.:-0.2159                   3rd Qu.:-0.3602                 
##  Max.   : 0.4180                   Max.   : 0.3000                 
##  timeBodyGyroscopeJerkMagnitude-mean()
##  Min.   :-0.99732                     
##  1st Qu.:-0.98515                     
##  Median :-0.86479                     
##  Mean   :-0.73637                     
##  3rd Qu.:-0.51186                     
##  Max.   : 0.08758                     
##  timeBodyGyroscopeJerkMagnitude-std() frequencyBodyAccelerometer-mean()-X
##  Min.   :-0.9977                      Min.   :-0.9952                    
##  1st Qu.:-0.9805                      1st Qu.:-0.9787                    
##  Median :-0.8809                      Median :-0.7691                    
##  Mean   :-0.7550                      Mean   :-0.5758                    
##  3rd Qu.:-0.5767                      3rd Qu.:-0.2174                    
##  Max.   : 0.2502                      Max.   : 0.5370                    
##  frequencyBodyAccelerometer-mean()-Y frequencyBodyAccelerometer-mean()-Z
##  Min.   :-0.98903                    Min.   :-0.9895                    
##  1st Qu.:-0.95361                    1st Qu.:-0.9619                    
##  Median :-0.59498                    Median :-0.7236                    
##  Mean   :-0.48873                    Mean   :-0.6297                    
##  3rd Qu.:-0.06341                    3rd Qu.:-0.3183                    
##  Max.   : 0.52419                    Max.   : 0.2807                    
##  frequencyBodyAccelerometer-std()-X frequencyBodyAccelerometer-std()-Y
##  Min.   :-0.9966                    Min.   :-0.99068                  
##  1st Qu.:-0.9820                    1st Qu.:-0.94042                  
##  Median :-0.7470                    Median :-0.51338                  
##  Mean   :-0.5522                    Mean   :-0.48148                  
##  3rd Qu.:-0.1966                    3rd Qu.:-0.07913                  
##  Max.   : 0.6585                    Max.   : 0.56019                  
##  frequencyBodyAccelerometer-std()-Z
##  Min.   :-0.9872                   
##  1st Qu.:-0.9459                   
##  Median :-0.6441                   
##  Mean   :-0.5824                   
##  3rd Qu.:-0.2655                   
##  Max.   : 0.6871                   
##  frequencyBodyAccelerometerJerk-mean()-X
##  Min.   :-0.9946                        
##  1st Qu.:-0.9828                        
##  Median :-0.8126                        
##  Mean   :-0.6139                        
##  3rd Qu.:-0.2820                        
##  Max.   : 0.4743                        
##  frequencyBodyAccelerometerJerk-mean()-Y
##  Min.   :-0.9894                        
##  1st Qu.:-0.9725                        
##  Median :-0.7817                        
##  Mean   :-0.5882                        
##  3rd Qu.:-0.1963                        
##  Max.   : 0.2767                        
##  frequencyBodyAccelerometerJerk-mean()-Z
##  Min.   :-0.9920                        
##  1st Qu.:-0.9796                        
##  Median :-0.8707                        
##  Mean   :-0.7144                        
##  3rd Qu.:-0.4697                        
##  Max.   : 0.1578                        
##  frequencyBodyAccelerometerJerk-std()-X
##  Min.   :-0.9951                       
##  1st Qu.:-0.9847                       
##  Median :-0.8254                       
##  Mean   :-0.6121                       
##  3rd Qu.:-0.2475                       
##  Max.   : 0.4768                       
##  frequencyBodyAccelerometerJerk-std()-Y
##  Min.   :-0.9905                       
##  1st Qu.:-0.9737                       
##  Median :-0.7852                       
##  Mean   :-0.5707                       
##  3rd Qu.:-0.1685                       
##  Max.   : 0.3498                       
##  frequencyBodyAccelerometerJerk-std()-Z frequencyBodyGyroscope-mean()-X
##  Min.   :-0.993108                      Min.   :-0.9931                
##  1st Qu.:-0.983747                      1st Qu.:-0.9697                
##  Median :-0.895121                      Median :-0.7300                
##  Mean   :-0.756489                      Mean   :-0.6367                
##  3rd Qu.:-0.543787                      3rd Qu.:-0.3387                
##  Max.   :-0.006236                      Max.   : 0.4750                
##  frequencyBodyGyroscope-mean()-Y frequencyBodyGyroscope-mean()-Z
##  Min.   :-0.9940                 Min.   :-0.9860                
##  1st Qu.:-0.9700                 1st Qu.:-0.9624                
##  Median :-0.8141                 Median :-0.7909                
##  Mean   :-0.6767                 Mean   :-0.6044                
##  3rd Qu.:-0.4458                 3rd Qu.:-0.2635                
##  Max.   : 0.3288                 Max.   : 0.4924                
##  frequencyBodyGyroscope-std()-X frequencyBodyGyroscope-std()-Y
##  Min.   :-0.9947                Min.   :-0.9944               
##  1st Qu.:-0.9750                1st Qu.:-0.9602               
##  Median :-0.8086                Median :-0.7964               
##  Mean   :-0.7110                Mean   :-0.6454               
##  3rd Qu.:-0.4813                3rd Qu.:-0.4154               
##  Max.   : 0.1966                Max.   : 0.6462               
##  frequencyBodyGyroscope-std()-Z frequencyBodyAccelerometerMagnitude-mean()
##  Min.   :-0.9867                Min.   :-0.9868                           
##  1st Qu.:-0.9643                1st Qu.:-0.9560                           
##  Median :-0.8224                Median :-0.6703                           
##  Mean   :-0.6577                Mean   :-0.5365                           
##  3rd Qu.:-0.3916                3rd Qu.:-0.1622                           
##  Max.   : 0.5225                Max.   : 0.5866                           
##  frequencyBodyAccelerometerMagnitude-std()
##  Min.   :-0.9876                          
##  1st Qu.:-0.9452                          
##  Median :-0.6513                          
##  Mean   :-0.6210                          
##  3rd Qu.:-0.3654                          
##  Max.   : 0.1787                          
##  frequencyBodyAccelerometerJerkMagnitude-mean()
##  Min.   :-0.9940                               
##  1st Qu.:-0.9770                               
##  Median :-0.7940                               
##  Mean   :-0.5756                               
##  3rd Qu.:-0.1872                               
##  Max.   : 0.5384                               
##  frequencyBodyAccelerometerJerkMagnitude-std()
##  Min.   :-0.9944                              
##  1st Qu.:-0.9752                              
##  Median :-0.8126                              
##  Mean   :-0.5992                              
##  3rd Qu.:-0.2668                              
##  Max.   : 0.3163                              
##  frequencyBodyGyroscopeMagnitude-mean()
##  Min.   :-0.9865                       
##  1st Qu.:-0.9616                       
##  Median :-0.7657                       
##  Mean   :-0.6671                       
##  3rd Qu.:-0.4087                       
##  Max.   : 0.2040                       
##  frequencyBodyGyroscopeMagnitude-std()
##  Min.   :-0.9815                      
##  1st Qu.:-0.9488                      
##  Median :-0.7727                      
##  Mean   :-0.6723                      
##  3rd Qu.:-0.4277                      
##  Max.   : 0.2367                      
##  frequencyBodyGyroscopeJerkMagnitude-mean()
##  Min.   :-0.9976                           
##  1st Qu.:-0.9813                           
##  Median :-0.8779                           
##  Mean   :-0.7564                           
##  3rd Qu.:-0.5831                           
##  Max.   : 0.1466                           
##  frequencyBodyGyroscopeJerkMagnitude-std()
##  Min.   :-0.9976                          
##  1st Qu.:-0.9802                          
##  Median :-0.8941                          
##  Mean   :-0.7715                          
##  3rd Qu.:-0.6081                          
##  Max.   : 0.2878
```

Save to file
------------

Save data table objects to a tab-delimited text file called `TidyDataSet.txt`.


```r
write.table(Data2, file = "TidyDataSet.txt",row.name=FALSE)
```


