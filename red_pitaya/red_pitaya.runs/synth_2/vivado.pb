
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
Y
Failed to get a license: %s
295*common2"
Implementation2default:defaultZ17-301
–
πWARNING: No 'Implementation' license found. This message may be safely ignored if a Vivado WebPACK or device-locked license, common for board kits, will be used during implementation.

4*vivadoZ15-19
V
 Attempting to get a license: %s
78*common2
	Synthesis2default:defaultZ17-78
T
Failed to get a license: %s
295*common2
	Synthesis2default:defaultZ17-301
É
+Loading parts and site information from %s
36*device2?
+C:/Xilinx/Vivado/2013.3/data/parts/arch.xml2default:defaultZ21-36
ê
!Parsing RTL primitives file [%s]
14*netlist2U
AC:/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-14
ô
*Finished parsing RTL primitives file [%s]
11*netlist2U
AC:/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-11
5
Refreshing IP repositories
234*coregenZ19-234
;
No user repositories specified
1154*coregenZ19-1704
p
Loaded Vivado repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2013.3/data/ip2default:defaultZ19-2313
Ç
3Changing the constrs_type of fileset '%s' to '%s'.
11*project2
	constrs_12default:default2
XDC2default:defaultZ1-11
r
Command: %s
53*	vivadotcl2J
6synth_design -top red_pitaya_top -part xc7z010clg400-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
ï
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-347
Ö
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-349
ú
%s*synth2å
xStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 252.320 ; gain = 101.234
2default:default
”
synthesizing module '%s'638*oasys2"
red_pitaya_top2default:default2`
JC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/red_pitaya_top.v2default:default2
202default:default8@Z8-638
—
synthesizing module '%s'638*oasys2!
red_pitaya_ps2default:default2_
IC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/red_pitaya_ps.v2default:default2
472default:default8@Z8-638
µ
synthesizing module '%s'638*oasys2
BUFG2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
4342default:default8@Z8-638

%done synthesizing module '%s' (%s#%s)256*oasys2
BUFG2default:default2
12default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
4342default:default8@Z8-256
‡
synthesizing module '%s'638*oasys2"
system_wrapper2default:default2n
XC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/hdl/system_wrapper.v2default:default2
32default:default8@Z8-638
–
synthesizing module '%s'638*oasys2
system2default:default2f
PC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/hdl/system.v2default:default2
42default:default8@Z8-638
µ
synthesizing module '%s'638*oasys2
GND2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
24042default:default8@Z8-638

%done synthesizing module '%s' (%s#%s)256*oasys2
GND2default:default2
22default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
24042default:default8@Z8-256
§
synthesizing module '%s'638*oasys21
system_processing_system7_0_02default:default2°
äc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2default:default2
572default:default8@Z8-638
≈
synthesizing module '%s'638*oasys2>
*processing_system7_v5_3_processing_system72default:default2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
1532default:default8@Z8-638
f
%s*synth2W
C	Parameter C_USE_DEFAULT_ACP_USER_VAL bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_ACP_ARUSER_VAL bound to: 31 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_ACP_AWUSER_VAL bound to: 31 - type: integer 
2default:default
h
%s*synth2Y
E	Parameter C_M_AXI_GP0_THREAD_ID_WIDTH bound to: 12 - type: integer 
2default:default
h
%s*synth2Y
E	Parameter C_M_AXI_GP1_THREAD_ID_WIDTH bound to: 12 - type: integer 
2default:default
k
%s*synth2\
H	Parameter C_M_AXI_GP0_ENABLE_STATIC_REMAP bound to: 0 - type: integer 
2default:default
k
%s*synth2\
H	Parameter C_M_AXI_GP1_ENABLE_STATIC_REMAP bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_M_AXI_GP0_ID_WIDTH bound to: 12 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_M_AXI_GP1_ID_WIDTH bound to: 12 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_GP0_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_GP1_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_HP0_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_HP1_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_HP2_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_HP3_ID_WIDTH bound to: 6 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S_AXI_ACP_ID_WIDTH bound to: 3 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_HP0_DATA_WIDTH bound to: 64 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_HP1_DATA_WIDTH bound to: 64 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_HP2_DATA_WIDTH bound to: 64 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_S_AXI_HP3_DATA_WIDTH bound to: 64 - type: integer 
2default:default
e
%s*synth2V
B	Parameter C_INCLUDE_ACP_TRANS_CHECK bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_NUM_F2P_INTR_INPUTS bound to: 1 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_FCLK_CLK0_BUF bound to: true - type: string 
2default:default
]
%s*synth2N
:	Parameter C_FCLK_CLK1_BUF bound to: true - type: string 
2default:default
]
%s*synth2N
:	Parameter C_FCLK_CLK2_BUF bound to: true - type: string 
2default:default
]
%s*synth2N
:	Parameter C_FCLK_CLK3_BUF bound to: true - type: string 
2default:default
^
%s*synth2O
;	Parameter C_EMIO_GPIO_WIDTH bound to: 64 - type: integer 
2default:default
b
%s*synth2S
?	Parameter C_INCLUDE_TRACE_BUFFER bound to: 0 - type: integer 
2default:default
f
%s*synth2W
C	Parameter C_TRACE_BUFFER_FIFO_SIZE bound to: 128 - type: integer 
2default:default
g
%s*synth2X
D	Parameter C_TRACE_BUFFER_CLOCK_DELAY bound to: 12 - type: integer 
2default:default
h
%s*synth2Y
E	Parameter USE_TRACE_DATA_EDGE_DETECTOR bound to: 0 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_PS7_SI_REV bound to: PRODUCTION - type: string 
2default:default
[
%s*synth2L
8	Parameter C_EN_EMIO_ENET0 bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_EN_EMIO_ENET1 bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_EN_EMIO_TRACE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_DQ_WIDTH bound to: 32 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_DQS_WIDTH bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_DM_WIDTH bound to: 4 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_MIO_PRIMITIVE bound to: 54 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_PACKAGE_NAME bound to: clg400 - type: string 
2default:default
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21712default:default8@Z8-4446
∂
synthesizing module '%s'638*oasys2
BIBUF2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
2692default:default8@Z8-638
Ò
%done synthesizing module '%s' (%s#%s)256*oasys2
BIBUF2default:default2
32default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
2692default:default8@Z8-256
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21722default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21732default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21742default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21752default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21762default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21772default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21782default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21792default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21802default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21812default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21822default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21832default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21842default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21892default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21952default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21952default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
21952default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22012default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22072default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22072default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22072default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22072default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
∂
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
22132default:default8@Z8-4446
‘
ÅMessage '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-44462default:default2
1002default:defaultZ17-14
∂
synthesizing module '%s'638*oasys2
PS72default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
193392default:default8@Z8-638
Ò
%done synthesizing module '%s' (%s#%s)256*oasys2
PS72default:default2
42default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
193392default:default8@Z8-256
Ä
%done synthesizing module '%s' (%s#%s)256*oasys2>
*processing_system7_v5_3_processing_system72default:default2
52default:default2
12default:default2¥
ùc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/hdl/verilog/processing_system7_v5_3_processing_system7.v2default:default2
1532default:default8@Z8-256
≠
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
inst2default:default2>
*processing_system7_v5_3_processing_system72default:default2
6732default:default2
6602default:default2°
äc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2default:default2
3692default:default8@Z8-350
ﬂ
%done synthesizing module '%s' (%s#%s)256*oasys21
system_processing_system7_0_02default:default2
62default:default2
12default:default2°
äc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/synth/system_processing_system7_0_0.v2default:default2
572default:default8@Z8-256
Ú
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2(
processing_system7_02default:default21
system_processing_system7_0_02default:default2
912default:default2
862default:default2f
PC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/hdl/system.v2default:default2
3132default:default8@Z8-350
ã
%done synthesizing module '%s' (%s#%s)256*oasys2
system2default:default2
72default:default2
12default:default2f
PC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/hdl/system.v2default:default2
42default:default8@Z8-256
õ
%done synthesizing module '%s' (%s#%s)256*oasys2"
system_wrapper2default:default2
82default:default2
12default:default2n
XC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/hdl/system_wrapper.v2default:default2
32default:default8@Z8-256
…
synthesizing module '%s'638*oasys2
	axi_slave2default:default2[
EC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/axi_slave.v2default:default2
522default:default8@Z8-638
S
%s*synth2D
0	Parameter AXI_DW bound to: 32 - type: integer 
2default:default
S
%s*synth2D
0	Parameter AXI_AW bound to: 32 - type: integer 
2default:default
S
%s*synth2D
0	Parameter AXI_IW bound to: 12 - type: integer 
2default:default
R
%s*synth2C
/	Parameter AXI_SW bound to: 4 - type: integer 
2default:default
ˇ
merging register '%s' into '%s'3619*oasys2$
axi_rvalid_o_reg2default:default2#
axi_rlast_o_reg2default:default2[
EC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/axi_slave.v2default:default2
2082default:default8@Z8-4471
Ñ
%done synthesizing module '%s' (%s#%s)256*oasys2
	axi_slave2default:default2
92default:default2
12default:default2[
EC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/axi_slave.v2default:default2
522default:default8@Z8-256
ç
%done synthesizing module '%s' (%s#%s)256*oasys2!
red_pitaya_ps2default:default2
102default:default2
12default:default2_
IC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/red_pitaya_ps.v2default:default2
472default:default8@Z8-256
Ÿ
synthesizing module '%s'638*oasys2%
red_pitaya_analog2default:default2c
MC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/red_pitaya_analog.v2default:default2
642default:default8@Z8-638
N
%s*synth2?
+	Parameter PWM_FULL bound to: 8'b10011100 
2default:default
∏
synthesizing module '%s'638*oasys2
IBUFDS2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
61742default:default8@Z8-638
^
%s*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:default
X
%s*synth2I
5	Parameter DIFF_TERM bound to: FALSE - type: string 
2default:default
W
%s*synth2H
4	Parameter DQS_BIAS bound to: FALSE - type: string 
2default:default
[
%s*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:default
Z
%s*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:default
]
%s*synth2N
:	Parameter IFD_DELAY_VALUE bound to: AUTO - type: string 
2default:default
[
%s*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:default
Ù
%done synthesizing module '%s' (%s#%s)256*oasys2
IBUFDS2default:default2
112default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
61742default:default8@Z8-256
º
synthesizing module '%s'638*oasys2
	PLLE2_ADV2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
190492default:default8@Z8-638
\
%s*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:default
[
%s*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:default
[
%s*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:default
S
%s*synth2D
0	Parameter IS_CLKINSEL_INVERTED bound to: 1'b0 
2default:default
Q
%s*synth2B
.	Parameter IS_PWRDWN_INVERTED bound to: 1'b0 
2default:default
N
%s*synth2?
+	Parameter IS_RST_INVERTED bound to: 1'b0 
2default:default
Y
%s*synth2J
6	Parameter CLKFBOUT_MULT bound to: 8 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT0_DIVIDE bound to: 8 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT1_DIVIDE bound to: 4 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT2_DIVIDE bound to: 4 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT3_DIVIDE bound to: 4 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:default
_
%s*synth2P
<	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKIN1_PERIOD bound to: 8.000000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKIN2_PERIOD bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
`
%s*synth2Q
=	Parameter CLKOUT2_PHASE bound to: -45.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT5_PHASE bound to: 0.000000 - type: float 
2default:default
\
%s*synth2M
9	Parameter REF_JITTER1 bound to: 0.010000 - type: float 
2default:default
\
%s*synth2M
9	Parameter REF_JITTER2 bound to: 0.010000 - type: float 
2default:default
¯
%done synthesizing module '%s' (%s#%s)256*oasys2
	PLLE2_ADV2default:default2
122default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
190492default:default8@Z8-256
∑
synthesizing module '%s'638*oasys2
ODDR2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
155272default:default8@Z8-638
c
%s*synth2T
@	Parameter DDR_CLK_EDGE bound to: OPPOSITE_EDGE - type: string 
2default:default
C
%s*synth24
 	Parameter INIT bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter SRTYPE bound to: SYNC - type: string 
2default:default
L
%s*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:default
M
%s*synth2>
*	Parameter IS_D1_INVERTED bound to: 1'b0 
2default:default
M
%s*synth2>
*	Parameter IS_D2_INVERTED bound to: 1'b0 
2default:default
Û
%done synthesizing module '%s' (%s#%s)256*oasys2
ODDR2default:default2
132default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
155272default:default8@Z8-256
∑
synthesizing module '%s'638*oasys2
XADC2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
272012default:default8@Z8-638
T
%s*synth2E
1	Parameter IS_CONVSTCLK_INVERTED bound to: 1'b0 
2default:default
O
%s*synth2@
,	Parameter IS_DCLK_INVERTED bound to: 1'b0 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
v
%s*synth2g
S	Parameter SIM_MONITOR_FILE bound to: ../sim_1/xadc_sim_values.txt - type: string 
2default:default
V
%s*synth2G
3	Parameter INIT_40 bound to: 16'b0000000000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_41 bound to: 16'b0010111100001111 
2default:default
V
%s*synth2G
3	Parameter INIT_42 bound to: 16'b0000010000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_43 bound to: 16'b0000000000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_44 bound to: 16'b0000000000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_45 bound to: 16'b0000000000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_46 bound to: 16'b0000000000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_47 bound to: 16'b0000000000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_48 bound to: 16'b0100111111100000 
2default:default
V
%s*synth2G
3	Parameter INIT_49 bound to: 16'b0000001100000011 
2default:default
V
%s*synth2G
3	Parameter INIT_4A bound to: 16'b0100011111100000 
2default:default
V
%s*synth2G
3	Parameter INIT_4B bound to: 16'b0000000000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_4C bound to: 16'b0000100000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_4D bound to: 16'b0000001100000011 
2default:default
V
%s*synth2G
3	Parameter INIT_4E bound to: 16'b0000000000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_4F bound to: 16'b0000000000000000 
2default:default
V
%s*synth2G
3	Parameter INIT_50 bound to: 16'b1011010111101101 
2default:default
V
%s*synth2G
3	Parameter INIT_51 bound to: 16'b0101011111100100 
2default:default
V
%s*synth2G
3	Parameter INIT_52 bound to: 16'b1010000101000111 
2default:default
V
%s*synth2G
3	Parameter INIT_53 bound to: 16'b1100101000110011 
2default:default
V
%s*synth2G
3	Parameter INIT_54 bound to: 16'b1010100100111010 
2default:default
V
%s*synth2G
3	Parameter INIT_55 bound to: 16'b0101001011000110 
2default:default
V
%s*synth2G
3	Parameter INIT_56 bound to: 16'b1001010101010101 
2default:default
V
%s*synth2G
3	Parameter INIT_57 bound to: 16'b1010111001001110 
2default:default
V
%s*synth2G
3	Parameter INIT_58 bound to: 16'b0101100110011001 
2default:default
V
%s*synth2G
3	Parameter INIT_59 bound to: 16'b0101010101010101 
2default:default
V
%s*synth2G
3	Parameter INIT_5A bound to: 16'b1001100110011001 
2default:default
V
%s*synth2G
3	Parameter INIT_5B bound to: 16'b0110101010101010 
2default:default
V
%s*synth2G
3	Parameter INIT_5C bound to: 16'b0101000100010001 
2default:default
V
%s*synth2G
3	Parameter INIT_5D bound to: 16'b0101000100010001 
2default:default
V
%s*synth2G
3	Parameter INIT_5E bound to: 16'b1001000111101011 
2default:default
V
%s*synth2G
3	Parameter INIT_5F bound to: 16'b0110011001100110 
2default:default
Û
%done synthesizing module '%s' (%s#%s)256*oasys2
XADC2default:default2
142default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
272012default:default8@Z8-256
ï
%done synthesizing module '%s' (%s#%s)256*oasys2%
red_pitaya_analog2default:default2
152default:default2
12default:default2c
MC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/red_pitaya_analog.v2default:default2
642default:default8@Z8-256
—
synthesizing module '%s'638*oasys2!
red_pitaya_hk2default:default2_
IC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/red_pitaya_hk.v2default:default2
352default:default8@Z8-638
∫
synthesizing module '%s'638*oasys2
DNA_PORT2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
10502default:default8@Z8-638
Ö
%s*synth2v
b	Parameter SIM_DNA_VALUE bound to: 57'b010000010001101000101011001111000100110101011110011011110 
2default:default
ˆ
%done synthesizing module '%s' (%s#%s)256*oasys2
DNA_PORT2default:default2
162default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
10502default:default8@Z8-256
ç
%done synthesizing module '%s' (%s#%s)256*oasys2!
red_pitaya_hk2default:default2
172default:default2
12default:default2_
IC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/red_pitaya_hk.v2default:default2
352default:default8@Z8-256
∑
synthesizing module '%s'638*oasys2
IOBUF2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
81992default:default8@Z8-638
Z
%s*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:default
[
%s*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:default
R
%s*synth2C
/	Parameter SLEW bound to: SLOW - type: string 
2default:default
R
%s*synth2C
/	Parameter DRIVE bound to: 12 - type: integer 
2default:default
Û
%done synthesizing module '%s' (%s#%s)256*oasys2
IOBUF2default:default2
182default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
81992default:default8@Z8-256
◊
synthesizing module '%s'638*oasys2$
red_pitaya_daisy2default:default2b
LC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/red_pitaya_daisy.v2default:default2
582default:default8@Z8-638
π
synthesizing module '%s'638*oasys2
OBUFDS2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
122522default:default8@Z8-638
^
%s*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:default
a
%s*synth2R
>	Parameter IOSTANDARD bound to: DIFF_SSTL18_I - type: string 
2default:default
R
%s*synth2C
/	Parameter SLEW bound to: FAST - type: string 
2default:default
ı
%done synthesizing module '%s' (%s#%s)256*oasys2
OBUFDS2default:default2
192default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
122522default:default8@Z8-256
π
synthesizing module '%s'638*oasys2
IBUFGDS2default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
64842default:default8@Z8-638
^
%s*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:default
X
%s*synth2I
5	Parameter DIFF_TERM bound to: FALSE - type: string 
2default:default
[
%s*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:default
Z
%s*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:default
a
%s*synth2R
>	Parameter IOSTANDARD bound to: DIFF_SSTL18_I - type: string 
2default:default
ı
%done synthesizing module '%s' (%s#%s)256*oasys2
IBUFGDS2default:default2
202default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
64842default:default8@Z8-256
»
synthesizing module '%s'638*oasys2*
IBUFDS__parameterized02default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
61742default:default8@Z8-638
^
%s*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:default
X
%s*synth2I
5	Parameter DIFF_TERM bound to: FALSE - type: string 
2default:default
W
%s*synth2H
4	Parameter DQS_BIAS bound to: FALSE - type: string 
2default:default
[
%s*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:default
Z
%s*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:default
]
%s*synth2N
:	Parameter IFD_DELAY_VALUE bound to: AUTO - type: string 
2default:default
a
%s*synth2R
>	Parameter IOSTANDARD bound to: DIFF_SSTL18_I - type: string 
2default:default
Ñ
%done synthesizing module '%s' (%s#%s)256*oasys2*
IBUFDS__parameterized02default:default2
202default:default2
12default:default2K
5C:/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
61742default:default8@Z8-256
ì
%done synthesizing module '%s' (%s#%s)256*oasys2$
red_pitaya_daisy2default:default2
212default:default2
12default:default2b
LC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/red_pitaya_daisy.v2default:default2
582default:default8@Z8-256
è
%done synthesizing module '%s' (%s#%s)256*oasys2"
red_pitaya_top2default:default2
222default:default2
12default:default2`
JC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/red_pitaya_top.v2default:default2
202default:default8@Z8-256
°
+design %s has port %s driven by constant %s3447*oasys2"
red_pitaya_top2default:default2 
adc_clk_o[1]2default:default2
12default:defaultZ8-3917
°
+design %s has port %s driven by constant %s3447*oasys2"
red_pitaya_top2default:default2 
adc_clk_o[0]2default:default2
02default:defaultZ8-3917
ü
+design %s has port %s driven by constant %s3447*oasys2"
red_pitaya_top2default:default2

adc_cdcs_o2default:default2
12default:defaultZ8-3917
ú
%s*synth2å
xFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 285.684 ; gain = 134.598
2default:default
ö
%s*synth2ä
vStart RTL Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 285.684 ; gain = 134.598
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_dat_a_i[13]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_dat_a_i[12]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_dat_a_i[11]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_dat_a_i[10]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_a_i[9]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_a_i[8]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_a_i[7]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_a_i[6]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_a_i[5]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_a_i[4]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_a_i[3]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_a_i[2]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_a_i[1]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_a_i[0]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_dat_b_i[13]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_dat_b_i[12]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_dat_b_i[11]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_dat_b_i[10]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_b_i[9]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_b_i[8]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_b_i[7]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_b_i[6]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_b_i[5]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_b_i[4]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_b_i[3]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_b_i[2]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_b_i[1]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_dat_b_i[0]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[23]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[22]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[21]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[20]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[19]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[18]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[17]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[16]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[15]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[14]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[13]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[12]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[11]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_a_i[10]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_a_i[9]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_a_i[8]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_a_i[7]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_a_i[6]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_a_i[5]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_a_i[4]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_a_i[3]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_a_i[2]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_a_i[1]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_a_i[0]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[23]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[22]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[21]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[20]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[19]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[18]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[17]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[16]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[15]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[14]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[13]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[12]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[11]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_b_i[10]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_b_i[9]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_b_i[8]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_b_i[7]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_b_i[6]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_b_i[5]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_b_i[4]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_b_i[3]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_b_i[2]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_b_i[1]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_b_i[0]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[23]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[22]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[21]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[20]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[19]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[18]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[17]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[16]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[15]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[14]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[13]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[12]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[11]2default:defaultZ8-3295
É
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2#
dac_pwm_c_i[10]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_c_i[9]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_c_i[8]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_c_i[7]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_c_i[6]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_c_i[5]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_c_i[4]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_c_i[3]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_c_i[2]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_c_i[1]2default:defaultZ8-3295
Ç
'tying undriven pin %s:%s to constant 0
3295*oasys2
i_analog2default:default2"
dac_pwm_c_i[0]2default:defaultZ8-3295
‘
ÅMessage '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-32952default:default2
1002default:defaultZ17-14
]
-Analyzing %s Unisim elements for replacement
17*netlist2
412default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
ñ
Loading clock regions from %s
13*device2_
KC:/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/zynq/xc7z010/ClockRegion.xml2default:defaultZ21-13
ó
Loading clock buffers from %s
11*device2`
LC:/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/zynq/xc7z010/ClockBuffers.xml2default:defaultZ21-11
ó
&Loading clock placement rules from %s
318*place2W
CC:/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/ClockPlacerRules.xml2default:defaultZ30-318
ï
)Loading package pin functions from %s...
17*device2S
?C:/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/PinFunctions.xml2default:defaultZ21-17
ì
Loading package from %s
16*device2b
NC:/Xilinx/Vivado/2013.3/data\parts/xilinx/zynq/zynq/xc7z010/clg400/Package.xml2default:defaultZ21-16
ä
Loading io standards from %s
15*device2T
@C:/Xilinx/Vivado/2013.3/data\./parts/xilinx/zynq/IOStandards.xml2default:defaultZ21-15
_
 Attempting to get a license: %s
78*common2&
Internal_bitstream2default:defaultZ17-78
]
Failed to get a license: %s
295*common2&
Internal_bitstream2default:defaultZ17-301
5

Processing XDC Constraints
244*projectZ1-262
¶
$Parsing XDC File [%s] for cell '%s'
848*designutils2õ
Üc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc2default:default2D
0i_ps/system_i/system_i/processing_system7_0/inst2default:defaultZ20-848
Ø
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2õ
Üc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc2default:default2D
0i_ps/system_i/system_i/processing_system7_0/inst2default:defaultZ20-847
ˇ
ŸImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2õ
Üc:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc2default:default2l
XC:/Github/FIR_Filter/red_pitaya/red_pitaya.runs/synth_2/.Xil/red_pitaya_top_propImpl.xdc2default:defaultZ1-236
í
Parsing XDC File [%s]
179*designutils2\
HC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/constrs_1/red_pitaya.xdc2default:defaultZ20-179
Æ
Deriving generated clocks
2*timing2^
HC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/constrs_1/red_pitaya.xdc2default:default2
2392default:default8@Z38-2
õ
Finished Parsing XDC File [%s]
178*designutils2\
HC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/constrs_1/red_pitaya.xdc2default:defaultZ20-178
ø
ŸImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2\
HC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/constrs_1/red_pitaya.xdc2default:default2l
XC:/Github/FIR_Filter/red_pitaya/red_pitaya.runs/synth_2/.Xil/red_pitaya_top_propImpl.xdc2default:defaultZ1-236
ñ
Parsing XDC File [%s]
179*designutils2`
LC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/constrs_1/red_pitaya_top.xdc2default:defaultZ20-179
ü
Finished Parsing XDC File [%s]
178*designutils2`
LC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/constrs_1/red_pitaya_top.xdc2default:defaultZ20-178
√
ŸImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2`
LC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/constrs_1/red_pitaya_top.xdc2default:default2l
XC:/Github/FIR_Filter/red_pitaya/red_pitaya.runs/synth_2/.Xil/red_pitaya_top_propImpl.xdc2default:defaultZ1-236
ê
Parsing XDC File [%s]
179*designutils2Z
FC:/Github/FIR_Filter/red_pitaya/red_pitaya.runs/synth_2/dont_touch.xdc2default:defaultZ20-179
ô
Finished Parsing XDC File [%s]
178*designutils2Z
FC:/Github/FIR_Filter/red_pitaya/red_pitaya.runs/synth_2/dont_touch.xdc2default:defaultZ20-178
Ω
ŸImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Z
FC:/Github/FIR_Filter/red_pitaya/red_pitaya.runs/synth_2/dont_touch.xdc2default:default2l
XC:/Github/FIR_Filter/red_pitaya/red_pitaya.runs/synth_2/.Xil/red_pitaya_top_propImpl.xdc2default:defaultZ1-236
?
&Completed Processing XDC Constraints

245*projectZ1-263
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-143
ã
!Unisim Transformation Summary:
%s111*project2Œ
π  A total of 19 instances were transformed.
  IBUFGDS => IBUFDS: 1 instances
  IOBUF => IOBUF (OBUFT, IBUF): 16 instances
  OBUFDS => OBUFDS_DUAL_BUF (OBUFDS, OBUFDS, INV): 2 instances
2default:defaultZ1-111
ö
%s*synth2ä
vStart RTL Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 501.121 ; gain = 350.035
2default:default
µ
%s*synth2•
êFinished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 501.121 ; gain = 350.035
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 501.121 ; gain = 350.035
2default:default
<
%s*synth2-

Report RTL Partitions: 
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
ä
%s*synth2{
gPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB8 0 RAMB16 0 RAMB18 40 RAMB36 20)
2default:default
±
%s*synth2°
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 570.941 ; gain = 419.855
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit       Adders := 5     
2default:default
Q
%s*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               57 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	               16 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	               14 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	               12 Bit    Registers := 14    
2default:default
Q
%s*synth2B
.	                9 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 15    
2default:default
Q
%s*synth2B
.	                6 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 14    
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input     16 Bit        Muxes := 4     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      6 Bit        Muxes := 9     
2default:default
Q
%s*synth2B
.	  18 Input      5 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 25    
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
:
%s*synth2+
Module red_pitaya_top 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 1     
2default:default
I
%s*synth2:
&Module system_processing_system7_0_0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
=
%s*synth2.
Module red_pitaya_analog 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit       Adders := 5     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               16 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	               14 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	               12 Bit    Registers := 12    
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 10    
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 3     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     16 Bit        Muxes := 4     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 16    
2default:default
V
%s*synth2G
3Module processing_system7_v5_3_processing_system7 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
<
%s*synth2-
Module red_pitaya_daisy 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
:
%s*synth2+
Module system_wrapper 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
5
%s*synth2&
Module axi_slave 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	               12 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                6 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 8     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      6 Bit        Muxes := 9     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:default
9
%s*synth2*
Module red_pitaya_ps 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
9
%s*synth2*
Module red_pitaya_hk 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               57 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                9 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 5     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 4     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	  18 Input      5 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:default
2
%s*synth2#
Module system 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/wr_awaddr_reg[31] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/wr_awaddr_reg[30] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/wr_awaddr_reg[29] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/wr_awaddr_reg[28] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/wr_awaddr_reg[27] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/wr_awaddr_reg[26] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/wr_awaddr_reg[25] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/wr_awaddr_reg[24] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/wr_awaddr_reg[23] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/rd_araddr_reg[31] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/rd_araddr_reg[30] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/rd_araddr_reg[29] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/rd_araddr_reg[28] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/rd_araddr_reg[27] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/rd_araddr_reg[26] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/rd_araddr_reg[25] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/rd_araddr_reg[24] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
º
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\i_ps/i_gp0_slave/rd_araddr_reg[23] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[31] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[30] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[29] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[28] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[27] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[26] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[25] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[24] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[23] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[22] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[21] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[20] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[19] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[18] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[17] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[16] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[15] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[14] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[13] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[12] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[11] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/wr_wdata_reg[10] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
∫
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"\i_ps/i_gp0_slave/wr_wdata_reg[9] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
∫
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"\i_ps/i_gp0_slave/wr_wdata_reg[8] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/sys_sel_o_reg[3] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/sys_sel_o_reg[2] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/sys_sel_o_reg[1] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
ª
ESequential element (%s) is unused and will be removed from module %s.3332*oasys27
#\i_ps/i_gp0_slave/sys_sel_o_reg[0] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
∏
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 \i_ps/i_gp0_slave/sys_ren_o_reg 2default:default2"
red_pitaya_top2default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
\i_analog/adc_dat_a_reg[13] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
\i_analog/adc_dat_a_reg[12] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
\i_analog/adc_dat_a_reg[11] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
\i_analog/adc_dat_a_reg[10] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_a_reg[9] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_a_reg[8] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_a_reg[7] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_a_reg[6] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_a_reg[5] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_a_reg[4] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_a_reg[3] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_a_reg[2] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_a_reg[1] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_a_reg[0] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
\i_analog/adc_dat_b_reg[13] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
\i_analog/adc_dat_b_reg[12] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
\i_analog/adc_dat_b_reg[11] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
¥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
\i_analog/adc_dat_b_reg[10] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_b_reg[9] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_b_reg[8] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_b_reg[7] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_b_reg[6] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_b_reg[5] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_b_reg[4] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_b_reg[3] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_b_reg[2] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_b_reg[1] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≥
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
\i_analog/adc_dat_b_reg[0] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\i_analog/adc_a_r_reg[11] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\i_analog/adc_a_r_reg[10] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_a_r_reg[9] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_a_r_reg[8] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_a_r_reg[7] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_a_r_reg[6] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_a_r_reg[5] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_a_r_reg[4] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_a_r_reg[3] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_a_r_reg[2] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_a_r_reg[1] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_a_r_reg[0] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\i_analog/adc_b_r_reg[11] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\i_analog/adc_b_r_reg[10] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_b_r_reg[9] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_b_r_reg[8] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_b_r_reg[7] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_b_r_reg[6] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_b_r_reg[5] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_b_r_reg[4] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_b_r_reg[3] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_b_r_reg[2] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_b_r_reg[1] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
±
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
\i_analog/adc_b_r_reg[0] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2.
\i_analog/adc_c_r_reg[11] 2default:default2"
red_pitaya_top2default:defaultZ8-3332
‘
ÅMessage '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14
À
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys22
i_ps/i_gp0_slave/wr_awaddr_reg2default:default2
322default:default2
232default:default2[
EC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/axi_slave.v2default:default2
1782default:default8@Z8-3936
À
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys22
i_ps/i_gp0_slave/rd_araddr_reg2default:default2
322default:default2
232default:default2[
EC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/axi_slave.v2default:default2
1582default:default8@Z8-3936
…
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys21
i_ps/i_gp0_slave/wr_wdata_reg2default:default2
322default:default2
82default:default2[
EC:/Github/FIR_Filter/red_pitaya/red_pitaya.srcs/sources_1/axi_slave.v2default:default2
1842default:default8@Z8-3936
°
+design %s has port %s driven by constant %s3447*oasys2"
red_pitaya_top2default:default2 
adc_clk_o[1]2default:default2
12default:defaultZ8-3917
°
+design %s has port %s driven by constant %s3447*oasys2"
red_pitaya_top2default:default2 
adc_clk_o[0]2default:default2
02default:defaultZ8-3917
ü
+design %s has port %s driven by constant %s3447*oasys2"
red_pitaya_top2default:default2

adc_cdcs_o2default:default2
12default:defaultZ8-3917
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_a_i[15]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_a_i[14]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_a_i[13]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_a_i[12]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_a_i[11]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_a_i[10]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_a_i[9]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_a_i[8]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_a_i[7]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_a_i[6]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_a_i[5]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_a_i[4]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_a_i[3]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_a_i[2]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_b_i[15]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_b_i[14]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_b_i[13]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_b_i[12]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_b_i[11]2default:defaultZ8-3331
É
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2#
adc_dat_b_i[10]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_b_i[9]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_b_i[8]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_b_i[7]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_b_i[6]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_b_i[5]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_b_i[4]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_b_i[3]2default:defaultZ8-3331
Ç
!design %s has unconnected port %s3331*oasys2"
red_pitaya_top2default:default2"
adc_dat_b_i[2]2default:defaultZ8-3331
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 580.676 ; gain = 429.590
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
ô
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\i_analog/dac_pwm_bd_reg[15] 2default:defaultZ8-3333
°
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%\i_ps/i_gp0_slave/axi_bresp_o_reg[0] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default20
\i_analog/dac_dat_b_reg[12] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_dat_b_reg[13] 2default:defaultZ8-3333
ô
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\i_analog/dac_pwm_bd_reg[14] 2default:defaultZ8-3333
ô
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\i_analog/dac_pwm_bd_reg[13] 2default:defaultZ8-3333
ô
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\i_analog/dac_pwm_bd_reg[12] 2default:defaultZ8-3333
ô
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\i_analog/dac_pwm_bd_reg[11] 2default:defaultZ8-3333
ô
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\i_analog/dac_pwm_bd_reg[10] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_bd_reg[9] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_bd_reg[8] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_bd_reg[7] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_bd_reg[6] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_bd_reg[5] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_bd_reg[4] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_bd_reg[3] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_bd_reg[2] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_bd_reg[1] 2default:defaultZ8-3333
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_bd_reg[0] 2default:defaultZ8-3333
û
%s*synth2é
zFinished Area Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 613.820 ; gain = 462.734
2default:default
≠
%s*synth2ù
àFinished Applying XDC Timing Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 753.754 ; gain = 602.668
2default:default
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 770.867 ; gain = 619.781
2default:default
ò
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\i_analog/dac_pwm_vd_reg[7] 2default:defaultZ8-3333
ö
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default22
\i_analog/dac_pwm_vd_r_reg[7] 2default:defaultZ8-3333
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 778.352 ; gain = 627.266
2default:default

7design has %s instantiated BUFGs while the limit is %s
3200*oasys2
112default:default2
82default:defaultZ8-3200
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 778.352 ; gain = 627.266
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
™
%s*synth2ö
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 778.352 ; gain = 627.266
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 778.352 ; gain = 627.266
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
8
%s*synth2)

Report BlackBoxes: 
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
| |BlackBox name |Instances |
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
@
%s*synth21
+------+------------+------+
2default:default
@
%s*synth21
|      |Cell        |Count |
2default:default
@
%s*synth21
+------+------------+------+
2default:default
@
%s*synth21
|1     |BIBUF       |   130|
2default:default
@
%s*synth21
|2     |BUFG        |    14|
2default:default
@
%s*synth21
|3     |CARRY4      |     4|
2default:default
@
%s*synth21
|4     |DNA_PORT    |     1|
2default:default
@
%s*synth21
|5     |GND         |     1|
2default:default
@
%s*synth21
|6     |LUT1        |   112|
2default:default
@
%s*synth21
|7     |LUT2        |    31|
2default:default
@
%s*synth21
|8     |LUT3        |    20|
2default:default
@
%s*synth21
|9     |LUT4        |    20|
2default:default
@
%s*synth21
|10    |LUT5        |    40|
2default:default
@
%s*synth21
|11    |LUT6        |   114|
2default:default
@
%s*synth21
|12    |ODDR_1      |    18|
2default:default
@
%s*synth21
|13    |PLLE2_ADV_1 |     1|
2default:default
@
%s*synth21
|14    |PS7         |     1|
2default:default
@
%s*synth21
|15    |XADC        |     1|
2default:default
@
%s*synth21
|16    |FDRE        |   357|
2default:default
@
%s*synth21
|17    |IBUF        |    10|
2default:default
@
%s*synth21
|18    |IBUFDS      |     2|
2default:default
@
%s*synth21
|19    |IBUFGDS     |     1|
2default:default
@
%s*synth21
|20    |IOBUF       |    16|
2default:default
@
%s*synth21
|21    |OBUF        |    33|
2default:default
@
%s*synth21
|22    |OBUFDS      |     2|
2default:default
@
%s*synth21
+------+------------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
}
%s*synth2n
Z+------+-----------------------------+-------------------------------------------+------+
2default:default
}
%s*synth2n
Z|      |Instance                     |Module                                     |Cells |
2default:default
}
%s*synth2n
Z+------+-----------------------------+-------------------------------------------+------+
2default:default
}
%s*synth2n
Z|1     |top                          |                                           |   929|
2default:default
}
%s*synth2n
Z|2     |  i_hk                       |red_pitaya_hk                              |   171|
2default:default
}
%s*synth2n
Z|3     |  i_ps                       |red_pitaya_ps                              |   483|
2default:default
}
%s*synth2n
Z|4     |    system_i                 |system_wrapper                             |   240|
2default:default
}
%s*synth2n
Z|5     |      system_i               |system                                     |   225|
2default:default
}
%s*synth2n
Z|6     |        processing_system7_0 |system_processing_system7_0_0              |   224|
2default:default
}
%s*synth2n
Z|7     |          inst               |processing_system7_v5_3_processing_system7 |   224|
2default:default
}
%s*synth2n
Z|8     |    i_gp0_slave              |axi_slave                                  |   239|
2default:default
}
%s*synth2n
Z|9     |  i_daisy                    |red_pitaya_daisy                           |     4|
2default:default
}
%s*synth2n
Z|10    |  i_analog                   |red_pitaya_analog                          |   211|
2default:default
}
%s*synth2n
Z+------+-----------------------------+-------------------------------------------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 778.352 ; gain = 627.266
2default:default
k
%s*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 319 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 778.352 ; gain = 627.266
2default:default
]
-Analyzing %s Unisim elements for replacement
17*netlist2
512default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-143
ã
!Unisim Transformation Summary:
%s111*project2Œ
π  A total of 19 instances were transformed.
  IBUFGDS => IBUFDS: 1 instances
  IOBUF => IOBUF (OBUFT, IBUF): 16 instances
  OBUFDS => OBUFDS_DUAL_BUF (OBUFDS, OBUFDS, INV): 2 instances
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
ø
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
892default:default2
3402default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
˝
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:342default:default2
00:00:352default:default2
1057.0942default:default2
849.2382default:defaultZ17-268
<
%Done setting XDC timing constraints.
35*timingZ38-35
Ä
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.031 . Memory (MB): peak = 1057.094 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Nov 07 11:02:38 20162default:defaultZ17-206