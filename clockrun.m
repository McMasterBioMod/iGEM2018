% Define Initial concentrations
C0 = [0.0715, 0.0101, 0, 1e-6, 8.36e-9, 0, 0, 0.0764];

% Define time span.
tspan = [0,480];

% Run ODE solver.
[t, y] = ode15s(@clockmechanism, tspan, C0)

