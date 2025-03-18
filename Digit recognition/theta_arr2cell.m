function theta_cell = theta_arr2cell(layers, theta)
    theta_cell = {};
    poz = 1;
    for layer = 1 : length(layers) - 1
        theta_cell = [theta_cell, reshape(theta(poz : poz - 1+ ((layers(layer) + 1) * layers(layer + 1))), [layers(layer + 1) , layers(layer) + 1])];
        poz = poz + ((layers(layer) + 1) * layers(layer + 1));
    end
end