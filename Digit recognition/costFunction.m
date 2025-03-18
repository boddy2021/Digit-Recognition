function J = costFunction(theta, X, Y, lambda)
    
    J = 0;
    [m, n] = size(X);
    
    a = {};
    for i = 1:length(theta)
        a = [a, size(theta{i}, 1)];
    end

    dummy = zeros(n, 1);
    a = [{dummy}, a];

    for t = 1:m

        a{1} = [1; X(t, :)'];
        for i = 2:length(a) - 1
            a{i} = [1; sigmoid(theta{i - 1} * a{i - 1})];
        end
        a{end} = sigmoid(theta{end} * a{end - 1});

        y_idx = zeros(1, length(a{end}));
        y_idx(Y(t)) = 1;

        J = J - sum(y_idx' .* log(a{end}) + (1 - y_idx)' .* log(1 - a{end}));

    end

 theta_penalty = 0;
 for i = 1:length(theta)
    theta_penalty = theta_penalty + sum(sum(theta{i}(:, 2: length(a{i})) .^ 2));
 end
theta_penalty = lambda/2 * theta_penalty;
J = (J + theta_penalty) / m;


end