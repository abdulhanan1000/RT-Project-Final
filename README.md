# BLDC FOC Universal Controller

Scalable Field-Oriented Control (FOC) platform for Brushless DC motors in ventilation systems. Developed as part of the **Advanced Real-Time Systems** course at Frankfurt University of Applied Sciences.

## Requirements

- MATLAB R2025b (This is important as older versions vary for some components)
- Simulink
- Simscape
- Simscape Electrical

## How to Run

1. Open `BLDC_FOC_Universal_Controller.slx` in Simulink.
2. Double-click the **MOTOR_CONFIG** block and select a motor from the dropdown (Small 100W / Medium 500W / Large 2kW).
3. Click **OK** to load the parameters into the workspace.
4. Run the simulation.

> The model uses a fixed-step ode4 solver at 10 µs. Simulation may take ~90 seconds per 1 second of simulated time. This setting by default is set to 100 µs for demo purposes.

## Project Structure

| File | Description |
|------|-------------|
| `BLDC_FOC_Universal_Controller.slx` | Main Simulink model |
| `initialization.m` | Mask callback class for motor configuration UI |
| `motor_configs.m` | Motor parameter definitions (Small / Medium / Large) |
| `Presentation AND Report/` | Scientific report and presentation |

## Authors

- Abdul Hanan Javaid (1541621)
- Muhammad Usama (1541311)
- Muhammad Saad Zafar (1541717)

## Github Link
https://github.com/abdulhanan1000/RT-Project-Final
