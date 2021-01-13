# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        all_emails = @email_addresses.split(/[\s,+\s]/)

        unique_emails = []

        all_emails.each do |email|

            if unique_emails.include?(email) == false && email != ""
                unique_emails.push(email)
            end

        end

        unique_emails

    end


end
