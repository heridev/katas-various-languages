def something
  'hola'
end

# simplest one apparently
# let's study this one and regex
def reverse_words(str)
  str.gsub(/\S+/, &:reverse)
end

# def reverse_words(str)
#   counter = 0
#   @groups_of_words = []
#   @current_word = ''

#   str.each_char do |character|
#     if character == ' '
#       if @current_word != ''
#         insert_element_to_groups_of_words(@current_word.reverse)
#         @current_word = ''
#       end
#       @groups_of_words << ' '
#     else
#       @current_word += character
#     end

#     counter += 1

#     # last element, let's append those values
#     insert_element_to_groups_of_words(@current_word.reverse) if str.length == counter && @current_word != ''
#   end

#   @groups_of_words.join('')
# end

# def insert_element_to_groups_of_words(word)
#   @groups_of_words << word
# end

require 'minitest/autorun'

describe 'reverse_words' do
  it 'should do reverse_words' do
    assert_equal(reverse_words('The quick brown fox jumps over the lazy dog.'),
                 'ehT kciuq nworb xof spmuj revo eht yzal .god')
    assert_equal(reverse_words('apple'), 'elppa')
    assert_equal(reverse_words('a b c d'), 'a b c d')
    assert_equal(reverse_words('a b c d '), 'a b c d ')
    assert_equal(reverse_words('a b c   d'), 'a b c   d')
    assert_equal(reverse_words('double  spaced  words'), 'elbuod  decaps  sdrow')
    assert_equal(reverse_words('stressed desserts'), 'desserts stressed')
    assert_equal(reverse_words('hello hello'), 'olleh olleh')
  end
end

# class TestMeme < Minitest::Test
#   def setup
#     @meme = Meme.new
#   end

#   def test_that_kitty_can_eat
#     # assert_equal 'OHAI!', @meme.i_can_has_cheezburger?
#     assert_equal 'OHAI!', 'ohai'
#   end
# end

# describe 'Solution' do
#   it 'Fixed tests' do
#     assert_equal(reverse_words('The quick brown fox jumps over the lazy dog.'),
#                        'ehT kciuq nworb xof spmuj revo eht yzal .god')
#     assert_equal(reverse_words('apple'), 'elppa')
#     assert_equal(reverse_words('a b c d'), 'a b c d')
#     assert_equal(reverse_words('double  spaced  words'), 'elbuod  decaps  sdrow')
#     assert_equal(reverse_words('stressed desserts'), 'desserts stressed')
#     assert_equal(reverse_words('hello hello'), 'olleh olleh')
#   end

# it 'Random Tests' do
#   words = ['Kata', 'should', 'always', 'have', 'random', 'tests', 'case', 'to', 'avoid', 'hardocoded', 'solution.',
#            'This', 'is', 'a', 'rule!']

#   40.times do
#     str = words.sample(rand(words.length)).join(' ' * rand(1..2))
#     exp = str.split(/\s{1}/).map { |w| w.reverse }.join(' ')
#     assert_equal(reverse_words(str), exp, "Testing for reverse_Words(#{str.inspect})")
#   end
# end
# end
