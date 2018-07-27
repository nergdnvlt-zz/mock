require 'rails_helper'

describe Beacon do
  describe 'Validations' do
    it { should validate_presence_of :lat }
    it { should validate_presence_of :long }
  end

  describe 'instance methods' do
    it 'builds a location array' do
      beacon = Beacon.create!(lat: 39.996292, long: -105.23503)
      location = beacon.location
      expect(location).to be_a Array
      expect(location).to eq([39.996292, -105.23503])
    end
  end
end
