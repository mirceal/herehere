# herehere
Send your code via slack using only @here and @channel.

## What is this thing?
This is peak communication for Slack. We take over Slack's most loved @mentions and use the to build our own world.

Productivity workflow:
 * start with your code, you run it through the tohere "compiler"
 * copy paste into slack 
 * your buddy copy pastes from their slack 
 * run it through the fromhere "decompiler" 
 * eventually you could invoke ruby directly on the resulting source code. who has time for code review. amiright?

To test that it's working on your machine(TM) do:
```
make test
```

Now assume you have a file called fork.rb you want to send with the following contents:
```
s="fork"
10.times do 
  print s[0]
  s=s.split('').rotate(1).join('')
end
```

You would do:
```
cat fork.rb | ruby tohere.rb
```

The output of that command would be:
``
@channel @here @here @here @channel @channel @here @here @channel @channel @here @here @here @here @channel @here @channel @channel @here @channel @channel @channel @here @channel @channel @here @here @channel @channel @here @here @channel @channel @here @here @channel @here @here @here @here @channel @here @here @here @channel @channel @here @channel @channel @here @here @channel @here @channel @here @here @channel @channel @here @channel @channel @channel @here @channel @channel @channel @channel @channel @here @channel @here @channel @channel @channel @here @here @channel @channel @channel @here @channel @channel @here @here @channel @channel @channel @channel @channel @channel @here @channel @here @here @here @channel @channel @here @here @here @channel @here @channel @channel @channel @here @here @channel @here @channel @channel @here @channel @here @here @channel @here @here @channel @here @channel @here @here @channel @channel @here @channel @here @channel @here @here @here @channel @channel @here @here @channel @channel @here @channel @channel @channel @channel @channel @channel @here @here @channel @channel @here @channel @channel @channel @here @here @channel @here @here @here @here @channel @channel @here @channel @channel @channel @channel @channel @channel @channel @channel @channel @here @channel @here @channel @channel @channel @here @channel @channel @channel @channel @channel @channel @channel @here @channel @channel @channel @channel @channel @channel @here @here @here @channel @channel @channel @channel @channel @here @here @here @channel @channel @here @channel @channel @here @here @channel @here @channel @channel @here @channel @here @here @channel @here @here @here @channel @channel @here @here @here @channel @here @channel @channel @channel @channel @here @channel @channel @channel @channel @channel @channel @here @here @here @channel @channel @here @here @channel @here @channel @here @here @channel @here @here @channel @channel @here @here @channel @channel @channel @channel @channel @here @channel @here @here @here @channel @here @channel @channel @channel @channel @here @channel @here @channel @channel @channel @here @channel @channel @channel @channel @channel @channel @channel @here @channel @channel @channel @channel @channel @channel @here @here @here @channel @channel @here @here @channel @channel @here @here @here @here @channel @here @channel @here @here @here @channel @channel @here @here @channel @channel @here @channel @here @here @here @channel @channel @here @here @here @channel @channel @here @here @channel @here @here @here @channel @channel @channel @channel @channel @here @here @channel @here @here @channel @channel @channel @here @here @channel @here @channel @channel @here @channel @here @here @here @channel @here @channel @channel @channel @channel @here @channel @here @channel @channel @channel @channel @channel @here @channel @channel @here @here @here @channel @channel @here @channel @channel @here @here @here @channel @channel @here @channel @here @channel @channel @here @channel @channel @here @channel @here @here @here @channel @channel @here @here @here @channel @channel @here @channel @channel @here @here @channel @here @here @here @here @channel @here @here @here @channel @here @channel @channel @channel @here @here @channel @channel @channel @channel @here @channel @here @here @here @channel @here @channel @channel @channel @here @here @channel @channel @here @channel @here @channel @channel @here @channel @here @channel @channel @channel @channel @channel @here @here @channel @channel @channel @here @channel @channel @here @channel @here @channel @channel @here @channel @channel @here @channel @here @here @here @channel @channel @here @here @channel @here @channel @here @channel @channel @here @here @channel @here @here @here @here @channel @here @here @channel @here @channel @channel @here @channel @here @here @channel @here @here @here @channel @channel @channel @here @channel @here @channel @channel @channel @channel @channel @here @channel @channel @here @here @here @channel @channel @here @channel @channel @here @here @here @channel @channel @here @channel @here @channel @channel @here @channel @channel @channel @channel @here @channel @here @channel @channel @here @here @channel @channel @here @channel @here @channel @here @here @channel @here @here @here @channel @channel @here @here @channel @channel @here @channel @channel @channel @channel @channel @channel @here @channel @here @channel
``

Memo: You can feed whatever you want in, but the output has a limit (so let the golfer in you out).


If you hack on macos you could do:
```
cat fork.rb | ruby tohere.rb | pbcopy
```
to easier copy paste this into slack.

