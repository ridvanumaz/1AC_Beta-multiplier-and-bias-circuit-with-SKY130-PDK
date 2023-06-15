v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 -470 430 -470 {
lab=#net1}
N 470 -530 470 -500 {
lab=GND}
N 470 -440 470 -430 {
lab=#net2}
N 350 -490 350 -470 {
lab=#net1}
N 350 -560 350 -550 {
lab=GND}
N 350 -570 350 -560 {
lab=GND}
N 350 -560 470 -560 {
lab=GND}
N 470 -560 470 -530 {
lab=GND}
N 470 -470 490 -470 {
lab=GND}
N 490 -560 490 -470 {
lab=GND}
N 470 -560 490 -560 {
lab=GND}
N 590 -560 590 -520 {
lab=GND}
N 490 -560 590 -560 {
lab=GND}
N 470 -370 470 -360 {
lab=#net3}
N 470 -360 580 -360 {
lab=#net3}
N 590 -460 590 -360 {
lab=#net3}
N 580 -360 590 -360 {
lab=#net3}
C {devices/vsource.sym} 350 -520 0 0 {name=VSG value=0.875
}
C {devices/vsource.sym} 590 -490 0 0 {name=VSD value=3.3}
C {devices/gnd.sym} 350 -570 2 1 {name=l1 lab=GND}
C {devices/code.sym} 920 -640 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/ammeter.sym} 470 -400 0 0 {name=VM1}
C {devices/launcher.sym} 470 -600 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/22_pmos_op.raw"}
C {devices/launcher.sym} 470 -660 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 450 -470 0 0 {name=M1
L=0.5
W=80
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/code_shown.sym} 660 -520 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vgs]
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vds]
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vdsat]
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[id]
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vth]
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[gm]
save @m.xm1.msky130_fd_pr__pfet_g5v0d10v5[gds]

save all

op
write 22_pmos_op.raw

.endc
"}
C {devices/ngspice_get_value.sym} 570 -270 0 0 {name=r1 node=@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 390 -270 0 0 {name=r2 node="i(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[id])"
descr="Id="}
C {devices/ngspice_get_value.sym} 490 -270 0 0 {name=r3 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vth])"
descr="Vth="}
C {devices/ngspice_get_value.sym} 570 -310 0 0 {name=r4 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vdsat])"
descr="Vdsat="}
C {devices/ngspice_get_value.sym} 490 -310 0 0 {name=r6 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vds])"
descr="Vds="}
C {devices/ngspice_get_value.sym} 490 -230 0 0 {name=r5 node="@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[gds]"
descr="gds="}
C {devices/ngspice_get_value.sym} 390 -310 0 0 {name=r7 node="v(@m.xm1.msky130_fd_pr__pfet_g5v0d10v5[vgs])"
descr="Vgs="}
