module clkgen(input clk,  button, output reg exit, exitbutton, ledbutton); //ledgen
wire tempwire;
reg [13:0]cnt;

genpll genpll(.inclk0(clk), .c0(tempwire));
always @ (posedge clk) begin
if (button == 1'b1) begin
exitbutton <= 1;
ledbutton <= 0;
end
else begin
exitbutton <= 1'b0;
ledbutton <= 1'b1;
end
end

always @ (posedge tempwire) begin
if (cnt >= 14'd10240)
//if (cnt >= 24'd1000000)
begin
cnt <= 1'b0;
exit <= 1'b0;

//ledgen <= 0; // new

end

//else if (cnt >= 24'd100000) // new
//begin
//ledgen <= 1;
//cnt <= cnt + 1;
//end

else if(cnt < 2'd2)
begin
exit <= 1'b1;
cnt = cnt + 1'b1;
end else begin
cnt = cnt + 1'b1;
exit = 0;
end
end
endmodule