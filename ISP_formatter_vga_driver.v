module vga_driver (
	 input clock_in,
    input reset,     // Active high
    output wire hsync,    // HSYNC (to VGA connector)
    output wire vsync,    // VSYNC (to VGA connctor)
    output wire [7:0] red,     // RED (to resistor DAC VGA connector)
    output wire [7:0] green,   // GREEN (to resistor DAC to VGA connector)
    output wire [7:0] blue,    // BLUE (to resistor DAC to VGA connector)
    output wire sync,          // SYNC to VGA connector
    output wire clk,           // CLK to VGA connector
    output wire blank          // BLANK to VGA connector
);
	
wire clock;

	vga_clock(
	clock_in,
	clock
	);
	
	
	vga_driver_3(
	clock,     // 25 MHz
   reset,     // Active high
   hsync,    // HSYNC (to VGA connector)
   vsync,    // VSYNC (to VGA connctor)
   red,     // RED (to resistor DAC VGA connector)
   green,   // GREEN (to resistor DAC to VGA connector)
   blue,    // BLUE (to resistor DAC to VGA connector)
   sync,          // SYNC to VGA connector
   clk,           // CLK to VGA connector
   blank
	);
	
endmodule
