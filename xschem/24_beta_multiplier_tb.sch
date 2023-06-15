v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 420 -1010 420 -990 {
lab=VDD}
N 480 -920 490 -920 {
lab=Vbiasn}
N 490 -920 500 -920 {
lab=Vbiasn}
N 480 -960 500 -960 {
lab=Vbiasp}
C {devices/code_shown.sym} 638.75 -1001.875 0 0 {name=NGSPICE
only_toplevel=true
value=".options savecurrents
VDD VDD 0 DC 3.3
.control
save all
dc VDD 0 6.3 100m
write 24_beta_multiplier_tb.raw
plot Vbiasn Vbiasp
plot V.x1.vref1#branch V.x1.vref2#branch
set appendwrite 
op 
write 24_beta_multiplier_tb.raw
.endc
"}
C {devices/code.sym} 370 -790 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 700 -700 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/24_beta_multiplier_tb.raw"}
C {24_beta_multiplier.sym} 240 -690 0 0 {name=x1}
C {devices/gnd.sym} 420 -890 0 1 {name=l1 lab=GND}
C {devices/lab_pin.sym} 420 -1010 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 -960 0 1 {name=p2 sig_type=std_logic lab=Vbiasp}
C {devices/lab_pin.sym} 500 -920 0 1 {name=p3 sig_type=std_logic lab=Vbiasn}
C {devices/launcher.sym} 700 -750 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/iopin.sym} 520 -840 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 520 -810 0 0 {name=p5 lab=Vbiasp}
C {devices/opin.sym} 520 -780 0 0 {name=p6 lab=Vbiasn}
