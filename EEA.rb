$WIDTH = 6
def pretty_print(*args)
  output = ""
  args.each do |a|
    output << a.to_s.rjust($WIDTH)
  end
  puts output
end
if ARGV.length < 2
  puts "Error needs two arguments. Got: #{ARGV.length}"
  exit
end
puts "Extended Euclidean Algorithm, Step by Step by Kevin Peng."
a = ARGV[0].to_i
b = ARGV[1].to_i
q1, q2, x1, y1, x2, y2, r1 = 0, 0, 1, 0, 0, 1, a
pretty_print "x", "y", "r", "q"
puts "----" * $WIDTH
pretty_print x1, y1, r1, q1
r2 = b
pretty_print x2, y2, r2, q2
while r2>0 do
  q1, q2 = q2, r1/r2
  r1, r2 = r2, r1%r2
  x1, x2 = x2, x1-q2*x2
  y1, y2 = y2, y1-q2*y2
  pretty_print x2, y2, r2, q2
end
