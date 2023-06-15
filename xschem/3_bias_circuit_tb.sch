v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {VDD=3.3V  Ibias=40uA } 320 -1000 0 0 0.4 0.4 {}
T {Vbiasp=2.0589
Vbiasn=1.1697
Vbias1=2.031 V
Vbias2=1.5918 V
Vbias3=1.4393 V
Vbias4=1.2593 V
Vncas=2.7801 V
Vpcas=0.477 V
Vlow=0.1998 V
Vhigh=2.9503 V} 770 -850 0 0 0.275 0.275 {}
N 464.375 -930 484.375 -930 {
lab=Vbiasp}
N 464.375 -910 484.375 -910 {
lab=Vbiasn}
N 464.375 -890 484.375 -890 {
lab=Vbias1}
N 464.375 -870 484.375 -870 {
lab=Vbias2}
N 464.375 -850 484.375 -850 {
lab=Vbias3}
N 464.375 -830 484.375 -830 {
lab=Vbias4}
N 464.375 -810 484.375 -810 {
lab=Vlow}
N 464.375 -790 484.375 -790 {
lab=Vhigh}
N 464.375 -770 484.375 -770 {
lab=Vncas}
N 464.375 -750 484.375 -750 {
lab=Vpcas}
C {devices/code_shown.sym} 588.75 -1011.875 0 0 {name=NGSPICE
only_toplevel=true
value=".options savecurrents
VDD VDD 0 DC 3.3
.control
save all
tran 10m 1
plot Vbias1 Vbias2 Vbias3 Vbias4 
plot Vlow Vhigh Vncas Vpcas
write simulation/3_bias_circuit_tb.raw
.endc
"}
C {devices/code.sym} 590 -810 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 400 -1030 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/3_bias_circuit_tb.raw"}
C {devices/gnd.sym} 405 -720 0 1 {name=l1 lab=GND}
C {devices/lab_pin.sym} 405 -960 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 484.375 -930 0 1 {name=p2 sig_type=std_logic lab=Vbiasp}
C {devices/lab_pin.sym} 484.375 -910 0 1 {name=p3 sig_type=std_logic lab=Vbiasn}
C {3_bias_circuit.sym} -35 -660 0 0 {name=x1}
C {devices/lab_pin.sym} 484.375 -890 0 1 {name=p4 sig_type=std_logic lab=Vbias1}
C {devices/lab_pin.sym} 484.375 -870 0 1 {name=p5 sig_type=std_logic lab=Vbias2}
C {devices/lab_pin.sym} 484.375 -850 0 1 {name=p6 sig_type=std_logic lab=Vbias3}
C {devices/lab_pin.sym} 484.375 -830 0 1 {name=p7 sig_type=std_logic lab=Vbias4}
C {devices/lab_pin.sym} 484.375 -810 0 1 {name=p8 sig_type=std_logic lab=Vlow}
C {devices/lab_pin.sym} 484.375 -790 0 1 {name=p9 sig_type=std_logic lab=Vhigh}
C {devices/lab_pin.sym} 484.375 -770 0 1 {name=p10 sig_type=std_logic lab=Vncas}
C {devices/lab_pin.sym} 484.375 -750 0 1 {name=p11 sig_type=std_logic lab=Vpcas}
