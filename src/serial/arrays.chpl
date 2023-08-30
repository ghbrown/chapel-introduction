
proc frobenius_norm(A) {
    return sqrt(+ reduce A**2);  // sqrt(sum of a_ij^2 for all i,j)
}


// --size=<N> to specify different value on command line
config const size : int = 10;

// two arrays of same size with different indexing
var B : [1..size, 1..size]   real = 1.0;
var C : [0..<size, 0..<size] real = 1.0;

// call function directly on arrays
writeln(frobenius_norm(B));
writeln(frobenius_norm(C));
