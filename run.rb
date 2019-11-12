require "./converter"
require 'thor'

class ASCIIrator < Thor

  desc "asciirate", "converts an image url into ascii art"
  def asciirate(url)
    converter = Converter.new(url)
    puts "We are about to print your art! You might want to zoom out!"
    sleep(3)
    converter.display
  end
end
ASCIIrator.start(ARGV)
# def run
#   input = "y"
#   while input == "y"
#     puts "Welcome to ASCIIrator!"
#     puts "Plese type in an image url:"
#     img = gets.chomp
#     converter = Converter.new(img)
#     puts "We are about to print your art! You might want to zoom out!"
#     sleep(3)
#     converter.display
#     puts "Would you like to go again? (Y/n)"
#     input = gets.chomp.downcase
#   end

# end

# run
