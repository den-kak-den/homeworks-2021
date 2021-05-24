require 'rspec'

require_relative '../array_methods'
require_relative 'spec_helper'

using ArrayMethods

RSpec.describe ArrayMethods do

  let(:number_arr) { [1, -4, 78421397493947923408, 34.4, 0] }
  let(:mixed_arr) { ['sadfs', 645, :symb, {1=>'1'}, true] }
  let(:empty_arr) { [] }

  let(:empty_block) { }
  #let(:block_multiply_10) { |elem| a = elem * 10, a}


  describe '#my_map' do
    context 'if no_block given' do
      it 'return nil' do
        expect(number_arr.my_map).to be nil
        expect(mixed_arr.my_map).to be nil
        expect(empty_arr.my_map).to be nil
      end
  end

    context 'if block given' do
      it 'return new array with changes' do
        new_number_arr = []
        number_arr.my_map { |elem| new_number_arr << elem * 10 }
        # new_mixed_arr = []
        # mixed_arr.my_map { |elem| new_mixed_arr << elem * 10 }
        new_empty_arr = []
        empty_arr.my_map { |elem| new_empty_arr << elem * 10 }
        expect(new_number_arr == [10, -40, 784213974939479234080, 344, 0] && new_empty_arr == []).to be true
      end
    end
  end

  describe '#my_select' do
    context 'if no block given' do
      it 'return nil' do
        expect(number_arr.my_select).to be nil
        expect(mixed_arr.my_select).to be nil
        expect(empty_arr.my_select).to be nil
      end

  end

    context 'if block given' do
      # expect()

    end
  end

  describe '#my_each' do
    context 'if no block given' do
      it 'return nil' do
        expect(number_arr.my_each).to be nil
        expect(mixed_arr.my_each).to be nil
        expect(empty_arr.my_each).to be nil
      end
    end

    context 'if block given' do
      #  expect()

    end
  end
end