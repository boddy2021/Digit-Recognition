function [NN] = trainNN(X, y, layers, lambda)

    initNN = initWheightsRand(layers);
    costF = @(p) nnCostGrad(layers, p, X, y, lambda);
    maxIters = optimset('MaxIter', 70);
    
    [NN, ~] = fmincg(costF, initNN, maxIters);
    NN = theta_arr2cell(layers, NN);

end