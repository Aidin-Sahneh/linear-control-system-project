Linear Control Systems Project
==============================

This repository contains the project for the Linear Control Systems course at K.N. Toosi University of Technology, under the supervision of Dr. Taghirad.

Project Overview
----------------

The primary goal of this project is to perform system identification and controller design based on provided frequency response data (`Data.mat`).

The project systematically covers:

1.  **System Analysis:** Plotting and interpreting the initial Bode diagram from raw data.

2.  **System Identification:**

    -   Manually estimating the system's transfer function by analyzing Bode plot slopes, break frequencies, and phase behavior.

    -   Using the MATLAB System Identification Toolbox to find a precise transfer function model.

3.  **Stability Analysis:**

    -   Applying the Routh-Hurwitz criterion to determine the range of gain $K$ for stability.

    -   Plotting the Root Locus to visually analyze system stability and controller effects.

4.  **Controller Design:**

    -   Designing a **Lead-Lag compensator** in the frequency domain to meet specific performance criteria (e.g., phase margin, overshoot).

    -   Designing a controller using the **Sensitivity Function** method to meet settling time and undershoot requirements.

    -   Adding a **PI controller** to the sensitivity-based design to eliminate steady-state error for a ramp input.

Final Identified System
-----------------------

The transfer function identified from the data using the System Identification Toolbox was:

$$G(s) = \frac{0.1s - 0.2}{s^3 + 0.9s^2 + 9s}$$

This system is **Type 1**, **non-minimum-phase** (due to the zero at $s=2$), and **3rd order**.

Folder Structure
----------------

```
.
├── MATLAB_Codes/           # All .m scripts and data files
│   ├── Q1_Bode_Plot.m
│   ├── Q3_System_Identification.m
│   ├── Q4_Routh_Hurwitz.m
│   ├── Q5_Root_Locus.m
│   ├── Q6_Lead_Lag_Design.m
│   ├── Q7_Sensitivity_Design.m
│   └── Data.mat
├── Report/
│   └── Linear_Control_Project_Report.pdf  # The full project report
├── .gitignore
├── LICENSE
└── README.md

```

How to Run
----------

1.  Clone this repository:

    ```
    git clone https://github.com/Aidin-Sahneh/linear-control-system-project.git

    ```

2.  Open MATLAB.

3.  Navigate to the `MATLAB_Codes/` directory.

4.  Run any of the `.m` scripts (e.g., `Q6_Lead_Lag_Design.m`) to see the results for that specific question.

**Dependencies:**

-   MATLAB

-   Control System Toolbox

-   System Identification Toolbox (for `Q3_System_Identification.m`)

Key Results
-----------

### Lead-Lag Compensator Design

A lead-lag compensator was designed to improve the transient response (overshoot). The final open-loop system with the compensator was:

$$ G_{total}(s) = \left( 1.4 \frac{1.2s + 1}{2.5s + 1} \right) \left( 41.95 \frac{0.28s + 1}{0.3s + 1} \right) \left( \frac{0.1}{s^2 + 0.9s + 9} \right) $$

This design successfully reduced the overshoot to **16.4%** and achieved a phase margin of **70.69 degrees**.

### Sensitivity-Based Controller Design

A controller was designed using sensitivity functions to achieve a settling time under 6 seconds and an undershoot below 6%. A PI controller was then added to achieve **zero steady-state error** for a ramp input.
