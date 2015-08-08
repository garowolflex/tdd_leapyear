require 'spec_helper'

describe Date do
  describe '#leap_year?' do
    context '4で割り切れない年のとき' do
      it 'returns false' do
        expect(Date.strptime('2015', '%Y').leap_year?).to eq false
      end
    end

    context '4で割り切れる年のとき' do
      it 'returns true if 100では割り切れない' do
        expect(Date.strptime('2016', '%Y').leap_year?).to eq true
      end

      it 'returns false if 100で割り切れるが、400で割り切れない' do
        expect(Date.strptime('2100', '%Y').leap_year?).to eq false
        expect(Date.strptime('2200', '%Y').leap_year?).to eq false
        expect(Date.strptime('2300', '%Y').leap_year?).to eq false
      end

      it 'returns true if 400で割り切れる' do
        expect(Date.strptime('2000', '%Y').leap_year?).to eq true
        expect(Date.strptime('2400', '%Y').leap_year?).to eq true
      end
    end
  end
end
