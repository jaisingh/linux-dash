# <?php echo  ('cat /etc/issue') ;

module Models
  class Issue
    def self.run
      `cat /etc/issue`
    end
  end
end