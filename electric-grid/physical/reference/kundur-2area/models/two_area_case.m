function mpc = Case_Two_area
%CASECase_Two_area Power flow data for Two Aea Kundur Case.
%   Please see CASEFORMAT for details on the case file format.

%   Notes:The two-area system case is from Prabha Kundur`s textbook (Power
%   Systen Stability and Control (1). It is modtly used for studies on
%   dynamic stability, power exchange, oscillation damping, etc... The
%   system cotains 11 buses, four generators, and two areas. The two areas
%   are connceted with weak tie lines. Matpower models a generator as impedance zero behind.
%   More details about this case can be found on  http://icseg.iti.illinois.edu/two-area-system/ 
% 


%   MATPOWER

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0       0       0	0	1	1	0	20	1	1.2	0.8;
	2	2	0       0       0	0	1	1	0	20	1	1.2	0.8;
	3	2	0       0       0	0	2	1	0	20	1	1.2	0.8;
	4	2	0       0       0	0	2	1	0	20	1	1.2	0.8;
	5	1	0       0       0	0	1	1	0	230	1	1.2	0.8;
	6	1	0       0       0	0	1	1	0	230	1	1.2	0.8;
	7	1	1159	-73.50	0	0	1	1	0	230	1	1.2	0.8;
	8	1	1575	-89.9	0	0	2	1	0	230	1	1.2	0.8;
	9	1	0       0       0	0	2	1	0	230	1	1.2	0.8;
	10	1	0       0       0	0	2	1	0	230	1	1.2	0.8;
];

%% generator data
%	bus	Pg      Qg      Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1     Pc2         Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	745.86  143.612	600     0       1	0       1       900     0       0       0           0       0       0       0       0           0       0       0       0;
	2	700     300     300     0       1	0       1       900     0       0       0           0       0       0       0       0           0       0       0       0;
	3	700     550     550     550     1	0       1       900     0       0       0           0       0       0       0       0           0       0       0       0;
	4	700     -100    -100	-900	1	0       1       900     0       0       0           0       0       0       0       0           0       0       0       0;
];

%% branch data
%	fbus	tbus	r	x	b       rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	5	0.001	0.012	0       600     600     600     0       0	1	-360	360;
	2	6	0.001	0.012	0       1000	1000	1000	0       0	1	-360	360;
	3	9	0.001	0.012	0       500     500     500     0       0	1	-360	360;
	4	10	0.001	0.012	0       500     500     500     0       0	1	-360	360;
	5	6	0.005	0.05	0.075	900     900     2500	0       0	1	-360	360;
	5	6	0.005	0.05	0.075	500     500     500     0       0	1	-360	360;
	6	7	0.002	0.02	0.03	500     500     500     0       0	1	-360	360;
	6	7	0.002	0.02	0.03	600     600     600     0       0	1	-360	360;
	7	8	0.0220	0.022	0.33	500     500     500     0       0	1	-360	360;
	7	8	0.0220	0.022	0.33	1200	1200	1200	0       0	1	-360	360;
	7	8	0.0220	0.022	0.33	900     900     900     0       0	1	-360	360;
	8	9	0.002	0.02	0.03	900     900     900     0       0	1	-360	360;
	8	9	0.002	0.02	0.03	480     480     480     0       0	1	-360	360;
	9	10	0.005	0.05	0.075	1800	1800	1800	0       0	1	-360	360;
	9	10	0.005	0.05	0.075	900     900     900     0       0	1	-360	360;
	
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
	

