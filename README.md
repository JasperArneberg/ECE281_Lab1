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

# Truth Table
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

# Minimum Sum-of-Products Equation
The minimum SOP equation was found by creating a K-map for each of the three outputs X, Y, and Z corresponding to the three output digits with X as the MSB. A, B, and C represent the three input digits with A as the MSB.

X = A'(C+B) + AB'C'  
Y = B'C + BC'  
Z = C  

# Schematic
Here is the initial schematic. Because it was verified successfully, it is also the final schematic.
![alt text](https://github.com/JasperArneberg/ECE281_Lab1/blob/master/schematic2.jpg?raw=true "Schematic")

# Waveform Output
![alt text](https://github.com/JasperArneberg/ECE281_Lab1/blob/master/waveform2.png?raw=true "ISim Screenshot")

# Simulattion Results
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

# Initial Analysis
The truth table derived from the waveform output is shown above. The values correspond correctly with the Two's Complement values. Thus, the design is verfied correct.

# Debugging
The first time this digital logic circuit was simulated, there were a couple different errors (two seperate usages of AND instead of OR) which led to an incorrect waveform. The errors were fixed, and the expected result was obtained.

I also had several errors with my VHDL syntax. C3C Her and C3C El-Saawy helped me find my mistakes.

# Testing

FPGA results match the simulated and expected results. The results are shown below:

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

These results verify that the FPGA implementation was correct.

# Demos
Notebook checked off by Dr. Neebel on 23 Jan 14.  
3-bit solution checked off by Dr. Neebel on 23 Jan 14.  
8-bit solution checked off by Dr. Neebel on 27 Jan 14.  

# Documentation
C3C El-Saawy helped me periodically figuring out correct procedures and proper syntax.  
C3C Her showed me where I made a mistake with my 8-bit VHDL solution.  
