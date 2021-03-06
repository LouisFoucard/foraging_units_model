p = SimParams();
p.N_time_steps = 4000;
p.display_interval = 1;
p.ant_number = 3;
p.show_quiver = true;
p.free_deposition_rate = .0001;
p.ant_velocity = 1;
p.show_mesh = false;
p.show_figure = true;
p.Lx = 100;
p.Ly = 100;
p.food_boundary_center = [50 50];
p.food_boundary_radius = 40;
p.nest_center = [50 50];
p.food_radius = 0;
%Obstacles!
o1 = LineObstacle([40 40], [40 60], 1, ObstacleTypes.DoubleVerticalLine);
o2 = LineObstacle([50 40], [80 40], 1, ObstacleTypes.DoubleHorizontalLine);
o3 = LineObstacle([50 60], [80 60], 1, ObstacleTypes.DoubleHorizontalLine);
o4 = CircleObstacle([20 25], 7);

%p.obstacles = [ LineObstacle([40 40], [40 60], 2, ObstacleTypes.DoubleVerticalLine)...
%    CircleObstacle([25 50], 4)];



sim_ants(p);
