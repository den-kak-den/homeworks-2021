
LETTERS_REG = "A-Za-zА-Яа-яё".freeze
DIGITS_REG = "0-9".freeze

def task_4(string)
  res_hash = {}

  #binding.irb
  #res_hash[:letters] = string.slice(/[a-zA-Zа-яА-Яё]/g)
  res_hash[:letters] = string.count(LETTERS_REG)
  res_hash[:digits] = string.count(DIGITS_REG)

  return res_hash
end
