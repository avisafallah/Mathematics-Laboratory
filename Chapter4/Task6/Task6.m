b = 3;
g1 = @(x) -(x^2+1)/b;
root1 = fixed_point_iteration(g1,-1)

g2 = @(x) -1*(sqrt((-(b*x+1))));
root2 = fixed_point_iteration(g2,-1)
