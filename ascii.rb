require "mini_magick"
require "pry"
class Converter
  attr_reader :image
  def initialize(image_path)
    @image = MiniMagick::Image.open(image_path)
  end
end
