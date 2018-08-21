# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
require 'spec_helper'

describe "Testing the calc engine" do

  before(:all) do
    @calc = CalcEngine.new()
  end

  # TEST FOR ADDITION
  it "should add two of any numbers together" do
    expect(@calc.add_two_numbers(1, 1)).to eq(2)
    expect(@calc.add_two_numbers(4.3, 5.9)).to eq(10.2)
    expect(@calc.add_two_numbers(-5, -3)).to eq(-8)
  end
  # TEST FOR SUBTRACTION
  it "should subtract two of any numbers together" do
    expect(@calc.subtract_two_numbers(3, 1)).to eq(2)
    expect(@calc.subtract_two_numbers(6.5, 2.5)).to eq(4.0)
    expect(@calc.subtract_two_numbers(-5, -3)).to eq(-2)
  end
  # TEST FOR MULTIPLICATION
  it "should multiply two of any numbers together" do
    expect(@calc.multiply_two_numbers(5, 5)).to eq(25)
    expect(@calc.multiply_two_numbers(1.5, 0.5)).to eq(0.75)
    expect(@calc.multiply_two_numbers(-5, -3)).to eq(15)
  end
  # TEST FOR DIVISION
  it "should divide two of any numbers together" do
    expect(@calc.divide_two_numbers(50, 5)).to eq(10)
    expect(@calc.divide_two_numbers(5.5, 0.5)).to eq(11)
    expect(@calc.divide_two_numbers(-6, -3)).to eq(2)
  end
end
