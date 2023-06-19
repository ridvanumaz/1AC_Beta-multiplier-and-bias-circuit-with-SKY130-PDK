# Beta multiplier and bias circuit with sky130 open pdk
This repo presents the beta multiplier with a bias circuit using Google-skywater 130nm pdk that generates 40μA bias current with a supply voltage of 3.3V for biasing some analog circuits. 

## EDA tools and PDK
EDA tools are used in this repo as follows: 

[![image](https://user-images.githubusercontent.com/49194847/138070431-d95ce371-db3b-43a1-8dbe-fa85bff53625.png)](http://ngspice.sourceforge.net/devel.html)         
[netlist SPICE simulation](http://ngspice.sourceforge.net/devel.html) 

  ![xschem_logo](https://github.com/ridvanumaz/1AC_Beta-multiplier-and-bias-circuit-with-SKY130-PDK/assets/84044368/79b03572-0a09-4466-a4fd-1e0c19469237) 
[schematic capture](https://xschem.sourceforge.io/stefan/index.html)

 Skywater 130nm techology is used.
[![image](https://user-images.githubusercontent.com/49194847/138075630-d1bdacac-d37b-45d3-88b5-80f118af37cd.png)](https://skywater-pdk.readthedocs.io/en/main/)
[Techology SkyWater SKY130 PDK](https://skywater-pdk.readthedocs.io/en/main/)

## Requirement
assumed already install [ngspice](https://ngspice.sourceforge.io/download.html), [xschem](https://github.com/StefanSchippers/xschem) along the [SKY130 PDK](http://opencircuitdesign.com/open_pdks/index.html) 

In order to simulate the design, xschemrc and spinit files should be linked to [xschem file](https://github.com/ridvanumaz/1AC_Beta-multiplier-and-bias-circuit-with-SKY130-PDK/tree/main/xschem) in this repo. 
```
ln -s /usr/local/share/pdk/sky130A/libs.tech/xschem/xschemrc
ln -s /usr/local/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
```

## 1) Beta Multiplier 
### Schematic
<p align="center">
  <img src="/results/beta_multiplier_schematic.png">
</p>

### Results

#### Operating point analysis (op)
<p align="center">
  <img src="/results/beta_multiplier_op.png">
</p>

#### Supply variation analysis 
<p float="left">
  <img src="/results/beta_multiplier_result_Iref.png" width="45%" />
  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;
  <img src="/results/beta_multiplier_result_Vbias.png" width="45%" /> 
</p>

## 2) Bias Circuit
### Schematic
<p align="center">
  <img src="/results/bias_circuit_schematic.png">
</p>

### Results

#### Operating point analysis (op)
<p align="center">
  <img src="/results/bias_circuit_op.png">
</p>

## References 
$[1]$ Xschem manual https://xschem.sourceforge.io/stefan/xschem_man/xschem_man.html

$[2]$ ngspice manual https://ngspice.sourceforge.io/docs.html

$[3]$ R. J. Baker, CMOS: Circuit Design Layout and Simulation, Hoboken, NJ, USA:Wiley, 2019.



