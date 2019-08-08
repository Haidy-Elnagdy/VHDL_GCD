# VHDL_GCD
VHDL code for calculating the greatest common divisor.

## Install
These examples use ModelSim and Quartus from Intel FPGA, GIT, Visual Studio Code, make sure they are installed locally on your computer before proceeding.

## Usage
1-Grab a copy of this repository to your computer's local folder (i.e. C:\projects):

     $ cd projects
     $ git clone https://github.com/ihabadly/vhdl-basics.git
     
2-Use Visual Studio Code (VSC) to edit and view the design files:

    $ cd vhdl-basics
    $ code .
  Click on the count_bin.vhd file in the left pane to view its contents.

3-From the VSC View menu, choose Terminal, in the VCS Terminal, create a "work" library:

    $ vlib work
4-Compile any of the design units, For example, to compile the binary counter design and its testbench:

    $ vcom count_bin.vhd
    $ vcom count_bin_tb.vhd

5-Simulate your design. For example, to simulate the binary counter testbench:

    $ vsim work.count_bin_tb

