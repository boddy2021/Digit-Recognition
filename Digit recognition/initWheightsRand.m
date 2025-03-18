function W = initWheightsRand(layers)

    W = 0;

    for layer = 1 : length(layers) - 1
        eps_init = sqrt(6) / (layers(layer) + layers(layer + 1));
        ret = rand(layers(layer + 1), layers(layer) + 1) * eps_init * 2 - eps_init;
        W = [W; ret(:)];
    end
    W = W(2:end);

end