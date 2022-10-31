# spec/cipher_spec.rb
require './lib/cipher.rb'

describe '#Cipher' do

  describe '#translate' do
    it 'works with small positive shift' do
      expect(subject.translate('Zz', 5)).to eql('Ee')
    end

    xit 'works with small negative shift' do
      expect(subject.translate('Ee', -5)).to eql('Zz')
    end

    xit 'works with large positive shift' do
      expect(subject.translate('Zz', 83)).to eql('Ee')
    end

    xit 'works with large negative shift' do
      expect(subject.translate('Ee', -83)).to eql('Zz')
    end

    xit 'works with a phrase with punctuation' do
      expect(subject.translate('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end

    xit 'works with a phrase with a large shift' do
      expect(subject.translate('Hello, World!', 75)).to eql('Ebiil, Tloia!')
    end

    xit 'works with a phrase with a large negative shift' do
      expect(subject.translate('Hello, World!', -55)).to eql('Ebiil, Tloia!')
    end

    xit 'works with a phrase about my dog' do
      expect(subject.cipher("Duncan is my friend, and he smells", 3)).to eql('Gxqfdq lv pb iulhqg, dqg kh vphoov')
    end
  end
end