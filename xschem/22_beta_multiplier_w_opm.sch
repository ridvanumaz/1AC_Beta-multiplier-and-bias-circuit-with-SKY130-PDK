v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 830 -920 830 -890 {
lab=VDD}
N 830 -920 1040 -920 {
lab=VDD}
N 1040 -920 1040 -890 {
lab=VDD}
N 880 -560 880 -550 {
lab=GND}
N 820 -860 830 -860 {
lab=VDD}
N 810 -920 810 -860 {
lab=VDD}
N 1040 -860 1070 -860 {
lab=VDD}
N 1070 -920 1070 -860 {
lab=VDD}
N 1040 -920 1070 -920 {
lab=VDD}
N 870 -860 890 -860 {
lab=Vbiasp}
N 980 -860 1000 -860 {
lab=Vbiasp}
N 870 -610 890 -610 {
lab=Vbiasn}
N 890 -660 890 -610 {
lab=Vbiasn}
N 830 -660 890 -660 {
lab=Vbiasn}
N 980 -610 1000 -610 {
lab=Vbiasn}
N 830 -560 860 -560 {
lab=GND}
N 830 -580 830 -560 {
lab=GND}
N 1000 -560 1040 -560 {
lab=#net1}
N 860 -560 940 -560 {
lab=GND}
N 1040 -580 1040 -560 {
lab=#net1}
N 1040 -610 1070 -610 {
lab=GND}
N 1070 -610 1070 -560 {
lab=GND}
N 810 -560 830 -560 {
lab=GND}
N 810 -610 810 -560 {
lab=GND}
N 810 -610 830 -610 {
lab=GND}
N 880 -550 880 -540 {
lab=GND}
N 800 -920 820 -920 {
lab=VDD}
N 820 -920 830 -920 {
lab=VDD}
N 810 -860 820 -860 {
lab=VDD}
N 830 -830 830 -780 {
lab=#net2}
N 830 -720 830 -640 {
lab=Vbiasn}
N 1040 -830 1040 -770 {
lab=#net3}
N 1040 -710 1040 -640 {
lab=Vreg}
N 890 -860 980 -860 {
lab=Vbiasp}
N 900 -580 970 -580 {
lab=GND}
N 900 -580 900 -560 {
lab=GND}
N 890 -610 980 -610 {
lab=Vbiasn}
N 920 -680 920 -660 {
lab=Vbiasn}
N 890 -660 920 -660 {
lab=Vbiasn}
N 960 -680 960 -660 {
lab=Vreg}
N 960 -660 1040 -660 {
lab=Vreg}
N 970 -720 980 -720 {
lab=Vbiasp}
N 980 -860 980 -720 {
lab=Vbiasp}
C {devices/lab_wire.sym} 800 -920 0 0 {name=l14 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 850 -860 0 1 {name=M1
L=1
W=5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 850 -610 0 1 {name=M3
L=1
W=5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1020 -860 0 0 {name=M2
L=1
W=5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1020 -610 0 0 {name=M4
L=1
W=5
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 940 -860 0 0 {name=l6 sig_type=std_logic lab=Vbiasp}
C {devices/lab_wire.sym} 890 -610 2 0 {name=l8 sig_type=std_logic lab=Vbiasn}
C {devices/code_shown.sym} 278.75 -921.875 0 0 {name=NGSPICE
only_toplevel=true
value=".options savecurrents
VDD VDD 0 DC 3.3
.control
save all
dc VDD 0 3.3 100m
write simulation/22_beta_multiplier_w_opm.raw
plot Vref1#branch Vref2#branch
plot Vbiasn Vbiasp
.endc
"}
C {devices/code.sym} 300 -610 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} 830 -750 0 0 {name=Vref1 value=0}
C {devices/vsource.sym} 1040 -740 0 0 {name=Vref2 value=0}
C {devices/gnd.sym} 880 -540 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1070 -560 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} 380 -680 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/22_beta_multiplier_w_opm.raw"}
C {sky130_fd_pr/res_xhigh_po.sym} 970 -560 1 0 {name=R2
W=0.35
L=0.74
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} 1040 -690 2 0 {name=l3 sig_type=std_logic lab=Vreg}
C {devices/vcvs.sym} 940 -720 1 1 {name=E1 value=10}
C {devices/gnd.sym} 910 -720 1 0 {name=l4 lab=GND}
