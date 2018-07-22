require 'rails_helper'

describe Beacon do
  describe 'Validations' do
    it { should validate_presence_of :location }
  end
end
