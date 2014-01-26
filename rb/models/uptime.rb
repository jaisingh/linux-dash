
module Models
  class Uptime
    def self.run
      uptime = `cat /proc/uptime`.to_i
      uptime/(60*60)
    end
  end
end
