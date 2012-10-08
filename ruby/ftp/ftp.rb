require 'net/ftp'

Net::FTP.open("SERVER") do |ftp|
	ftp.login("USERNAME", "PASSWORD")
	puts "Logged in"
	ftp.passive = true
	puts ftp.size("FILENAME")
	ftp.getbinaryfile("FILENAME", "MYFILENAME", 1024)
end
