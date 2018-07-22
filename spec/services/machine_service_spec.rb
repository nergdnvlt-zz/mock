require 'rails_helper'

describe MachineService do
  describe 'it makes a post request' do
    it 'should give back the beacon locations' do
      gps = Beacon.create!(location: '[39.996292, -105.23503]')
      machine_response = MachineService.post(gps)

      expect(machine_response).to be_a Hash
      expect(machine_response[:sms_number]).to eq('7192710056')
      expect(machine_response[:location_1]).to eq('[39.996292, -105.23503]')
    end
  end
end
