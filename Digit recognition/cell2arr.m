function rez = cell2arr(n)
    mem = 0;
    for i = 1:length(n)
        mem = [mem; n{i}(:)];
    end
    rez = mem(2:end);
end