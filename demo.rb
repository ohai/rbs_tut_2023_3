require 'date'

def print_usage_and_exit
  puts("Usage: ruby demo.rb YEAR")
  exit
end

def main(year)
  if year.nil?
    print_usage_and_exit
  end

  d = Date.new(Integer(year), 1, 1)
  if d.leap?
    puts("うるう年です")
  else
    puts("うるう年ではありません")
  end
end


main(ARGV.shift)
