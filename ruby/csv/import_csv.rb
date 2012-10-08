require 'csv'

CSV.foreach("pages_zh.csv") do |row|
	puts "INSERT INTO acuityads_classifier.page (PageUrl, SeenCount, ScanDuration) VALUES (\"#{row[1]}\", 4, null);"
end