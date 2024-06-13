-------------------------------------------------------------------------
EMBEDDED AND REAL TIME CONTROL: GROUP 4

Components: Azadegan, Corbioli, Fusari, Garbo

-------------------------------------------------------------------------

This GitHub folder contains all the files Laboratory prepared for the course Embedded and Real Time control of the Master's Degree Control Systems Engineering of University of Padua.

All laboratory folder (LAB0, LAB1, LAB2, LAB3, LAB4, LAB5) contains:
	- a .pdf file describing the activity goals,
	- a STM32CubeIDE project with the solutions implementations on a STM32 microcontroller,
	- a LABData folder with all the data acquired through Matlab (starting from LAB2),
	- a datalogger.m Matlab script used for acquiring data,
	- a PlotOutput folder with all the plots created,
	- a Plot_Creator... .m Matlab script for the creation of the plots;

LAB3 moreover has another Matlab script (FCvsFB) that creates two plots that highliths the differences between the motor control techniques Forward/Coast and Forward/Brake. Moreover it also has the folder OLD_LAB3_wo_I2C that contains the STM32 project of LAB3 solving all the exercises but the Bonus on Ex1 reguarding the usage of keypad. Finally folder Matlab_PID_Tuning contains a Matlab script and a Simulink model for tuning a PI controller for the wheel speed basing on a motor model.

LAB4 contains also another Matlab script: AdaptiveControllerGraphs.m that creates the graphs for the adaptive controller analysis
In addition LAB4 contains also two figures of the two circuits with a possible turn numeration used in the very first data analysis.


The folder "VIDEO" contains some clips taken during the lab showing the goodness of some adopted solutions.

The folder "Other" contains some extra materials, like a powerpoint template for presentations, a report template and a simple STM32 project.