function grad = gradient(theta, X, Y, lambda)
   
    [m, n] = size(X);
    
    a = {};
    grad = {};
    dlt = {};

    for i = 1:length(theta)
        a = [a, zeros(size(theta{i}, 1), 1)];
        dlt = [dlt, zeros(size(theta{i}, 1) + 1, 1)];
        grad = [grad, zeros(size(theta{i}))];
    end

    z = a;
    dlt{end} = dlt{end}(2:end);
    
    dummy = zeros(n, 1);
    a = [{dummy}, a];

    for t = 1:m

        a{1} = [1; X(t, :)'];
        for i = 2:length(a) - 1
            z{i - 1} = theta{i - 1} * a{i - 1};
            a{i} = [1; sigmoid(z{i - 1})];
        end
        z{end} = theta{end} * a{end - 1};
        a{end} = sigmoid(z{end});

        y_idx = zeros(1, length(a{end}));
        y_idx(Y(t)) = 1;
        
        dlt{end} = a{end} - y_idx';
        grad{end} = grad{end} + dlt{end} * a{end - 1}';

        for i = length(dlt) - 1:1
            dlt{i} = theta{i + 1}' * dlt{i + 1} .* [1; sigmoidGradient(z{i})];
            dlt{i} = dlt{i}(2:end);
            grad{i} = grad{i} + dlt{i} * a{i}';
        end

    end
    
    for i = 1:length(grad)
        grad{i} = grad{i}/m;
        grad{i}(:, 2:end) = grad{i}(:, 2:end) + lambda/m * grad{i}(:, 2:end);
    end
    
    
end