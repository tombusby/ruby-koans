# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  a, b, c = [a, b, c].sort
  arg_aray = [a, b, c]
  if not arg_aray.select{|item| item <= 0}.empty? or c >= a + b
  	raise TriangleError
  end
  case arg_aray.uniq.length
  when 1
  	:equilateral
  when 2
  	:isosceles
  when 3
  	:scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
