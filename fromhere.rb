#!/usr/bin/env ruby
rebuild=[]
ARGF.each do |l|
    l.split(' ').each do |c|
        if c.eql?("@here")
            rebuild << '1'
        elsif c.eql?("@channel")
            rebuild << '0'
        else
            raise "herehere unsupported token"
        end
    end
end
print [rebuild.join('')].pack("B#{rebuild.size}")