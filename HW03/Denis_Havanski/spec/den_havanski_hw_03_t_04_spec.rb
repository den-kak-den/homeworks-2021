require 'rspec'

require_relative '../den_havanski_hw_03_t_04'
require_relative 'spec_helper'

RSpec.describe 'task4' do
  describe '#return_count' do

    let(:string_with_all) { "hel2!lo" }

    let(:string_with_all_all) { "LJjom&*&odfщоыо/?<вадоыва938984:*(Щьдьждб*&(*KJLMLM<:<" }

    let(:string_without_dig) { "wicked .. !" }

    let(:string_empty) { "" }

    let(:no_string) { :string }

    context 'when there is valid string' do
      it 'return hash with count of letters and digits in the string' do
        #expect( task2(log_normal) ).to eql(array)
      end

      context "when there is empty string"  do
        it 'return {letters: 0, digits: 0}' do
          #expect( task2(log_all_doesnt_match_format) ).to eql([])
        end
      end

      context "when there is no string" do
        it 'return error' do
          #expect{ task2(input)}.to raise_error(NoMethodError, "NoMethodError: \n undefined method `each' for 1243354:Integer")
        end
      end
    end
  end
end
