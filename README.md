# Image Sensor Design using FPGA board

A capstone design project using an Altera-based FPGA board and phototransistor. A real-time video image transmission system that processes, converts, and transmits image data obtained through a 32x32 array of phototransistors using an FPGA board.


## Contributor

```python
# Image Signal Processing
Sanghun Lee
Insu Park

# Timing Control & Photoelectric Conversion
Dongkun Lee
Jinwoo Jung
Jungwook Han

# Special Thanks
Yungsun Eo
Donghun Lee
Hansoo You
HYU
```

## General info

The hardware of this system is divided into a phototransistor board and an FPGA board (Altera-based DE1-SOC). This task is designed to acquire knowledge and gain practical experience in analog and digital circuit design. The goal of this task is to implement an image sensor and processing system by directly designing and manufacturing an image conversion unit that obtains image data, processes and transmits processed data using an FPGA chip. The entire system was divided into two blocks, Timing control & Photoelectric Conversion block and Image Signal Process block, and the part in charge of this section is the Image Signal Process process. Before producing software, the entire flowchart is planned, each block is converted into a hardware language (HDL) using MATLAB, and then loaded with FPGA and implemented as a hardware chip. The significance of this task is that both digital circuit design and analog circuit design can be experienced through this.

## Technologies
Project is created with:  

MATLAB R2022a  
* Implementation of Image Data Transformation Function 
 * Verification of digital block algorithms 

Quartus® Prime (version: 18.1), ModelSim (version: 10.5b)  
* Digital Block Implementation 
 * RTL simulation and board compilation
    
KiCad EDA (version: 6.0), EasyEDA Pro  
* PCB board design 
 * Circuit layout

## Reference

-SMIA_Functional_specification_1.0.  
-Image sensors and signal processing for digital still cameras Edited by Junichi Nakamura   
-Video Demystified A Handbook for the Digital Engineer Fourth Edition by Keith Jack  
-Digital Image Processing using Matlab by Gonzalez  
-Image Processing Board Design and Algorithm Implementation Using FPGA by Minsu Seo

## License

None
