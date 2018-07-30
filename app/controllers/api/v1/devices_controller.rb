class Api::V1::DevicesController < ApplicationController
  def show
    device_id = params['id']
    gps = Beacon.all.last
    response = MachineService.post(device_id, gps)
    binding.pry
    if gps.lat == response[:device][:last_location][:lat]
      render status: 202, json: {"message": "Successfully sent location."}
    else
      render status: 406, json: {"message": "Not completed."}
    end
  end
end
