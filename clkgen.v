module clkgen(input clk, output reg ti); //ledgen
wire tempwire;
reg [13:0]cnt;

genpll genpll(.inclk0(clk), .c0(tempwire));

always @ (posedge tempwire) begin
if (cnt >= 14'd10240)
begin
cnt <= 1'b0;
ti <= 1'b0;

end

else if(cnt < 2'd2)
begin
ti <= 1'b1;
cnt = cnt + 1'b1;
end else begin
cnt = cnt + 1'b1;
ti = 0;
end
end
endmodule