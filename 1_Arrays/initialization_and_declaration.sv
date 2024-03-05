////-----------fixed size array-single dimensional array----------------

module fixed_single_example;
  int array[5] = {100,200, 300, 400,500};
// int array[5];
 
  initial begin
     $display("array[4] = %0d",array[4]);
    foreach (array[i]) begin
      $display("array[%0d] = %0d", i, array[i]);
     

    end
  end
endmodule

 ////--------------fixed size array-multi dimensional array-----------------

// module fixed_multi_example;

// int array[6][2] = '{'{1, 100}, '{2, 200}, '{3, 300}, '{4,400}, '{5, 500}, '{6, 600}};

// //bit [5:0] array[4:0][1:0];
// initial
//   begin
    
//    //array='{'{'h2,'h3},'{'h4,'h5},'{'h6,'h2},'{'h3,'h4},'{'h5,'h6}};
//     foreach (array[i,j]) 
//       begin
//       $display("array[%0d][%0d] = %0d", i,j, array[i][j]);
//       end
//   end
// endmodule

//----------------Dynamic array---------------------------------

// module dynamic_array_example;
//   int array [];
//   initial begin
//     array = new[5];
//     array = '{5, 10, 15, 20, 25};
    
//     // Print elements of an array

//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
//     $display("array = %0d", array[2]);
    
//     // size of an array
//     $display("size of array = %0d", array.size());
    
//     // Resizing of an array and copy old array content
//     array = new[8] (array);
//     $display("size of array after resizing = %0d", array.size());
//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
//     // Override existing array: Previous array elememt values will be lost
//     array = new[6];
//     $display("size of array after overriding = %0d", array.size());
//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
//     array.delete();
//     $display("size of array after deleting = %0d", array.size());
    
//   end
// endmodule

//--------------------------Associative array------------------------------

// module associative_array_example;
//    bit [7:0] array [int];
//    int index;
  
//   initial begin
    
//     array[5] = 2;
//     array[10] = 4;
//     array[7] = 6;
//     array[9] = 8;
//     array[20] = 10;
//     array[13] = 12;
    
//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
//     // Print array size and number of entries
//     $display("size = %0d, Number of entries = %0d of array", array.size(), array.num());
//     $display("--------------------------");
    
//     // exists method
//     if(array.exists(7)) $display("An element exists at index = 7");
//     else $display("An element doesn't exists at index = 7");
    
//     if(array.exists(8)) $display("An element exists at index = 8");
//     else $display("An element doesn't exists at index = 8");
//     $display("--------------------------");
    
//     // first, last, prev, next method
//     array.first(index);
//     $display("First index of array = %0d", index);
    
//     array.last(index);
//     $display("Last index of array = %0d", index);
    
//     index = 9;
//     array.prev(index);  // Previous index of 9
//     $display("Prev index of 9 is %0d", index);
    
//     index = 10;
//     array.next(index); // Next index of 10
//     $display("Next index of 10 is %0d", index);
    
//     $display("--------------------------");
//     // Delete particular index
//     array.delete(7);
    
//     // Print array elements
//     $display("After deleting element having index 7");
//     foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
//     $display("--------------------------");
    
//     // Delete complete array
//     array.delete();
//     $display("size = %0d of array", array.size());
//   end
// endmodule
//---------------------------------------------------
