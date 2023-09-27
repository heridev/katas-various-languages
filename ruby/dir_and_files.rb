#! /usr/bin/env ruby
# practice about directoris(Dir) and files(File)
# prints the current directory from where the ruby was triggered
puts Dir.pwd

# children listing of the current directly
# Dir.children(Dir.pwd).each do |child|
#   puts child
# end

# or using the each_child with a block
# Dir.each_child(Dir.pwd) do |the_child|
#   puts "the_chil is: #{the_child}"
# end

# if it is a file or directory
child = Dir.children(Dir.pwd).first {|child| child == 'something'}
puts File.directory?(child) # => true in my case that something exists and it is directory
puts File.file?(child) # => false
puts File.ftype(child) # => directory

# check if a dir exists
Dir.exist?('something_invalid') # => false
Dir.exist?(Dir.pwd) # => true

# trying to delete something
# Dir.delete('something') #raises an exception if not empty

## Challenge, how to use irb and
# 1. Open a file that already has several lines that were created with
# echo 'first line' >> **_file.rb
# echo '' >> **_file.rb
# echo 'second line' >> **_file.rb
# echo '' >> **_file.rb
# echo 'third line' >> **_file.rb
# NOTE: ** is an actual name that you need to see which is that
# by listing the directory
# 2. remove the line number three(second line)
# 3. Add the following line at the end
# This was added without opening the file with sed or any editor but ruby
# 4. print the content of the new file


