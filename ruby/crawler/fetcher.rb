require 'open-uri'

url = ARGV[0].downcase
url = "http://" + url unless url.include?("http://")

file_name = url.gsub(%r([.:\-/?=!,]), '')
file_path = "fetcher_result/#{file_name}.html"
file = open(file_path, 'w')

source = open(url) { |f| IO.write(file_path, f.read) }

file.close
