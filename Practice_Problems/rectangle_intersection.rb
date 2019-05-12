# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.
#
# Difficulty: 4/5

# [0, 0] [4, 2]x

def rec_intersection(rect1, rect2)
  # rect1[0][0] = x1
  # rect1[0][1] = y1
  # rect1[1][0] = x2
  # rect1[1][1] = y2

  # rect2[0][0] = x3
  # rect2[0][1] = y3
  # rect2[1][0] = x4
  # rect2[1][1] = y4

  # rect1[0] vs rect2[0] max
  # rect1[1] vs rect2[1] min

  if (rect2[0][0] < rect1[0][0] and rect2[1][0] < rect1[0][0]) or (rect2[0][0] > rect1[1][0] and rect2[1][0] < rect1[1][0]) or
     (rect2[0][1] < rect1[0][1] and rect2[1][1] < rect1[0][1]) or (rect2[0][1] > rect1[1][1] and rect2[1][1] > rect1[1][1])
     return nil
  end


  # blx -> max
  if rect1[0][0] > rect2[0][0]
    blx = rect1[0][0]
  else
    blx = rect2[0][0]
  end

  # bly -> max
  if rect1[0][1] > rect2[0][1]
    bly = rect1[0][1]
  else
    bly = rect2[0][1]
  end

  # trx -> min
  if rect1[1][0] < rect2[1][0]
    trx = rect1[1][0]
  else
    trx = rect2[1][0]
  end

  # try -> min
  if rect1[1][1] < rect2[1][1]
    try = rect1[1][1]
  else
    try = rect2[1][1]
  end

  return [[blx, bly], [trx,try]]

end

puts("\nTests for #rec_intersection")
puts("===============================================")
    puts "rec_intersection([[0, 0], [2, 1]], [[1, 0], [3, 1]]) == [[1, 0], [2, 1]]: "  + (rec_intersection([[0, 0], [2, 1]], [[1, 0], [3, 1]]) == [[1, 0], [2, 1]]).to_s
    puts "rec_intersection([[1, 1], [2, 2]], [[0, 0], [5, 5]]) == [[1, 1], [2, 2]]: "  + (rec_intersection([[1, 1], [2, 2]], [[0, 0], [5, 5]]) == [[1, 1], [2, 2]]).to_s
    puts "rec_intersection([[1, 1], [2, 2]], [[4, 4], [5, 5]]) == nil: "  + (rec_intersection([[1, 1], [2, 2]], [[4, 4], [5, 5]]) == nil).to_s
    puts "rec_intersection([[1, 1], [5, 4]], [[2, 2], [3, 5]]) == [[2, 2], [3, 4]]: "  + (rec_intersection([[1, 1], [5, 4]], [[2, 2], [3, 5]]) == [[2, 2], [3, 4]]).to_s
puts("===============================================")
