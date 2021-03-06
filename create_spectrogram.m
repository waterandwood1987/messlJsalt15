% Use this script to create spectrogram for the CHiMe3 data. 

% add the library
addpath('../mimlib');
addpath('../utils');

% working direction
% contain wav files for each channel for one 
workDir = '/Users/Near/Desktop/MESSL/mvdr_test/dev/';
% directory to save the spectrogram
outInputDir = strcat(workDir,'/spectrogram/');
try
% compute and save spectrogram for CH1 to CH6
enhance_wrapper(@(X,fail,fs,file) stubI_Spectrogram(X), ...
    workDir, outInputDir, [1 1], 1, 0, 2, '\.CH1\.wav$');
end
