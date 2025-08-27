def lvs_settings
  same_circuits 'TOP', 'INVERTER'
  netlist.make_top_level_pins
  netlist.flatten_circuit 'Nch*'
  netlist.flatten_circuit 'Pch*'
  netlist.flatten_circuit 'R_poly*'
  netlist.flatten_circuit 'HR_poly'
  align
  same_device_classes 'NMOS', 'NCH'
  same_device_classes 'NMOS', 'NMOS'
  same_device_classes 'NMOS', 'MN'
  same_device_classes 'NMOS', 'MNE'
  same_device_classes 'PMOS', 'PCH'
  same_device_classes 'PMOS', 'PMOS'
  same_device_classes 'PMOS', 'MP'
  same_device_classes 'PMOS', 'MPE'
  same_device_classes 'NDIO', 'DN'
  same_device_classes 'PDIO', 'DP'
  same_device_classes 'CSIO', 'F_CSIO'
  same_device_classes 'CSIO', 'CAP'
  same_device_classes 'RR', 'F_RR'
  same_device_classes 'RR', 'RES'
  same_device_classes 'RS', 'F_RS'
  same_device_classes 'RS', 'RES'
  tolerance 'RR', 'R', :relative => 0.03
  tolerance 'RS', 'R', :relative => 0.03
  tolerance 'CSIO', 'C', :relative => 0.03
  netlist.combine_devices
  schematic.combine_devices
end
