# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

def get_three_coins(n)
  coins = []
  (2..4).each do |i|
    coins << n/i
  end
  return coins
end

def wonky_coins(n)
  coins = [n]
  zero = 0

  i = 0
  while i < coins.length
    if coins[i] != 0
      temp = get_three_coins(coins[i])
      coins.shift
      temp.each { |c| coins << c}
    else
      zero += 1
      i += 1
    end
  end
  # p zero
  return zero

end

puts("\nTests for #wonky_coins")
puts("===============================================")
    puts "wonky_coins(1) == 3: "  + (wonky_coins(1) == 3).to_s
    puts "wonky_coins(5) == 11: "  + (wonky_coins(5) == 11).to_s
    puts "wonky_coins(6) == 15: "  + (wonky_coins(6) == 15).to_s
    puts "wonky_coins(0) == 1: "  + (wonky_coins(0) == 1).to_s
puts("===============================================")
