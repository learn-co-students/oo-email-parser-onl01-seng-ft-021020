# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser 
    attr_accessor :emails
    
   
   def initialize(email)
      @emails = email
      
    end 
    
    def parse
     # binding.pry
      split_emails = emails.split(" ")
      split_emails.each do |string| 
      if string.include?(",")
        string.chomp!(",")
        end 
      end 
      split_emails.uniq
    end 
  
end 