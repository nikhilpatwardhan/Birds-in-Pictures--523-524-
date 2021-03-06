ans = sloc('./common_utils/classifier/computeImageRGBHistogram.m');
ans = ans + sloc('./common_utils/classifier/computeRegionRGBHistogram.m');
ans = ans + sloc('./common_utils/classifier/computeRegionSIFT.m');
ans = ans + sloc('./common_utils/classifier/computeVisualWordFromSIFT.m');
ans = ans + sloc('./common_utils/region/findRegionBoundingBox.m');
ans = ans + sloc('./common_utils/region/findTopNRegions.m');
ans = ans + sloc('./common_utils/region/getOuterBorder.m');
ans = ans + sloc('./common_utils/region/getRegionWithBlackBackground.m');
ans = ans + sloc('./common_utils/region/getWindow.m');
ans = ans + sloc('./common_utils/segmentation/colorSegmentedImage.m');
ans = ans + sloc('./common_utils/segmentation/initSegmenter.m');
ans = ans + sloc('./common_utils/segmentation/segmentImage.m');
ans = ans + sloc('./common_utils/segmentation/subsumeSmallRegions.m');
ans = ans + sloc('./common_utils/segmentation/tintImage.m');
ans = ans + sloc('./common_utils/startLog.m');
ans = ans + sloc('./find_birds/colorPrediction.m');
ans = ans + sloc('./find_birds/main.m');
ans = ans + sloc('./find_birds/tryPrediction.m');
ans = ans + sloc('./train_classifiers/common_training_code/buildAndTestModel.m');
ans = ans + sloc('./train_classifiers/common_training_code/computeSIFTClusters.m');
ans = ans + sloc('./train_classifiers/common_training_code/computeVW.m');
ans = ans + sloc('./train_classifiers/common_training_code/findOptimumCG.m');
ans = ans + sloc('./train_classifiers/common_training_code/prepareTrainingMatrices.m');
ans = ans + sloc('./train_classifiers/train_images/computeImageFeatures.m');
ans = ans + sloc('./train_classifiers/train_images/trainImagesMain.m');
ans = ans + sloc('./train_classifiers/train_regions/computeRegionFeatures.m');
ans = ans + sloc('./train_classifiers/train_regions/preprocessing/colorImageSet.m');
ans = ans + sloc('./train_classifiers/train_regions/preprocessing/inputTrainingLabelsForSet.m');
ans = ans + sloc('./train_classifiers/train_regions/preprocessing/segmentImageSet.m');
ans = ans + sloc('./train_classifiers/train_regions/preprocessing/concatResults.m');
ans = ans + sloc('./train_classifiers/train_regions/trainRegionsMain.m');
disp(sprintf('MATLAB Logical SLOC: %d',ans));
