# <?php 
# 
#     exec('whereis php mysql vim python ruby java apache2 nginx openssl vsftpd make'.
#           '|awk \'{ split($1, a, ":");if (length($2)==0) print a[1]",Not Installed"; else print a[1]","$2;}\'',$result);
#     
#     
#     echo "[";
#     $x = 0;
#     $max = count($result)-1;
#     foreach ($result as $a)
#     {    
#         echo json_encode( explode(',',$result[$x]) );
#         echo ($x==$max)?'':',';
#         unset($result[$x],$a);
#         $x++;
#     }
#     echo ']';

# needs work

module Models
  class Whereis
    def self.run
      results = `whereis php mysql vim python ruby java apache2 nginx openssl vsftpd make |awk \'{ split($1, a, ":");if (length($2)==0) print a[1]",Not Installed"; else print a[1]","$2;}\'`
      output = []

      results.split("\n").each do |result|
      	output.push(result.split(","))
      end

      output.to_json
    end
  end
end
