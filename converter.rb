require "mini_magick"
require "pry"
class Converter
  attr_reader :image, :pixels, :brightness_matrix, :ascii_matrix
  def initialize(image_path)
    @image = MiniMagick::Image.open(image_path)
    puts "Image successfully loaded"
      @image.resize "300x300"


    @pixels = @image.get_pixels
    puts "Pixel map created"
    @brightness_matrix = map_brightness
    puts "Brightness matrix created"
    @ascii_matrix = map_ascii
    puts "ASCII Matrix created"
  end

  def inspect
  end

  def display
    system("clear")
    @ascii_matrix.each do |row|
      puts row.join
    end
    true
  end

  def map_brightness
    @pixels.map do |row|
      row.map do |pixel|
        (pixel[0] + pixel[1] + pixel[2]) / 3
      end
    end
  end

  def map_ascii
    chars = "`^\",:;Il!i~+_-?][}{1)(|\\/tfjrxnuvczXYUJCLQ0OZmwqpdbkhao*#MW&8%B@$"
    @brightness_matrix.map do |row|
      row.map do |cell|
        (chars[cell/4]) * 3
      end
    end
  end
end
