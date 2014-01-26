
module Models
  class Df
    def self.run
      results = `df -h|awk \'{print $1","$2","$3","$4","$5","$6}\'`
      output = []

      results.split("\n").each do |result|
      	output.push(result.split(","))
      end

      output.to_json
    end
  end
end
