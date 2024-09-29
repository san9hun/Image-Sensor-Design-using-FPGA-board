module scaler(
    input clk,
    input rst,
    //input [7:0] input_signal,
    output reg [7:0] output_signal
);

	 reg [5:0] i = 6'd0;
reg [5:0] j = 6'd0;
wire [7:0] multiplied_input;
reg [7:0] input_signal = 8'd128;
reg [7:0] output_signal1;
reg [3:0] cnt15 = 4'd0;
reg [4:0] cnt20 = 5'd0;
reg [7:0] mem [0:31][0:31];
reg [5:0] d = 0;
reg [5:0] e = 0;
reg [9:0] H_Pixel; 
reg [9:0] V_Pixel;

    always@(posedge clk) begin
         if (input_signal + ((16-i)*(16-i)+(16-j)*(16-j))/4 > 255) begin
        mem[i][j] = 255;

    end 
    else begin
        mem[i][j] = input_signal + ((16-i)*(16-i)+(16-j)*(16-j))/4;

    end
	 
	 if (i == 31) begin
            if (j == 31) begin
                  j = 0;
						i = 0;
            end
            else begin
				j = j + 1;
				i = 0;
				end
	 end
	 else begin
	 i = i + 1;
	 end
	 output_signal <= mem[d][e];
		  if(cnt20 == 19)begin
                        if(d == 31)begin
                           if(cnt15 == 14)begin
                              if(e == 31)begin
                                
                                 cnt20 <= 0;
                                 cnt15 <= 0;
                                 d <= 0;
                                 e <= 0;
                              end
                           
                              else begin
                                 
                                 e <= e + 1;
                                 cnt20 <= 0;
                                 cnt15 <= 0;
                                 d <= 0;
                                 
                              end
                           end
                           else begin
                              
                              cnt15 <= cnt15 + 1;
                              cnt20 <= 0;
                              d <= 0;
                           end
                        end
                        else begin
                           
                           d <= d + 1;
                           cnt20 <= 0;
                        end
                     end
                     else begin
                        
                        cnt20 = cnt20 + 1;
                     end
    end
endmodule
