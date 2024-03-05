//-------------------------basic methods---------------------------
module string_basic_methods;
  string s1="Hi Everyone";//11
  string s2="He Everyone";//11
  string s3;
  
  initial begin
    $display("s1=%0d",s1.len());
    s1.putc(2,"char");
    $display("s1=%0s",s1);
    // s1.putc(2,"char")               //s1=Hiceveryone

    $display("s1=%0s=%0d", s1.getc(2), s1.getc(2));
    
    s1="ENGINEERING";
    $display("s1=%0s",s1.tolower());
    $display("s1=%0s",s1.toupper());
    
   // s2="ENGINEERING";
    s2="EZgineering";//A=65 a=97
    $display("s1=%0s s2=%0s difference=%0d",s1,s2,s1.compare(s2));
    //(s1-s2)case sensitive(0=equ,neg=s1<s2,pos=s1>s2)
    $display("s1=%0s s2=%0s difference=%0d",s1,s2,s1.icompare(s2)); //case insensitive
  end
endmodule