%From https://stackoverflow.com/questions/25641029/generate-all-possible-combinations-of-a-matrix-in-matlab

% Generate all matrix permutations with cells in {0, 1}
c = cell(1,16);
[c{end:-1:1}] = ndgrid([0 1]);
combs = cell2mat(cellfun(@(x) x(:), c, 'uni', 0));
combs = reshape(combs.',4,4,[]);

% Find and plot all ranks
ranks = [];
for i=1:length(combs)
   ranks(i) = rank(combs(:,:,(i)));
end

histogram(ranks)



% Generate all matrix permutations with cells in {0, 1, 2}
c = cell(1,16);
[c{end:-1:1}] = ndgrid([0 1 2]);
combs = cell2mat(cellfun(@(x) x(:), c, 'uni', 0));
combs = reshape(combs.',4,4,[]);

% Find and plot all ranks
ranks = [];
for i=1:length(combs)
   ranks(i) = rank(combs(:,:,(i)));
end

histogram(ranks)
