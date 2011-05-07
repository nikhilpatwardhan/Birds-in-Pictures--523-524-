function segmentImageSet(setName)
%% TASK : Getting regions from images
%  Segmenting images based on a (color) region growing algorithm
clear; clc;

% Define constants
rgThreshold = 0.10;             % Threshold for region growing segmentation
maxImgWidth = 400;              % Resize if more than this
smallRegionSize = 65;           % In square pixels
border = 5;                     % Around a region when subsuming

imageDirectory = sprintf('..\\..\\img\\%s\\',setName);       % Source Directory

% Add the necessary paths
addpath('..\..\..\common_utils\');
addpath('..\..\..\common_utils\classifier\');
addpath('..\..\..\common_utils\region\');
addpath('..\..\..\common_utils\segmentation\');
addpath('..\..\..\');

% Read all files
list = dir(imageDirectory);
[mRows, mCols] = size(list);

filenames = {};
regionMaps = {};

for k=1:mRows-2
    t1 = tic;
    filename = strcat(imageDirectory,list(k+2).name);
    disp(sprintf('Reading file: %s',filename));
    
    % Initialization and Preprocessing
    [flags,kRegionMap,smallRegionIDs,dI,I,m,n] = ...
        initSegmenter(filename,maxImgWidth);
    
    % Segmentation
    [smallRegionIDs, nSmallRegions, kRegionMap] = ...
        segmentImage(dI, flags, rgThreshold, kRegionMap, smallRegionIDs, smallRegionSize);
    
    % Cleanup the kRegionMap
    [kRegionMap] = ...
        subsumeSmallRegions(kRegionMap, smallRegionIDs, nSmallRegions, border, m, n);
    
    filenames{k} = filename;
    regionMaps{k} = kRegionMap;
    
    disp(sprintf('Finished processing file: %s',filename));
end;

% Save variables and results
setName = upper(setName);
savefile = sprintf('.\\regionResults\\%s.mat',setName);
save(savefile,'regionMaps','filenames');