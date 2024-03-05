// //-----------------Enum type-ranges-----------------
module enum_type_ranges;
  
  typedef enum{a,b,c,d}alphabet1;//a=0,b=1,c=2,d=3
  
  typedef enum{e=5,f,g=8,h}alphabet2;//e=5,f=6,g=8,h=9
  
 // typedef   enum{a=5,b,c=6,d}alphabet;//error
  
  typedef enum bit[3:0]{i=3,j,k=9,l}alphabet3;//i=3,j=4,k=9,l=10
  
  typedef enum logic[1:0]{e[4]}alphabet4;//e0=0,e1=1,e2=2,e3=3
  
  typedef enum{b[4]=5}alphabet5;//b0=5,b1=6,b2=7,b3=8
  
  typedef enum{c[3:6]}alphabet6;//c3=0,c4=1,c5=2,c6=3
  
  typedef enum{d[2:5]=3}alphabet7;//d2=3,d3=4,d4=5,d5=6
  
    alphabet1 a1= 3;
    alphabet2 a2 = g;
    alphabet3 a3 = j;
    alphabet4 a4 = e1;
    alphabet5 a5 = b2;
    alphabet6 a6 = c5;
    alphabet7 a7 = d3;
  
  initial begin

     $display("a1=%0d name=%0s",a1,a1.name);

     $display("a2=%0d name=%0s",a2,a2.name);

     $display("a3=%0d name=%0s",a3,a3.name);

     $display("a4=%0d name=%0s",a4,a4.name);

     $display("a5=%0d name=%0s",a5,a5.name);

     $display("a6=%0d name=%0s",a6,a6.name);
  
     $display("a7=%0d name=%0s",a7,a7.name);
  end
endmodule