//------------------Enum type-methods-----------------

module enum_type_methods;
  
typedef enum{a=5,b,c=8,d}alphabet;
  
alphabet h;
   
initial begin
  
h=b;
  $display("name=%0s\th=%0d ",h.name,h);
  
  $display("h.num=%0d",h.num);
  
  $display("h.first=%0d name=%0s",h.first,h.first.name);
  
  $display("h.last=%0d name=%0s",h.last,h.last.name);
  
  $display("h.prev=%0d name=%0s",h.prev,h.prev.name);
  
  $display("h.next=%0d name=%0s",h.next,h.next.name);
  
  end
endmodule
