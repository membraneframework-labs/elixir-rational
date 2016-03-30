defmodule RationalTest do
  use ExUnit.Case, async: true
  use Rational
  doctest Rational
  doctest Rational.FloatConversion

  test "definition of <|> operator" do
    assert 1 <|> 3 == %Rational{numerator: 1, denominator: 3}
  end

  test "reject _ <|> 0" do
    assert_raise ArithmeticError, fn ->  1 <|> 0 end
    assert_raise ArithmeticError, fn ->  1234 <|> 0 end
  end

  test "inspect protocol" do 
    assert Inspect.inspect(1 <|> 2, []) == "1 <|> 2"
  end

  
end
