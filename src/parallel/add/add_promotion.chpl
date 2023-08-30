config const n : int = 1000;

var beta : real = 2.0;
var A : [0..<n] real = 1.0;
var B : [0..<n] real = 2.0; 
var C : [0..<n] real;  // will compute C = A + beta*B

C = A + beta*B;
