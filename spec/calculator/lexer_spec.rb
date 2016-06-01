require 'spec_helper'

describe Calculator::Lexer do
  before do
    @lexer = Calculator::Lexer.new
  end

  context 'numerical values' do
    example 'lex an integer' do
      @lexer.lex('10').should == [[:T_INT, 10]]
    end

    example 'lex a float' do
      @lexer.lex('10.5').should == [[:T_FLOAT, 10.5]]
    end
  end

  example 'lex an addition expression' do
    @lexer.lex('10 + 20').should == [[:T_INT, 10], [:T_ADD, nil], [:T_INT, 20]]
  end

  example 'lex a multiplication expression' do
    @lexer.lex('10 * 2').should == [[:T_INT, 10], [:T_MUL, nil], [:T_INT, 2]]
  end

  example 'lex a division expression' do
    @lexer.lex('10 / 2').should == [[:T_INT, 10], [:T_DIV, nil], [:T_INT, 2]]
  end

  example 'lex a subtraction expression' do
    @lexer.lex('10 - 2').should == [[:T_INT, 10], [:T_SUB, nil], [:T_INT, 2]]
  end

  example 'lex a modulo expression' do
    @lexer.lex('10 % 2').should == [[:T_INT, 10], [:T_MOD, nil], [:T_INT, 2]]
  end

  example 'lex a exponential expression' do
    @lexer.lex('10 ^ 2').should == [[:T_INT, 10], [:T_EXP, nil], [:T_INT, 2]]
  end
end
