require_relative '../lib/prime.rb'

describe Prime do
  describe '#self.prime_numbers' do
    context 'when size argument is provided' do
      context 'when size argument is greater than 0' do
        it "returns an array of prime numbers based on size argument" do
          expect(Prime.prime_numbers(4)).to eq([2, 3, 5, 7])
        end
      end

      context 'when size argument is not greater than 0' do
        it "returns a message: Size must be greater than zero" do
          expect(Prime.prime_numbers(0)).to eq([2,3,5,7,11,13,17,19,23,29])
        end
      end
    end

    context 'when size argument is not provided' do
      it "returns the first prime number in an array" do
        expect(Prime.prime_numbers).to eq([2,3,5,7,11,13,17,19,23,29])
      end
    end
  end

  describe '#self.prime?' do
    context 'when digit argument is less than 2' do
      it 'returns true if argument is a prime number' do
        expect(Prime.prime?(1)).to eq(false)
      end
    end

    context 'when digit argument is not less than 2' do
      context 'when argument is a prime number' do
        it 'returns true' do
          expect(Prime.prime?(5)).to eq(true)
        end
      end

      context 'when argument is not a prime number' do
        it 'returns false' do
          expect(Prime.prime?(9)).to eq(false)
        end
      end
    end
  end
end




