function [J, grad] = nnCostGrad(layers, theta, X, Y, lambda)
   
    theta_cell = theta_arr2cell(layers, theta);
    J = costFunction(theta_cell, X, Y, lambda);
    grad = gradient(theta_cell, X, Y, lambda);
    grad = cell2arr(grad);

end