Now assume you're on the receiving end of this. You receive a message on slack that you believe is a herehere message. you like to live dangerously. you do:
```
echo "@channel @here @here @here @channel @channel @channel @channel @channel @here @here @here @channel @here @channel @here @channel @here @here @here @channel @here @channel @channel @channel @here @here @here @channel @channel @here @here @channel @channel @here @channel @channel @channel @channel @channel @channel @channel @here @channel @channel @channel @here @channel @channel @here @here @channel @channel @here @here @channel @channel @here @here @here @channel @here @channel @here @channel @here @here @channel @channel @channel @here @here @channel @here @here @channel @here @channel @here @here @channel @channel @here @channel @channel @channel @channel @channel @channel @here @here @here @channel @channel @here @here @channel @here @here @channel @here @here @channel @channel @channel @here @here @channel @channel @channel @channel @here @channel @here @here @channel @channel @channel @here @here @channel @here @here @channel @here @channel @here @here @channel @channel @here @channel @channel @channel @here @channel @channel @channel @channel @channel @here @channel @here @channel" | ruby fromhere.rb | ruby
```

## Samples
### Hello World
``
@channel @here @here @here @channel @channel @channel @channel @channel @here @here @here @channel @here @channel @here @channel @here @here @here @channel @here @channel @channel @channel @here @here @here @channel @channel @here @here @channel @channel @here @channel @channel @channel @channel @channel @channel @channel @here @channel @channel @channel @here @channel @channel @here @here @channel @here @channel @channel @channel @channel @here @here @channel @channel @here @channel @here @channel @here @here @channel @here @here @channel @channel @channel @here @here @channel @here @here @channel @channel @channel @here @here @channel @here @here @here @here @channel @channel @here @channel @channel @channel @channel @channel @channel @here @here @here @channel @here @here @here @channel @here @here @channel @here @here @here @here @channel @here @here @here @channel @channel @here @channel @channel @here @here @channel @here @here @channel @channel @channel @here @here @channel @channel @here @channel @channel @channel @channel @here @channel @channel @channel @here @channel @channel @channel @channel @channel @here @channel @here @channel
``

### Fizzbuzz
``
@channel @channel @here @here @channel @channel @channel @here @channel @channel @here @channel @here @here @here @channel @channel @here @here @here @channel @here @channel @here @channel @here @here @here @channel @channel @channel @channel @channel @here @here @here @channel @here @channel @channel @channel @here @here @channel @here @here @here @here @channel @channel @here @channel @here @channel @channel @channel @channel @channel @here @here @channel @channel @channel @here @channel @channel @here @here @channel @channel @channel @channel @channel @channel @here @here @channel @channel @channel @channel @channel @channel @here @channel @here @channel @channel @here @channel @here @here @here @here @channel @here @here @channel @here @here @here @here @here @channel @channel @channel @here @here @channel @here @here @here @channel @channel @here @here @here @here @here @channel @channel @channel @here @here @here @channel @channel @channel @channel @channel @here @here @here @channel @here @channel @here @channel @here @here @here @channel @here @channel @channel @channel @here @here @here @channel @channel @here @here @channel @channel @here @channel @channel @here @here @here @channel @here @channel @channel @channel @here @here @channel @channel @here @here @channel @here @channel @channel @here @channel @here @here @here @here @channel @here @channel @channel @here @here @here @here @channel @here @channel @channel @here @channel @channel @channel @channel @here @channel @channel @here @here @here @channel @here @channel @here @channel @here @here @here @here @channel @here @channel @channel @here @here @here @here @channel @here @channel @channel @channel @channel @channel @here @channel @here @channel @channel @channel @here @channel @channel @here @here @here @channel @here @channel @here @here @channel @here @here @channel @here @here @channel @here @channel @channel @here @channel @channel @here @here @here @here @channel @here @channel @here @here @channel @here @here @here @channel @channel @channel @here @channel @here @channel @here @channel @channel @channel @here @channel @here @channel @here @channel @channel @channel @here @here @channel @here @channel @channel @channel @channel @here @channel @channel @here @channel @here @channel @channel @here @channel @here @here @channel @here @channel @channel @here @here @channel @channel @channel @here @channel @channel @here @here @channel @here @channel @here @channel @channel @here @channel @here @here @channel @channel @channel @here @here @channel @here @channel @channel @here @channel @channel @here @channel @here @channel @here @here @channel @channel @here @here @channel @channel @channel @here @channel @channel @here @here @channel @channel @here @here @channel @here @channel @here @here @here @channel @here @channel @here @here @here @here @here @channel @channel @channel @here @here @here @here @here @channel @channel @channel @here @here @channel @here @here @here @channel @channel @here @here @here @here @here @channel @here @channel @channel @channel @channel @here @channel @here @channel
``
