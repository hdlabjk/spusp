`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2017 10:23:41 PM
// Design Name: 
// Module Name: Squaring
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

    // This module implements a parameterizable (a-b) squarer
    // which can be implemented in a DSP48E2(ultrascale) by using the pre-adder
    // The size should be less than or equal to what is supported
    // by the architecture
      

module Squaring #(parameter SIZEIN = 16)
(input clk, ce, rst,input [SIZEIN-1:0] a, b, output [2*SIZEIN+1:0] square_out  );

//Paste the copied text from Language Templates here              
  
// This module implements a parameterizable (a-b) squarer
// which can be implemented in a DSP48E2(ultrascale) by using the pre-adder
// The size should be less than or equal to what is supported
// by the architecture

// Declare registers for intermediate values
reg signed [SIZEIN-1:0]   a_reg, b_reg;
reg signed [SIZEIN:0]     diff_reg;
reg signed [2*SIZEIN+1:0] m_reg, p_reg;

always @(posedge clk)
begin
 if (rst)
  begin
	  a_reg    <= 0;
	  b_reg    <= 0;
	  diff_reg <= 0;
	  m_reg    <= 0;
	  p_reg    <= 0;
  end
 else
  if (ce)
	 begin
      a_reg     <= a;
      b_reg     <= b;
      diff_reg  <= a_reg - b_reg;
      m_reg     <= diff_reg * diff_reg;
      p_reg     <= m_reg;
	end
end

// Output result
assign square_out = p_reg;

				
				                  
endmodule

//<copyright-disclaimer-start>
//<copyright-disclaimer-start>
//  **************************************************************************************************************
//  * © 2026 Advanced Micro Devices, Inc. All rights reserved.                                                   *
//  * DISCLAIMER                                                                                                 *
//  * The information contained herein is for informational purposes only, and is subject to change              *
//  * without notice. While every precaution has been taken in the preparation of this document, it              *
//  * may contain technical inaccuracies, omissions and typographical errors, and AMD is under no                *
//  * obligation to update or otherwise correct this information.  Advanced Micro Devices, Inc. makes            *
//  * no representations or warranties with respect to the accuracy or completeness of the contents of           *
//  * this document, and assumes no liability of any kind, including the implied warranties of noninfringement,  *
//  * merchantability or fitness for particular purposes, with respect to the operation or use of AMD            *
//  * hardware, software or other products described herein.  No license, including implied or                   *
//  * arising by estoppel, to any intellectual property rights is granted by this document.  Terms and           *
//  * limitations applicable to the purchase or use of AMD’s products are as set forth in a signed agreement     *
//  * between the parties or in AMD's Standard Terms and Conditions of Sale. GD-18                               *
//  *                                                                                                            *
//  **************************************************************************************************************
//<copyright-disclaimer-end>
//<copyright-disclaimer-end>
//<copyright-disclaimer-end>
//<copyright-disclaimer-end>
