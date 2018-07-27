require 'rails_helper'

describe 'device endpoint Requests' do
  describe 'send a get request to api/v1/devices/1' do
    it 'to send a trigger location' do
      gps = Beacon.create!(lat: 39.996292, long: -105.23503)
      gps2 = Beacon.create!(lat: 40.00732857469379, long: -105.27627512114125)

      get "/api/v1/devices/1"

      expect(response).to be_successful

      trigger_response = JSON.parse(response.body)
      expect(trigger_response).to be_a Hash
      expect(trigger_response["message"]).to eq("Successfully sent location.")
    end
  end
end
