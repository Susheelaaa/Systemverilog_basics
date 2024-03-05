module queues_array;
  //declaration
  bit [31:0] q[$:3];  //bounded queue
  
  initial begin
    //Queue Initialization:
    q = {0,1,2,3};
    
    //push_front method: last element will be pushed out
    q.push_front(8);
    $display("\tqueue elements: %0p",q);
    
//     foreach(q[i]) $display("\tq[%0d]=%0d",i,q[i]);
//     $display("\tq[2]=%0d",q[2]);

    q.push_back(8);//new element wii be discared
    $display("\tqueue elements: %0p",q);
    
  end
endmodule

    