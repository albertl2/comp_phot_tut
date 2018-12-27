%{
Binary Images - Multiple Objects

Region Growing Algorithm:

    1) Find unlabeled seed point where b = 1.
    2) Assign a new label to the seed point.
    3) Assign the same label to its neighbors who also have b = 1.
    4) Repeat until there are no more neighbors.

%}

% Grab a random image and make it binary.
img = imread('images/many_objects_1.png');
img_bin = imbinarize(img);

% Get MATLAB's labeled output.
img_labeled = bwlabel(img_bin);
num_labels = max(max(img_labeled));

%% Connected Component Labeling
% Implement a function that sequentially labels a binary image using 4-C,
% 6-C, and 8-C methods. Use a sequential algorithm first (raster-scanning),
% then implement again using an iterative algorithm.

methods = {'4c','6c','8c'};

my_img_labeled = myBWLabel(img_bin,'4c');
my_num_labels = max(max(my_img_labeled));

% Plot the output.
subplot(2,2,1)
title("Input image.")
subimage(img)
subplot(2,2,2)
title("Binary image.")
subimage(img_bin)
subplot(2,2,3)
title("Expected output.")
subimage(img_labeled,colormap(parula(num_labels+1)))
subplot(2,2,4)
title("Actual output.")
subimage(my_img_labeled,colormap(parula(my_num_labels+1)))

%% Euler Number
% Find the Euler number for each label in an image.

e_nums = regionprops(img_labeled,'EulerNumber');
e_nums = [e_nums.EulerNumber]
my_e_nums = myEulerNumbers(my_img_labeled)