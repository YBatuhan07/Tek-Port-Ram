module ram (input clk, input sinyal,   
    input [7:0] veri,   
    input [7:0] adres,     
    output reg [7:0] veri2 );
 
reg [7:0] bellek [0:255];
 
always @(posedge clk)
begin
    if (sinyal)
        bellek[adres] <= veri;

    veri2 <= bellek[adres];
end
 
endmodule