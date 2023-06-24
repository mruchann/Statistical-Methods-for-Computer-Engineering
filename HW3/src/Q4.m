observed = [34 32 15 19; 56 58 75 71];

row = sum(observed')'; 
column = sum(observed); 
total = sum(row);

x = length(row);
y = length(column); 

expected = zeros(size(observed)); 

for i = 1:x
    for j = 1:y
        expected(i,j) = row(i) * column(j) / total; 
    end
end

formula = (observed - expected).^2./ expected;

degree_of_freedom = (x-1) * (y-1);

chi_square = sum(sum(formula))

p_value = 1 - chi2cdf(chi_square, degree_of_freedom)
