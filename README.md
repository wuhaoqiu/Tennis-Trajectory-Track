# Tennis Trajectory Track 

### Introduction
First, obtaining a background image to compare against each frame so i may
detect the moving ball. Second, using this image along with other qualifiers to find the ball’s
path throughout the video clip. Third, detecting changes in acceleration and note them as hit
candidates, noting the difference between player hits and ground hits. Lastly, using the ordering
and context of these hits to learn which player scored points from the play. As an output the
program produces images displaying information about the ball’s path, as well as a final result of
who gained score.

### Image Process Techniques Used
* Morphological Filters.
* Connected Component Analysis.
* Colour Segmentation
* Image Logical Operations.
* Dilation and Erosion.
* Thresholding on Magnitude of Speed and Accelaration Frame by Frame.
* Hough Transformation for Line Detection

### Part of Screenshots
* Trajectory Track

![alt text](https://github.com/wuhaoqiu/Tennis-Trajectory-Track/blob/master/screenshots/trajector_with_events.png)

* Ball Box 

![alt text](https://github.com/wuhaoqiu/Tennis-Trajectory-Track/blob/master/screenshots/ball.png)
