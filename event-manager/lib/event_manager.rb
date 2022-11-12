require 'csv'
require 'google/apis/civicinfo_v2'

civic_info = Google::Apis::CivicinfoV2::CivicInfoService.new
civic_info.key = 'AIzaSyClRzDqDh5MsXwnCWi0kOiiBivP6JsSyBw'
response = civic_info.representative_info_by_address(address: 80202, levels: 'country', roles: ['legislatorUpperBody', 'legislatorLowerBody'])



puts 'Event Manager Initialized!'

contents = File.read('../event_attendees.csv')
# puts contents

# puts File.exist?('../event_attendees.csv')

lines = File.readlines('../event_attendees.csv')
# puts lines[1..5]
lines.each_with_index do |line, index|
  next if index == 0
  col = line.split(",")
  name = col[2]
  # puts name
end

contents = CSV.open(
  '../event_attendees.csv', 
  headers: true,
  header_converters: :symbol
)

def clean_zip(zip)
  if zip.nil? || zip == ""
    zip = '00000'
  end
  zip = zip.to_s
  while zip.length > 5 do
    zip.chop
  end
  while zip.length < 5 do
    zip.prepend("0")
  end
end

contents.each do |row|
  name = row[:first_name]
  zip = row[:zipcode]

  zip = clean_zip(zip)

  begin
    legislators = civic_info.representative_info_by_address(
      address: zip,
      levels: 'country',
      roles: ['legislatorUpperBody', 'legislatorLowerBody']
    )
    legislators = legislators.officials
  rescue
    'You can find your representatives by visiting www.commoncause.org/take-action/find-elected-officials'
  end

  puts "#{name} #{zip} #{legislators}"

  puts name
  puts zip
end

