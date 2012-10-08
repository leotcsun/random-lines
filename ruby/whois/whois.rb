require 'rubygems'
require 'whois'


input_file_name = 'sites-sorted-by-impressions.txt'
c = Whois::Client.new(:timeout => 10)
$count = 1

directory_name = Dir::pwd + "/" + "results"
Dir::mkdir(directory_name) unless FileTest::directory?(directory_name)

File.open(input_file_name, "r").each_line do |line|
	puts "#{$count} #{line}"
	new_file_name = line.split(".")[0]

	begin
  	File.open("#{directory_name}/#{$count}-#{new_file_name}.txt", 'w') do |new_file|
    	r = c.query(line)
    	new_file.puts r
    end
	rescue
  end
	puts "#{line} fetch failed"
end