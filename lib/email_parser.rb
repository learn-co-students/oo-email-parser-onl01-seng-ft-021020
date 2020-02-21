# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace

#require 'pry'

class EmailAddressParser
 
 attr_accessor :csv_emails
 
 def initialize(csv_emails)
   @csv_emails = csv_emails 
  # @@all << self
  end
 
 def parse
   csv_emails.split.collect do |address|
     address.split(',')
    end
    .flatten.uniq
  end 
end

emails1 = "ktalmage@gmail.com, kaity@gmail.com, eb@netscape.net"
parser1 = EmailAddressParser.new(emails1)
puts parser1.parse


