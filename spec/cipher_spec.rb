

require './lib/cipher'

describe '#encrypt' do
  it 'encrypts a string by shifting it by the amount specified' do
    expect(encrypt('abc', 1)).to eql('bcd')
  end
  it 'encrypts a string by shifting it by the amount specified' do
    expect(encrypt('ATTACKATONCE', 4)).to eql('EXXEGOEXSRGI')
  end
end
