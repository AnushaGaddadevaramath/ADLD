module coin(product,changes,insertcoins);
output changes,product;
input insertcoins;
parameter a=2'b00 , b=2'b01, c=2'b10 , d=5'b11 , idle=3'b000;
reg current_st, next_st,state;



always @(current_st)
begin
case(state)

a:if(insertcoins==5'b00101)
 begin
 next_st<=a;
 product=5'b00101
 change=5'b00000
 end
 else if(insertcoins==(

b:if(insertcoins== 5'b01010)
  begin 
  next_st<=b;
  product=5'b01010
  change=5'b00000
  end
  else if(insertcoins==(5'b00101 & 5'b00101))
  begin 
  nst<=b;
  product=5'b01010;
  change=5'b00000;
  end 
  else 
  begin
  nst<=idle;
  product=5'b00000;
  end
 
c:if(insertcoins== 5'b01111)
  begin 
  next_st<=c;
  product=5'b01111
  change=5'b00000;
  end
  else if(insertcoins==(5'b01010 & 5'b01010)
  begin
  nst<=c;
  product  = 5'b01111;
  change = 5'b00000;
  end
  else 
  begin
  nst<idle;
  product=5'b00000;
 end

d:
 
