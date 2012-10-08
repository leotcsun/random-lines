require 'net/sftp'

Net::SFTP.start("SERVER", "USERNAME", :password => "PASSWORD") do |sftp|
	puts 'Logged in'
	sftp.file.open('FILENAME', 'r') do |f|
		puts f.gets
	end
end
