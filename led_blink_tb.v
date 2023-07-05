`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 09:45:15 PM
// Design Name: 
// Module Name: led_blink_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_blink_tb();

		reg clk_in, reset_n;
		wire led;
		
		led_blink dut (clk_in, reset_n, led);
		
		initial
		begin
			clk_in = 1'b0;
			forever #5 clk_in = ~clk_in;
		end
		
		initial
		begin
			reset_n = 1'b0;
			#5;
			reset_n = 1'b1;
			#100;
		end
		
endmodule
