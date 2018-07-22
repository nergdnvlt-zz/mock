require 'rails_helper'

describe 'Device Endpoint Requests' do
  describe 'send a get request to api/v1/devices/1' do
    it 'to send a trigger location' do
      gps = Beacon.create!(location: '[39.996292, -105.23503]')

      get "api/v1/devices/1"

      expect(response).to be_successful

      trigger_response = JSON.parse(response.body)
      expect(trigger_response).to be_a Hash
      expect(trigger_response).to eq({"message": "Successfully triggered alarm GPS signal."})
    end
  end
end
