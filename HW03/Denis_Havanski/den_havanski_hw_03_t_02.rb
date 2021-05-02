DATE_REG = /[0-3]{1}\d{1}\/[A-za-z]{3}\/[1-2]{1}\d{3}:[0-2]{1}[0-4]{1}:[0-5]{1}\d:[0-5]{1}\d\s\+[0-9]{4}/
BODY_REG = /\/[a-z]+\/\d\/[a-z]+/
IP_REG = /^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/

def task_2(logs)

  array = logs.split("\n")

  ret_array = []
  array.each do |line|
    date = line.slice(DATE_REG)
    ip =  line.slice(IP_REG)
    body = line.slice(BODY_REG)

    if (date && ip && body).class == String
      ret_line = "#{date} FROM: #{ip} TO: #{body.upcase}"
      ret_array << ret_line
    end
  end

  return ret_array

end
