.DEFAULT_GOAL := test

clean:
	@rm -rf example.outhere example.inhere

fromhere:
	@cat example.rb | ruby tohere.rb > example.outhere

tohere:
	@cat example.outhere | ruby fromhere.rb > example.inhere

diff:
	@diff -q example.rb example.inhere

test: clean fromhere tohere diff
