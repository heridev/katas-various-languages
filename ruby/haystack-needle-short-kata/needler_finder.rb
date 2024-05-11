require 'pry'
class NeedlerFinder
  attr_reader :haystack

  def initialize(haystack)
    @haystack = haystack
  end

  def find_from(needle)
    needle_size = needle.size
    found_at = nil

    haystack.each_char.with_index do |char, index|
      limit = index + needle_size - 1
      break unless haystack[limit]

      if needle == haystack[index..limit]
        found_at = index
        break
      end
    end

    found_at
  end
end
