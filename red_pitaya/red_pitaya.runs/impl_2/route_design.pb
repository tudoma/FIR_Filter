
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
Z
DRC finished with %s
79*	vivadotcl2)
0 Errors, 29 Warnings2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
M

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103
p
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254
K

Starting %s Task
103*constraints2
Route2default:defaultZ18-103
g

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101
x

Phase %s%s
101*constraints2
1.1 2default:default22
Build Netlist & NodeGraph (MT)2default:defaultZ18-101
K
?Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 1177826c1
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 854.547 ; gain = 79.4532default:default
9
-Phase 1 Build RT Design | Checksum: f5b555a0
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 854.547 ; gain = 79.4532default:default
m

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101
f

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101
8
,Phase 2.1 Create Timer | Checksum: f5b555a0
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 854.547 ; gain = 79.4532default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
;
/Phase 2.2 Restore Routing | Checksum: f5b555a0
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 856.633 ; gain = 81.5392default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: 73159861
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 864.195 ; gain = 89.1022default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: bbca7c5c
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 864.195 ; gain = 89.1022default:default
g

Phase %s%s
101*constraints2
2.5 2default:default2!

w

Phase %s%s
101*constraints2
2.5.1 2default:default2/
Update timing with NCN CRPR2default:defaultZ18-101
l

Phase %s%s
101*constraints2
2.5.1.1 2default:default2"
Hold Budgeting2default:defaultZ18-101
>
2Phase 2.5.1.1 Hold Budgeting | Checksum: bbca7c5c
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 864.195 ; gain = 89.1022default:default
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: bbca7c5c
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 864.195 ; gain = 89.1022default:default
9
-Phase 2.5 Update Timing | Checksum: bbca7c5c
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:18 ; elapsed = 00:00:09 . Memory (MB): peak = 864.195 ; gain = 89.1022default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.614  | TNS=0      | WHS=-0.225 | THS=-5.17  |
2default:defaultZ35-57
c

Phase %s%s
101*constraints2
2.6 2default:default2
	Budgeting2default:defaultZ18-101
5
)Phase 2.6 Budgeting | Checksum: bbca7c5c
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:09 . Memory (MB): peak = 864.195 ; gain = 89.1022default:default
?
3Phase 2 Router Initialization | Checksum: bbca7c5c
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:09 . Memory (MB): peak = 864.195 ; gain = 89.1022default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
9
-Phase 3 Initial Routing | Checksum: fc549b3e
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:09 . Memory (MB): peak = 864.203 ; gain = 89.1092default:default
j

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101
l

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.1.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
=
1Phase 4.1.1 Remove Overlaps | Checksum: c215b46b
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 864.215 ; gain = 89.1212default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!

;
/Phase 4.1.2 Update Timing | Checksum: c215b46b
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 864.215 ; gain = 89.1212default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.224  | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
B
6Phase 4.1.3 collectNewHoldAndFix | Checksum: 769e24e2
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 864.215 ; gain = 89.1212default:default
>
2Phase 4.1 Global Iteration 0 | Checksum: 769e24e2
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 864.215 ; gain = 89.1212default:default
<
0Phase 4 Rip-up And Reroute | Checksum: 769e24e2
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 864.215 ; gain = 89.1212default:default
e

Phase %s%s
101*constraints2
5 2default:default2!

g

Phase %s%s
101*constraints2
5.1 2default:default2!

9
-Phase 5.1 Update Timing | Checksum: 769e24e2
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 864.215 ; gain = 89.1212default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.224  | TNS=0      | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
7
+Phase 5 Delay CleanUp | Checksum: 769e24e2
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 864.215 ; gain = 89.1212default:default
e

Phase %s%s
101*constraints2
6 2default:default2!

l

Phase %s%s
101*constraints2
6.1 2default:default2&
Full Hold Analysis2default:defaultZ18-101
i

Phase %s%s
101*constraints2
6.1.1 2default:default2!

;
/Phase 6.1.1 Update Timing | Checksum: 769e24e2
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 864.215 ; gain = 89.1212default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=0.224  | TNS=0      | WHS=0.00737| THS=0      |
2default:defaultZ35-57
>
2Phase 6.1 Full Hold Analysis | Checksum: 769e24e2
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 864.215 ; gain = 89.1212default:default
7
+Phase 6 Post Hold Fix | Checksum: 769e24e2
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 864.215 ; gain = 89.1212default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
?
3Phase 7 Verifying routed nets | Checksum: 769e24e2
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:10 . Memory (MB): peak = 866.066 ; gain = 90.9732default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 8 Depositing Routes | Checksum: 23a143b7
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:10 . Memory (MB): peak = 866.066 ; gain = 90.9732default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101
�
Post Routing Timing Summary %s
20*route2J
6| WNS=0.225  | TNS=0.000  | WHS=0.009  | THS=0.000  |
2default:defaultZ35-20
=
'The design met the timing requirement.
61*routeZ35-61
<
0Phase 9 Post Router Timing | Checksum: 23a143b7
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:10 . Memory (MB): peak = 866.066 ; gain = 90.9732default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: 23a143b7
*common
�

%s
*constraints2o
[Time (s): cpu = 00:00:00 ; elapsed = 00:00:10 . Memory (MB): peak = 866.066 ; gain = 90.9732default:default
�

%s
*constraints2o
[Time (s): cpu = 00:00:00 ; elapsed = 00:00:10 . Memory (MB): peak = 866.066 ; gain = 90.9732default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
532default:default2
302default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:202default:default2
00:00:102default:default2
866.0662default:default2
90.9732default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
�
#The results of DRC are in file %s.
168*coretcl2�
TC:/Github/FIR_Filter/red_pitaya/red_pitaya.runs/impl_2/red_pitaya_top_drc_routed.rptTC:/Github/FIR_Filter/red_pitaya/red_pitaya.runs/impl_2/red_pitaya_top_drc_routed.rpt2default:default8Z2-168
\
+Creating Default Power Bel for instance %s
23*power2
i_DNA2default:defaultZ33-23
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
�
�MMCM/PLL RST static_probability should be either 0 or 1, power analysis is using 0 by default.
Use 'set_switching_activity -static_probability 1 -signal_rate 0 [get_nets %s]'  to set the static_probabiblity to '1'  if desired.207*power2#
i_analog/RESET02default:defaultZ33-218
�
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.1872default:default2
866.0662default:default2
0.0002default:defaultZ17-268


End Record