module LayoutHelpers
  def author_image(name)
    case name
    when "jack"
      "beetlefeet.png"
    when "jason"
      "kranzky.jpg"
    when "rob"
      "rob.jpg"
    end
  end
end