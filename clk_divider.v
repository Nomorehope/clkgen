module clk_divider(
input clk,
output reg led);
reg [25:0] counter;
initial counter <= 26'd0;
initial led <= 1'b0;

always @ (posedge clk) begin
	//if(counter == 20'd1512000) begin
	if(counter == 26'd3024000) begin
	counter <= 26'd0;
	led <= ~led;
	end else 
	counter <= counter + 1'b1;
	end
endmodule