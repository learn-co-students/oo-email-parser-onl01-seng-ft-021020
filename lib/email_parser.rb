# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email
  @@email =[]
  
  def initialize(email)
    @email = email 
    
  end 

  def parse
    new_arry= @email.split(/[, ]/)
    new_arry.delete_if {|space| space.empty?}.uniq
  end 

end 