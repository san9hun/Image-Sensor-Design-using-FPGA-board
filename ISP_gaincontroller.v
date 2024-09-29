module gaincontroller (
    input clk,
    input [7:0] input_signal,
    output reg [7:0] output_signal,
    output reg vsync,
    output reg hsync
);

reg [5:0] i = 6'd0;
reg [5:0] j = 6'd0;
wire [7:0] multiplied_input;



always @(posedge clk) begin
    if (i >= 32) begin
        i <= 0;
        j <= j+1;
        vsync <= 1;
        if (j >= 32) begin
           j <= 0;
           hsync <= 1;
        end 
        else begin
           hsync <= 0;
        end
    
    end else begin
        i <= i + 1;
        vsync <= 0;
    end
    
   
    
    if (input_signal + ((16-i)*(16-i)+(16-j)*(16-j))/10 > 255) begin
        output_signal <= 255;
    end 
    else begin
        output_signal <= input_signal  + ((16-i)*(16-i)+(16-j)*(16-j))/10;
    end
end

endmodule
