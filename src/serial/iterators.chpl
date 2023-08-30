use IO.FormattedIO;

var ordinals = ('first','second','third');

for (ord,i) in zip(ordinals,1..) {
  writeln('ordinal "%s" corresponds to number "%i"'.format(ord,i));
}
