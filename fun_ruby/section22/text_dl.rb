require "open-url"

url = "https://www.aozora.gr.jp/cards/000009/files/8_31220.html"
filename = "akage.html"

File.open(filename, "wb:UTF-8") do |f|
  text = open(url, "r:Shift_JIS:UTF-8").read
  f.write text
end
