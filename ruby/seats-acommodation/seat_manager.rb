class SeatManager
  def initialize(array)
    @no_seats = array.shift
    @busy_seats = array
  end

  def seat_combinations
    all_seats = Array.new(@no_seats, true)
    @busy_seats.each do |seat|
      all_seats[seat - 1] = false
    end

    combinations = []
    all_seats.each_with_index do |seat, index|
      if index + 1 < all_seats.size && index.even? && seat && all_seats[index + 1]
        combinations << [index + 1, index + 2]
      end

      if index + 2 < all_seats.size && seat && all_seats[index + 2]
        combinations << [index + 1, index + 2]
      end
    end

    combinations.size
  end
end
