
module Models
  class Users
    def self.run
      results = `awk -F: \'{ if ($3<=499) print "system,"$1","$6; else print "user,"$1","$6; }\' < /etc/passwd`
      output = []

      results.split("\n").each do |result|
      	output.push(result.split(","))
      end

      output.to_json
    end
  end
end
