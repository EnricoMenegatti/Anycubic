M190 S60.000000
M109 S210.000000

G21        ;metric values
G90        ;absolute positioning
M107       ;start with the fan off
G28   ;move to endstops
G92 E0                  ;zero the extruded length
G1 F200 E3              ;extrude 3mm of feed stock
G92 E0                  ;zero the extruded length again
G1 F4800
;Put printing message on LCD screen
M117 Printing...

M107
G0 F4800 X0 Y0 Z0.300
G1 F1200 X0 Y60 E3

G1 F4200 E1					;retrazione
G0 F4800 X1 Y60 Z0.320
G1 F4200 E3					;espulsione
G1 F1200 X1 Y0 E6

G1 F4200 E4					;retrazione
G0 F4800 X2 Y0 Z0.340
G1 F4200 E6					;espulsione
G1 F1200 X2 Y60 E9

G1 F4200 E7					;retrazione
G0 F4800 X3 Y60 Z0.360
G1 F4200 E9					;espulsione
G1 F1200 X3 Y0 E12

G1 F4200 E10				;retrazione
G0 F4800 X4 Y0 Z0.380
G1 F4200 E12				;espulsione
G1 F1200 X4 Y60 E15

G1 F4200 E13				;retrazione
G0 F4800 X5 Y60 Z0.400
G1 F4200 E15				;espulsione
G1 F1200 X5 Y0 E18

;End GCode
G92 E0                  ;zero the extruded length
M104 S0                     ;extruder heater off
M140 S0                     ;heated bed heater off (if you have it)
G91                                    ;relative positioning
G1 E-1 F300   
G1 Z5 E-5 F4800 ;move Z up a bit and retract filament even more
G28   						;move to endstops
M84                         ;steppers off
G90                         ;absolute positioning
