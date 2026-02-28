% Small Motor - 100W Residential Ventilation
SmallMotor.Name = 'Small Motor (100W)';
SmallMotor.R = 2.5;              % Phase resistance (Ohm)
SmallMotor.L = 0.005;            % Phase inductance (H)
SmallMotor.Ke = 0.05;            % Back-EMF constant (V/rad/s)
SmallMotor.Kt = 0.05;            % Torque constant (Nm/A)
SmallMotor.J = 0.001;            % Inertia (kg*m^2)
SmallMotor.B = 0.00005;          % Viscous damping (Nm*s/rad)
SmallMotor.P = 4;                % Number of poles
SmallMotor.Imax = 3;             % Maximum current (A)
SmallMotor.Vdc = 24;             % DC bus voltage (V)
SmallMotor.RatedRPM = 3000;      % Rated speed (RPM)
SmallMotor.RatedPower = 100;     % Rated power (W)

% Medium Motor - 500W Commercial HVAC
MediumMotor.Name = 'Medium Motor (500W)';
MediumMotor.R = 0.8;             % Phase resistance (Ohm)
MediumMotor.L = 0.003;           % Phase inductance (H)
MediumMotor.Ke = 0.12;           % Back-EMF constant (V/rad/s)
MediumMotor.Kt = 0.12;           % Torque constant (Nm/A)
MediumMotor.J = 0.005;           % Inertia (kg*m^2)
MediumMotor.B = 0.0001;          % Viscous damping (Nm*s/rad)
MediumMotor.P = 6;               % Number of poles
MediumMotor.Imax = 10;           % Maximum current (A)
MediumMotor.Vdc = 48;            % DC bus voltage (V)
MediumMotor.RatedRPM = 2000;     % Rated speed (RPM)
MediumMotor.RatedPower = 500;    % Rated power (W)

% Large Motor - 2kW Industrial Ventilation
LargeMotor.Name = 'Large Motor (2kW)';
LargeMotor.R = 0.2;              % Phase resistance (Ohm)
LargeMotor.L = 0.0015;           % Phase inductance (H)
LargeMotor.Ke = 0.25;            % Back-EMF constant (V/rad/s)
LargeMotor.Kt = 0.25;            % Torque constant (Nm/A)
LargeMotor.J = 0.02;             % Inertia (kg*m^2)
LargeMotor.B = 0.0002;           % Viscous damping (Nm*s/rad)
LargeMotor.P = 8;                % Number of poles
LargeMotor.Imax = 20;            % Maximum current (A)
LargeMotor.Vdc = 96;             % DC bus voltage (V)
LargeMotor.RatedRPM = 1500;      % Rated speed (RPM)
LargeMotor.RatedPower = 2000;    % Rated power (W)

% Set default configuration
CurrentMotor = SmallMotor;

fprintf('\n========================================\n');
fprintf('Motor Configurations Loaded:\n');
fprintf('  1. %s\n', SmallMotor.Name);
fprintf('  2. %s\n', MediumMotor.Name);
fprintf('  3. %s\n', LargeMotor.Name);
fprintf('========================================\n');
fprintf('Default: %s\n', CurrentMotor.Name);
fprintf('Use select_motor(1/2/3) to switch\n\n');
