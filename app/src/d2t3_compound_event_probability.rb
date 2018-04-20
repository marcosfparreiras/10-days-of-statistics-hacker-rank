# Task
# There are  urns labeled X, Y, and Z.
# - Urn X contains 4 red balls and 3 black balls.
# - Urn Y contains 5 red balls and 4 black balls.
# - Urn Z contains 4 red balls and 4 black balls.
#
# One ball is drawn from each of the 3 urns. What is the probability that, of
# the 3 balls drawn, 2 are red and 1 is black?

#### ANSWER
# P(2red, 1 black) = P(red red black) + P(red black red) + P(black red red)
# P(2r 1b) = P(( xr int yr int zb) u ( xr int yb int zr) u ( xb int yr int zr))
#
# Urn X has a 4/7 probability of giving a red ball
# Urn Y has a 5/9 probability of giving a red ball
# Urn Z has a 1/2 probability of giving a red ball
# Urn X has a 3/7 probability of giving a black ball
# Urn Y has a 4/9 probability of giving a black ball
# Urn Z has a 1/2 probability of giving a black ball
#
# P(xr) = 4 / 7
# P(xb) = 3 / 7
# P(yr) = 5 / 9
# P(yb) = 4 / 9
# P(zr) = 4 / 8
# P(zb) = 4 / 8

p_xr = Rational(4, 7)
p_xb = Rational(3, 7)
p_yr = Rational(5, 9)
p_yb = Rational(4, 9)
p_zr = Rational(4, 8)
p_zb = Rational(4, 8)

rrb = (p_xr * p_yr * p_zb)
rbr = (p_xr * p_yb * p_zr)
brr = (p_xb * p_yr * p_zr)
probability = rrb + rbr + brr

puts "The probability is: #{probability}"
