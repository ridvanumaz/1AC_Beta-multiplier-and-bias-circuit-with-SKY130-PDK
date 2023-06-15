v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 -470 350 -460 {
lab=#net1}
N 350 -470 430 -470 {
lab=#net1}
N 350 -400 350 -390 {
lab=GND}
N 590 -460 590 -450 {
lab=GND}
N 590 -530 590 -520 {
lab=#net2}
N 470 -530 470 -500 {
lab=#net3}
N 470 -440 470 -430 {
lab=GND}
N 560 -530 590 -530 {
lab=#net2}
N 470 -530 500 -530 {
lab=#net3}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 450 -470 0 0 {name=M1
L=0.5
W=40
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} 350 -430 0 0 {name=VGS value=0.7
}
C {devices/vsource.sym} 590 -490 0 0 {name=VDS value=3.3}
C {devices/gnd.sym} 350 -390 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 590 -450 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 470 -430 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 670 -510 0 0 {name=NGSPICE
only_toplevel=true
value=".options savecurrents
.control
save all
save @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm]
dc VDS 0 3.3 1m
write 21_nmos_vds.raw
plot vm1#branch
set appendwrite 
op 
write 21_nmos_vds.raw
.endc
"}
C {devices/code.sym} 860 -640 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/ammeter.sym} 530 -530 1 1 {name=VM1}
C {devices/launcher.sym} 470 -600 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/21_nmos_vds.raw"}
C {devices/launcher.sym} 470 -660 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
