close all;
clear;
clc;

%%
option = input("Do you want to retrain the NN? (y/n): ", 's');
load("data.mat");

if strcmp(option, "y")
    layers = [400, 60, 10];   
    lambda = 1;
    NN = trainNN(X, y, layers, lambda);  
elseif strcmp(option, "n")
    load('preTrainedNN.mat');
else 
    disp("No valid option selected!");
    return;
end

predictRandomNumber(NN, X);
