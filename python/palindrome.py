def palindrome(word):
    word = word.replace(' ', '').lower()
    return word == word[::-1]


print(palindrome('ana'))
print(palindrome('sugus sugus'))
print(palindrome('heriberto'))

# q: what does it do word[::-1]?
# a: it reverses the word
