#Implement a Rock, Paper, Scissors game. The method rps should take a string (either “Rock”, “Paper” or “Scissors”) as a parameter and return the computer’s choice, and the outcome of the match. Example:

def rps(choice)
  choices = ["rock", "paper", "scissors"]

  index = rand(0..2)

  if choice == "rock"
    if index == 0
      return "#{choices[index]}, draw"
    elsif index == 1
      return "#{choices[index]}, lose"
    elsif index == 2
      return "#{choices[index]}, win"
    end
  end
end
rps("rock")

#Implement a Swingers game. The method swingers should take an array of couple arrays and return the same type of data structure, with the couples mixed up. Assume that the first item in the couple array is a man, and the second item is a woman. Don’t pair a person with someone of their own gender (sorry to ruin your fun)

def swingers(couples)
  men = []
  women = []
  pair = []
  newCouples = []

  couples.each do |couple|
    men << couple[0]
    women << couple[1]
  end


end

swingers([
  ["Clyde", "Bonnie"],
  ["Paris", "Helen"],
  ["Romeo", "Juliet"]
])
