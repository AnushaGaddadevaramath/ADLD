module carpark_tb(password,clock,park);
reg clock,password;
wire park;
carpark DUT(password,clock,park);
always #5 clock=~clock;
initial begin
clock=2'b0;
#5 password = 2'b1;
#5 password = 2'b0;
#10 finish
end
initial begin
$monitor ($time,"pass: %b",park);
end 
endmodule

module carpark(password,park,clock);
input clock;
output [1:0] park;
input [1:0] password;
parameter fs=0, bs=1;
parameter rpw=2'b0, wpw=2'b1;
reg cst,nst;
always @(password)
begin 
case(cst)
fs:if(password==2'b0)
   begin 
   nst<=fs;
   park<=rpw;
   end
   else
   begin
   nst<=bs;
   park<=wpw;
   end
bs:if(password==2'b1)
   begin
   nst<=bs;
   park<=wpw;
   end
   begin
   nst<=fs;
   park<=rpw;
   end
default: begin
         nst<=fs;
         park<=rpw;
         end
endcase
end

