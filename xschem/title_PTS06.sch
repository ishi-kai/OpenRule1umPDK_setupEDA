v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 40 -580 40 -80 {}
L 4 260 -580 260 -80 {}
L 4 480 -580 480 -80 {}
L 4 700 -580 700 -80 {}
L 4 920 -580 920 -80 {}
L 4 1140 -580 1140 -80 {}
T {OR1 primitives} 40 -620 0 0 0.5 0.5 {}
T {pmos.sym} 60 -580 0 0 0.4 0.4 {}
T {nmos.sym} 60 -420 0 0 0.4 0.4 {}
T {MODEL (fixme!)} 60 -260 0 0 0.4 0.4 {}
T {OR1 stdcells} 280 -620 0 0 0.5 0.5 {}
T {etc...} 400 -120 0 0 0.5 0.5 {}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="MakeLSI & ISHI-kai"}
C {primitives/nfet.sym} 100 -330 0 0 {name=M2
model=nchOR1ex
W=1u
L=0.6u
m=1
}
C {primitives/pfet.sym} 100 -490 0 0 {name=M1 
model=pchOR1ex
W=2u
L=0.6u
m=1
}
C {devices/code.sym} 70 -200 0 0 {name=PTS06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include /home/user/.xschem/lib/PTS06/mos.lib
.include /home/user/.xschem/lib/PTS06/stdcells.lib"
spice_ignore=false}
C {stdcells/an21.sym} 360 -520 0 0 {name=x1 VDD=VDD VSS=GND}
C {stdcells/an31.sym} 360 -420 0 0 {name=x2 VDD=VDD VSS=GND}
C {stdcells/an41.sym} 360 -280 0 0 {name=x3 VDD=VDD VSS=GND}
C {stdcells/buf1.sym} 340 -160 0 0 {name=x4 VDD=VDD VSS=GND}
