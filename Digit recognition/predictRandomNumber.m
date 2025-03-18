function [] = predictRandomNumber(NN, X)
    
    a = cell(1, length(NN) + 1);
    n = randi(5000, 1);

    a{1} = [1; X(n, :)'];
    for i = 2:length(a) - 1
        a{i} = [1; sigmoid(NN{i - 1} * a{i - 1})];
    end
    a{end} = sigmoid(NN{end} * a{end - 1});

    [~, pred] = max(a{end});
    if pred ~= 10
       disp("Nummber predicted: " + pred);
    else
       disp("Nummber predicted: 0"); 
    end
    img = reshape(X(n, :), [20, 20]);
    imagesc(img);

end