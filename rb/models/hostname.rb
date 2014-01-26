
module Models
  class Hostname
    def self.run
      `hostname`
    end
  end
end