require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:triangle_form)
end

post ('/triangle_form') do
  side1 = params[:side1]
  side2 = params[:side2]
  side3 = params[:side3]
  triangle = Triangles.new(side1, side2, side3)
  @triangle = triangle.type_check()
  erb(:triangle_display)
end
