# typed: strict

require 'sorbet-runtime'

class Foo
  extend T::Sig

  sig {params(bar: Symbol, baz: Integer).returns(String)}
  def foo(bar, baz)
    [baz.to_s, bar.to_s].join(':')
  end
end

require 'pry'
require 'pry-byebug'
binding.pry
p Foo.new.foo(:bar, 1)
