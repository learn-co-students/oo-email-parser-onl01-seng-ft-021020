# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails
  
  def initialize(data)
    @emails = data
  end
  
  def parse
    
    
    regex = @emails.split(%r{(,\s+|\s+|\s|,)})
    result = []
    regex.each do |r|
      if(result.include?(r) == false && r.split("").include?("@"))
        result << r
      end
    end

    result
  end
end
