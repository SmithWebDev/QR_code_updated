require 'rqrcode'

def greeting
  puts "================================================================================"
  puts "==========                    QR Code Generator.                      ========="
  puts "==============================================================================="
end

def url
  puts "-- Please enter the website that you would like to make into a QR Code --"
  puts '--------------------------------------------------------------------------------'
  url = gets.chomp
  return url
end

def filename
  puts "-- What would you like to name the QR Code file? --"
  puts '--------------------------------------------------------------------------------'
  filename = gets.chomp
  return filename
end

def primary_color
  puts '-- What is the primary color for the QR Code? --'
  puts '--------------------------------------------------------------------------------'
  print 'Primary Color: #'
  color = gets.chomp
  color == '' ? (color = 'black') : (color = color)
  puts color
  return color
end

def background_color
  puts '-- What would you like to use for the background? --'
  puts '--------------------------------------------------------------------------------'
  print 'Background Color: #'
  fill = gets.chomp
  fill == '' ? ('white') : (fill)
  return fill
end

def sizing
  puts '-- What size would you like the QR Code to be? (whole number) --'
  puts '--------------------------------------------------------------------------------'
  size = gets.chomp.to_i
  size == 0 ? (300) : (size)
  return size
end

def spacing
  puts
  sleep 1
end

puts '-- Did you want to use specific (hex) colors? (Y/N) --'
puts '--------------------------------------------------------------------------------'
decision = gets.downcase.chomp
case decision
when 'y'
  primary_color
  spacing
  background_color
  spacing
else
  color = 'black'
  fill = 'white'
end
sizing
#
#puts size
#puts 'One moment while we generate the QR Code'
#puts
#puts '*'
#sleep 0.25
#puts '**'
#sleep 0.25
#puts '***'
#sleep 0.25
#puts '****'
#sleep 0.25
#puts '*****'
#sleep 0.25
#puts '******'
#sleep 0.25
#puts '*****'
#sleep 0.25
#puts '****'
#sleep 0.25
#puts '***'
#sleep 0.25
#puts '**'
#sleep 0.25
#puts '*'
#sleep 0.25
#puts
##sleep 3
#
#puts 'Your QR Code has been generated and the image can be found in the same directory as this program.'
#puts
#puts 'Thank you for using the QR Code Generator'

#

#puts "The color of the QR Code information will be #{color == '' ? ('black') : (color)}. The background color will be #{fill == '' ? ('white') : (fill)}. Lastly, the desired size for the QR Code image is #{size == 0 ? (300) : (size)}px"

#qrcode = RQRCode::QRCode.new("#{url}")
#
#png = qrcode.as_png(
#  color: color,
#  fill: fill,
#  size: size
#)
#
#IO.binwrite("#{filename}.png", png.to_s)

