# First part of the exercise
# Finding if a value is a valid destination
# to visit

# Copy and paste the following code
# and execution of the code examples are
# bellow

rows = 8
cols = 8
initial_color = :white
@chess = []

def get_opposite_color(current_color)
  current_color == :black ? :white : :black
end

def generate_zebra_colors(size_of_array, initial_color)
  @array_values = []
  size_of_array.times do
    @array_values << initial_color
    initial_color = get_opposite_color(initial_color)
  end
  @array_values
end

rows.times do
  result = generate_zebra_colors(cols, initial_color)
  @chess << result
  initial_color = get_opposite_color(initial_color)
end

# If you want to see visually how the chess look like
def print_array_with_values
  @chess.each_with_index do |array_of_values, row_index|
    @current_rows = []
    array_of_values.each_with_index do |element, col_index|
      @current_rows << "(#{row_index}, #{col_index}) = #{element}"
    end
    puts @current_rows.join(' || ')
  end; nil
end

def valid_movement?(initial_coordinates, final_coordinates)
  initial_color = @chess[initial_coordinates[:row]][initial_coordinates[:col]]
  final_color = @chess[final_coordinates[:row]][final_coordinates[:col]]
  initial_color == final_color
end

## Tells you if it is a valid movement from source to destination
valid_movement?({ row: 0, col: 0 }, { row: 1, col: 1 })
valid_movement?({ row: 0, col: 0 }, { row: 2, col: 1 })

# Print the chess configuration
print_array_with_values

puts '=' * 100

## Second part of the exercise
# How many movements to come from x,y to y,z ?
# Finding diagonals and how many movements needed to
# reach the final destination position
# the execution examples can be found at the end of the file

def how_many_movements_from_to(initial_coordinates, final_coordinates)
  first_diagonal = calculate_first_diagonal(initial_coordinates)
  second_diagonal = calculate_second_diagonal(initial_coordinates)

  return 'one movement' if first_diagonal.include?(
    "#{final_coordinates[:row]},#{final_coordinates[:col]}"
  )

  return 'one movement' if second_diagonal.include?(
    "#{final_coordinates[:row]},#{final_coordinates[:col]}"
  )

  'Two movements'
end

def valid_row_col?(row_col)
  row_col >= 0 && row_col <= 7 # or maximum of rows length
end

def calculate_first_diagonal(coordinates)
  # Two ways to find that diagonal
  # -row - col
  # +row + col

  initial_row = coordinates[:row]
  initial_col = coordinates[:col]

  @first_diagonal_coordinates = []

  # First part of the diagonal
  # -row + col
  loop do
    initial_row -= 1
    initial_col -= 1

    if valid_row_col?(initial_row) && valid_row_col?(initial_col)
      @first_diagonal_coordinates << "#{initial_row},#{initial_col}"
    else
      break
    end
  end

  initial_row = coordinates[:row]
  initial_col = coordinates[:col]

  # Second part of the diagonal
  # +row +col
  loop do
    initial_row += 1
    initial_col += 1

    if valid_row_col?(initial_row) && valid_row_col?(initial_col)
      @first_diagonal_coordinates << "#{initial_row},#{initial_col}"
    else
      break
    end
  end

  @first_diagonal_coordinates
end

def calculate_second_diagonal(coordinates)
  # two ways to find that diagonal
  # -row + col
  # +row - col

  initial_row = coordinates[:row]
  initial_col = coordinates[:col]

  @final_coordinates = []

  # First part of the diagonal
  # -row + col
  loop do
    initial_row -= 1
    initial_col += 1

    if valid_row_col?(initial_row) && valid_row_col?(initial_col)
      @final_coordinates << "#{initial_row},#{initial_col}"
    else
      break
    end
  end

  initial_row = coordinates[:row]
  initial_col = coordinates[:col]

  # Second part of the diagonal
  # +row - col
  loop do
    initial_row += 1
    initial_col -= 1

    if valid_row_col?(initial_row) && valid_row_col?(initial_col)
      @final_coordinates << "#{initial_row},#{initial_col}"
    else
      break
    end
  end

  @final_coordinates
end

# How to see it in action...
initial_coordinates = { row: 2, col: 5 }
final_coordinates = { row: 5, col: 2 }
puts how_many_movements_from_to(initial_coordinates, final_coordinates)

# If you want to see the different directions you can follow
# for the available diagonals based
# on a current position in the chess
# NOTE: sometimes there is only one diagonal
puts "first diagonal #{calculate_first_diagonal({ row: 2, col: 5 }).join(', ')}"
puts "second diagonal #{calculate_second_diagonal({ row: 2, col: 5 }).join(', ')}"
