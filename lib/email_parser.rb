# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  attr_accessor :addrs

  def initialize(addr_arr)
    @addrs = []
    addr_arr.split(/[, ]/).each { |addr| @addrs << addr if addr != "" }
  end

  def parse
    @addrs = @addrs.uniq
  end

end