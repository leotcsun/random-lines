require 'csv'


CSV.foreach("mapping.csv") do |row|
	puts "UPDATE TABLENAME SET ROW = #{row[1]} WHERE ROW = '#{row[0]}';"
end
