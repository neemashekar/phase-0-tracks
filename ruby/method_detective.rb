# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "zom".insert(1, 'o')
# => “zoom”

enhance = "enhance"
enhance.prepend("    ")
enhance.concat("    ")
puts enhance
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".concat(" suspects")
#=> "the usual suspects"

puts " suspects".prepend("the usual")
# => "the usual suspects"

strL = "The case of the disappearing last letter"
strlenIndex_Last = strL.length - 1
puts strL.slice(0...strlenIndex_Last)
# => "The case of the disappearing last lette"

strF = "The mystery of the missing first letter"
strlenIndex_First = strF.length
puts strF.slice(1...strlenIndex_First)
# => "he mystery of the missing first letter"

stringStrip = "Elementary,    my   dear        Watson!"
strStripLen = stringStrip.length
S1 = stringStrip.slice(0...12)
S2 = stringStrip.slice(15...18)
S3 = stringStrip.slice(20...25)
S4 = stringStrip.slice(32...39)
puts S1 + S2 + S3 + S4
# => "Elementary, my dear Watson!"

"z".each_byte do |byte|
   puts byte
end
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

aCount = "How many times does the letter 'a' appear in this string?".count('a')
puts aCount
# => 4