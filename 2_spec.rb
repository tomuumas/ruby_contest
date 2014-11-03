#require_relative "2"
require "./2"

describe "Prime" do
  describe 'valid?' do
    subject { Prime.new.valid?(a) }
    let(:a) { 0 }

    context 'a is 0' do
      it 'result is false' do
        should be false
      end
    end

    context 'a is larger than 10**9' do
      let(:a) { 10**9 + 1 }

      it 'result is false' do
        should be false
      end
    end

    context 'a is larger 0 and smaller 10**9' do
      let(:a) { 10 }

      it 'result is true' do
        should be true
      end
    end
  end

  describe 'is_prime?' do
    subject { Prime.new.is_prime?(a) }
    let(:a) { 10 }

    context 'a is not prime' do
      it 'return false' do
        should be false
      end
    end

    context 'a is prime' do
      let(:a) { 17 }

      it 'return true' do
        should be true
      end
    end
  end
end
