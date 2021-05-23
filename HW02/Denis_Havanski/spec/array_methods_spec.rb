require 'rspec'

require_relative '../array_methods'
require_relative 'spec_helper'

using ArrayMethods

RSpec.describe ArrayMethods do
  let(:number_arr) { [1, -4, 78421397493947923408, 34.4, 0] }
  let(:mixed_arr) { ['sadfs', 645, :symb, {1=>'1'}, true] }
  let(:empty_arr) { [] }

  let(:block_sum_5) { :array.each {|el| el += 5} }
  let(:block_multiply_10) { :array.each {|el| el *= 10}


  describe '#my_map' do
    context 'if no block given' do
      expect()

    end

    context 'if block given' do
      expect()
    end
  end

  describe '#my_select' do
    context 'if no block given' do
      expect()

    end

    context 'if block given' do
      expect()
    end
  end

  describe '#my_each' do
    context 'if no block given' do
      expect()

    end

    context 'if block given' do
      expect()
    end
  end


end
