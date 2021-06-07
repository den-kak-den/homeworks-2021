require 'rspec'

require_relative '../array_methods'
require_relative 'spec_helper'

using ArrayMethods

RSpec.describe ArrayMethods do

  let(:number_arr) { [1, -4, 78421397493947923408, 34.4, 0] }
  let(:mixed_arr) { ['sadfs', 645, :symb, {1=>'1'}, true] }
  let(:empty_arr) { [] }

  describe '#my_map' do
    context 'when block is not given' do
      it 'returns nil' do
        expect(number_arr.my_map).to be nil
      end
  end

    context 'when block is given' do
      it 'return new array with changes', :aggregate_failures do
        new_number_arr = []
        number_arr.my_map { |elem| new_number_arr << elem * 10 }
        new_empty_arr = []
        empty_arr.my_map { |elem| new_empty_arr << elem * 10 }
        expect(new_number_arr).to eq([10, -40, 784213974939479234080, 344, 0])
        expect(new_empty_arr).to eq([])
      end
    end
  end

  describe '#my_select' do
    context 'when block is not given' do
      it 'return nil' do
        expect(number_arr.my_select).to be nil
      end
  end

    context 'when block is given' do
      let(:more_than) { refer = 10 }
      it 'return new array with changes' do
        new_number_arr = number_arr.my_select { |elem| elem > 10 }
        new_empty_arr = empty_arr.my_select { |elem| elem > 1 }
        expect(new_number_arr).to eql( [78421397493947923408, 34.4] )
        expect(new_empty_arr).to eql([])
      end
    end
  end

  describe '#my_each' do
    context 'when block is not given' do
      it 'return nil' do
        expect(number_arr.my_each).to be nil
      end
    end

    context 'when block is given' do
      it 'return original array!!!' do
        expect(number_arr.my_each{ |elem| elem + 100000000000000000 }).to eql(number_arr)
        expect(mixed_arr.my_each{ |elem| elem.to_s }).to eql(mixed_arr)
        expect(empty_arr.my_each{ |elem| elem.nil? puts "EMPTY!!!" }).to be empty_arr
      end
    end
  end
end

