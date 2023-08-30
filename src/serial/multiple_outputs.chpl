
proc first_four_powers(a) {
  var p1 = a;
  var p2 = p1*a;
  var p3 = p2*a;
  var p4 = p3*a;
  return (p1, p2, p3, p4);
}

var a : int = 2;
writeln('The first four powers of ',a,' are:');
for p in first_four_powers(a) {
  writeln('  ',p);
}
