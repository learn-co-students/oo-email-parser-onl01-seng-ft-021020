class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        emails.tr(",", "").split(" ").uniq
    end
end