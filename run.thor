require "./converter"
require 'thor'

class Asciirator < Thor

  desc "asciirate", "converts an image url into ascii art"
  def asciirate(url)
    converter = Converter.new(url)
    puts "We are about to print your art! You might want to zoom out!"
    sleep(3)
    converter.display
  end
end
Asciirator.start(ARGV)

