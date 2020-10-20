#!/usr/bin/env ruby
herebuffer=[]
ARGF.binmode
ARGF.each_byte do |eb|
    eb.to_s(2).rjust(8,'0').split('').each do |b|
        if b.eql?('1')
            herebuffer << "@here"
        else
            herebuffer << "@channel"
        end
    end
end
result = herebuffer.join(' ')
if result.size >= 5000
    raise 'invalid input. output exceed max size'
end
puts result