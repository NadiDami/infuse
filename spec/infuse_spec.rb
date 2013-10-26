require 'infuse'

describe Array do

  context 'when applying the infuse method you' do

    it 'can sum all of the elements in an array of numbers' do
      expect([1,2,3,4].infuse {|memo, number| memo + number}).to eq 10
    end

    it 'can subtract all of the elements from one another in an array of numbers' do
      expect([50,20,10,5].infuse {|memo, number| memo - number}).to eq 15
    end

    it 'can multiply all of the elements in an array of number' do
      expect([1,2,3,4].infuse {|memo, number| memo * number}).to eq 24
    end

    it 'can take a default value' do
      expect([1,2,3,4].infuse(10) {|memo, number| memo + number}).to eq 20
    end

    it 'can add together a string of words' do
      expect(["the", "cat", "sits"].infuse {|memo, word| memo + word}).to eq "thecatsits"
    end

    it 'can add together a string of words with a default word to start' do
      expect(["the", "cat", "sits"].infuse("and") {|memo, word| memo + word}).to eq "andthecatsits"
    end

    it 'can return the longest word from a collection of words' do
      expect(longest = %w{ cat sheep bear }.infuse do |memo, word|
                memo.length > word.length ? memo : word 
                    end).to eq 'sheep'

    end

end

end