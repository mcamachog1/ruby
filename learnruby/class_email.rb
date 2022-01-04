class Email
    attr_reader :subject, :date, :from 
    def initialize(subject, headers)
        @subject = subject
        @date = headers[:date]
        @from = headers[:from]        
    end    
end

class Mailbox
    attr_reader :name, :emails
    def initialize(name, emails)
        @name = name
        @emails = emails
    end
end

class MailboxTextFormatter
    @@max_from = 0
    @@max_subject = 0
    attr_reader :format
    def initialize(mailbox)
        @mailbox = mailbox
    end
    
    def max_padding
        @mailbox.emails.each do |email|
            @@max_from = email.from.size if email.from.size > @@max_from
            @@max_subject = email.subject.size if email.subject.size > @@max_subject
        end
    end

    def format
        self.max_padding
        dash_line = "+#{'-'*12}+#{'-'*(@@max_from+2)}+#{'-'*(@@max_subject+2)}+"
        header = []
        table_header = []
        lines = []
        header << "Mailbox: #{@mailbox.name}" << "" 
        table_header << "| Date ".ljust(13) + "| From".ljust(@@max_from+3) + "| Subject".ljust(@@max_subject+2)+" |"
        @mailbox.emails.each do |email|
            lines << "| #{email.date.ljust(10)} | #{email.from.ljust(@@max_from)} | #{email.subject.ljust(@@max_subject)}" + " |"           
        end
        header.join("\n") +"\n" + dash_line + "\n" + table_header.join("\n") + "\n"+dash_line + "\n" + lines.join("\n") + "\n" + dash_line +"\n"
    end
end

class MailboxHtmlFormatter
    attr_reader :format
    def initialize(mailbox)
        @mailbox = mailbox
    end
    
    def format
        output1 = "<html>
        <head>
      <style>
        table {
          border-collapse: collapse;
        }
        td, th {
          border: 1px solid black;
          padding: 1em;
        }
      </style>
        </head>
        <body>
      <h1>  #{@mailbox.name}</h1>
      <table>
        <thead>
          <tr>
            <th>Date</th>
            <th>From</th>
            <th>Subject</th>
          </tr>
        </thead>
        <tbody>"
        lines = []
        @mailbox.emails.each do |email|
            lines <<  "<tr><td>#{email.date}</td><td>#{email.from}</td><td>#{email.subject}</td></tr>"
        end
        output2 ="</tbody>
      </table>
        </body>
        </html>"
        html_code = output1 + lines.join(" ") + output2
        File.write("output/emails.html", html_code)
    end
end

class EmailsCsvStore
  require "csv"
  def initialize(file)
    @file = file
  end

  def read
    emails_source = CSV.parse(File.read(@file), headers: true)

    "col 0:date 1:from 2:subject"
    emails = []
    emails_source.each do |row|
      date = row[0]
      from = row[1]
      subject = row[2]
      emails << Email.new(subject,{ date: date, from: from})
    end
    return emails
  end
end

#Cargar emails
emails = EmailsCsvStore.new("emails.csv").read

mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxHtmlFormatter.new(mailbox)
  
puts formatter.format