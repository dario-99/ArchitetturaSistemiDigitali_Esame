
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/utils_1/imports/synth_1/TestMachineOnBoard.dcp}Z12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/utils_1/imports/synth_1/TestMachineOnBoard.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
n
Command: %s
53*	vivadotcl2=
;synth_design -top TestMachineOnBoard -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
5016Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1330.344 ; gain = 440.707
h px� 
�
Uactual for formal port '%s' is neither a static name nor a globally static expression5370*oasys2	
data_in2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/DataPath.vhd2
588@Z8-9112h px� 
�
synthesizing module '%s'638*oasys2
TestMachineOnBoard2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/TestMachineOnBoard.vhd2
158@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
ButtonDebouncer2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/RiconoscitoreSequenze/RiconoscitoreSequenze.srcs/sources_1/imports/new/ButtonDebouncer.vhd2
458@Z8-638h px� 
�
default block is never used226*oasys2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/RiconoscitoreSequenze/RiconoscitoreSequenze.srcs/sources_1/imports/new/ButtonDebouncer.vhd2
608@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ButtonDebouncer2
02
12�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/RiconoscitoreSequenze/RiconoscitoreSequenze.srcs/sources_1/imports/new/ButtonDebouncer.vhd2
458@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
TestMachine2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/TestMachine.vhd2
208@Z8-638h px� 
�
synthesizing module '%s'638*oasys2

DataPath2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/DataPath.vhd2
288@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
MacchinaCombinatoria2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/MacchinaCombinatoria.vhd2
198@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MacchinaCombinatoria2
02
12�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/MacchinaCombinatoria.vhd2
198@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
	Contatore2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/Contatore.vhd2
268@Z8-638h px� 
E
%s
*synth2-
+	Parameter N bound to: 16 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	Contatore2
02
12�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/Contatore.vhd2
268@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
ROM2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/ROM.vhd2
218@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ROM2
02
12�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/ROM.vhd2
218@Z8-256h px� 
�
synthesizing module '%s'638*oasys2	
Memoria2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/Memoria.vhd2
318@Z8-638h px� 
D
%s
*synth2,
*	Parameter N bound to: 4 - type: integer 
h p
x
� 
E
%s
*synth2-
+	Parameter M bound to: 16 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
Memoria2
02
12�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/Memoria.vhd2
318@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

DataPath2
02
12�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/DataPath.vhd2
288@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
ControlUnit2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/ControlUnit.vhd2
248@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ControlUnit2
02
12�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/ControlUnit.vhd2
248@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TestMachine2
02
12�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/TestMachine.vhd2
208@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TestMachineOnBoard2
02
12�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/sources_1/new/TestMachineOnBoard.vhd2
158@Z8-256h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
read2	
MemoriaZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1439.930 ; gain = 550.293
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1439.930 ; gain = 550.293
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1439.930 ; gain = 550.293
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1439.9302
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/constrs_1/new/constraints.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/constrs_1/new/constraints.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.srcs/constrs_1/new/constraints.xdc2&
$.Xil/TestMachineOnBoard_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1537.1452
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0022

1537.1452
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
x
3inferred FSM for state register '%s' in module '%s'802*oasys2
stato_corrente_reg2
ControlUnitZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  s_init |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                  s_read |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_                  s_save |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_                  s_view |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_                   s_inc |                              100 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
stato_corrente_reg2

sequential2
ControlUnitZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   4 Input      1 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 19    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 6     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 17    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 4     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |     8|
h px� 
2
%s*synth2
|3     |LUT1   |     2|
h px� 
2
%s*synth2
|4     |LUT2   |     4|
h px� 
2
%s*synth2
|5     |LUT3   |     8|
h px� 
2
%s*synth2
|6     |LUT4   |    12|
h px� 
2
%s*synth2
|7     |LUT5   |    40|
h px� 
2
%s*synth2
|8     |LUT6   |    27|
h px� 
2
%s*synth2
|9     |MUXF7  |     6|
h px� 
2
%s*synth2
|10    |MUXF8  |     3|
h px� 
2
%s*synth2
|11    |FDRE   |    99|
h px� 
2
%s*synth2
|12    |IBUF   |     3|
h px� 
2
%s*synth2
|13    |OBUF   |     8|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1537.145 ; gain = 647.508
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 1537.145 ; gain = 550.293
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1537.145 ; gain = 647.508
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1537.1452
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
17Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1537.1452
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

a37883dfZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422
32
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:232

00:00:262

1537.1452

1055.785Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1537.1452
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�D:/Desktop/magistrale/1_anno/1 SEMESTRE/architettura/esercizi/ESERCIZI TESINA/SistemaTestingg/SistemaTestingg.runs/synth_1/TestMachineOnBoard.dcpZ17-1381h px� 
�
%s4*runtcl2|
zExecuting : report_utilization -file TestMachineOnBoard_utilization_synth.rpt -pb TestMachineOnBoard_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Jul 10 17:51:13 2024Z17-206h px� 


End Record