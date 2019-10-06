# kicad_microbit_connector

## A KiCad component library and footprint library for a micro:bit edge-connector socket.

This is a schematic & PCB-layout library, for use with [KiCad](http://kicad-pcb.org/), an open source PCB design/layout tool.

The [micro:bit](http://microbit.org/) has an 80 pin edge connector (not all pins are active), at 0.05" / 1.27mm pitch.  Sockets for the edge connector are easy to obtain (right-angle) and harder to obtain (straight).

This library was written for the through-hole, straight version of the socket.  It has had limited testing, but is in successful use for PCB manufacture.

### Contents:

- [lib_microbit_connector](./lib_microbit_connector) - schematic
- [Connectors_4UCON.pretty](./Connectors_4UCON.pretty) - footprint
- [Connectors_4UCON.3dshapes](./Connectors_4UCON.3dshapes) - 3D model


### How to use:

Please read the KiCad documentation first!

Schematic editor:

- Open dialog: Preferences -> Component Libraries
- "Add", browse to ```lib_microbit_connector.lib```

CvPcb (association of components->footprints)

- Open dialog: Preferences -> Footprint Libraries
- "Append with Wizard", browse to the directory ```Connectors_4UCON.pretty```


### Kudos:

- many thanks to [hackscribble/Ray Benitez](http://hackscribble.com)
