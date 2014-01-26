
module Models
  class Test
    def self.run
      milli = `awk \'{print $1*1000}\' /proc/uptime`.to_i
      
      milli/(1000*60*60)
    end
  end
end