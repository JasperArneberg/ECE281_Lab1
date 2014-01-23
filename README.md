ECE281_Lab1
===========

## Lab 1
###### Jasper Arneberg
###### M6A ECE 281
###### Dr. Neebel

# Two's Complement for 3-Bit Numbers
000 --> 000

001 --> 111

010 --> 110

011 --> 101

100 --> 100

101 --> 011

110 --> 010

111 --> 001

# Schematic
![alt text](https://github.com/JasperArneberg/ECE281_Lab1/blob/master/schematic2.jpg?raw=true "Schematic")

# Waveform Output
![alt text](https://github.com/JasperArneberg/ECE281_Lab1/blob/master/waveform2.png?raw=true "Screenshot")

# Simulated Truth Table
| A | B | C | X | Y | Z |
| :--: | :--: | :--: | :--: | :--: | :--: |
| 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 | 0 |
| 0 | 1 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 1 |

# Analysis
The truth table derived from the waveform output is shown above. The values correspond correctly with the Two's Complement values.

The first time this digital logic circuit was simulated, there were a couple different errors (two seperate usages of AND instead of OR) which led to an incorrect waveform. The errors were fixed, and the expected result was obtained.

# FPGA Results
| A | B | C | X | Y | Z |
| :--: | :--: | :--: | :--: | :--: | :--: |
| 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 | 0 |
| 0 | 1 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 1 |

FPGA results match the simulated and expected results.

Documentation: None.
