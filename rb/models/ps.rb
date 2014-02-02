
module Models
  class Ps
    def self.run
      cmd = 'ps -aux|awk '+"'{print "+'$1","$2","$3","$4","$5","$6","$7","$8","$9","$10","$11'+"}'"
      results = `#{cmd}`
      output = []

      results.split("\n").each do |result|
      	output.push(result.split(","))
      end

      output.to_json
    end
  end
end
