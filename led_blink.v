`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 09:44:16 PM
// Design Name: 
// Module Name: led_blink
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


module led_blink(clk_in,reset_n,led);

		input clk_in;
		input reset_n;
		output led;
		
		reg led_o;
		reg [25:0] counter;
		
		always@(posedge clk_in or negedge reset_n)
		begin
		
			if(reset_n == 1'b0)
				begin
					counter <= 1'b1;
					led_o <= 1'b0;
				end
				
			else
				begin				
					if(counter == 50000000)
						begin
							counter <= 1'b1;
							led_o <= ~led_o;
						end
					else
						begin
							counter <= counter + 1'b1;
						end
				end
		end
		 
		assign led = led_o;
		
endmodule
