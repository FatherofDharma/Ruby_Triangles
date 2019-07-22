require('rspec')
require('triangles')

describe ('#Triangles') do

  it ('will initialize a new triangle and store side lengths') do
    triangle1 = Triangles.new(1,2,3)
    expect(triangle1.side1).to(eq(1))
    expect(triangle1.side2).to(eq(2))
    expect(triangle1.side3).to(eq(3))
  end
end

describe ('type_check') do
  it ('will evaluate if a triangle is equilateral') do
    triangle1 = Triangles.new(2,2,2)
    expect(triangle1.type_check).to(eq('equilateral'))
  end

  it ('will evaluate if a triangle is isosceles') do
    triangle1 = Triangles.new(2,2,3)
    expect(triangle1.type_check).to(eq('isosceles'))
  end

  it ('will evaluate if a triangle is scalene') do
    triangle1 = Triangles.new(1,2,3)
    expect(triangle1.type_check).to(eq('scalene'))
  end

  it ('will evaluate if a triangle') do
    triangle1 = Triangles.new(1,2,30)
    expect(triangle1.type_check).to(eq('not a triangle'))
  end

end
