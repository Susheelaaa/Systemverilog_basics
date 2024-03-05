module string_datatype;
  reg [0:15*8-1]s;
  string s0;
  bit[31:0]b;
  
  initial begin
    s = "how are you doing";//17chars
    $display("String s = %0s",s);
    
    s = "Hello World";//11chars
    $display("String s = %0s",s);
    
  //s0-> empty string
    $display("String s0 = %0s",s0);

    s0 = "Hello World ssssss";//11chars 
    $display("String s0 = %0s",s0);
  
    s0 = {"Hi,"," ",s};
    $display("String s0 = %0s",s0);
  
    b = 128;
    s0 = b; // sets 128 to s0
    $display("s0 = %0d\n bit b = %0d",s0,b);
    
    s0="welcome to We_LSI channel,practice at the end of the session \
All the best";
    $display("s0 = %0s",s0);

  end
endmodule