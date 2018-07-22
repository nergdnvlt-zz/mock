class Api::V1::DevicesController < ApplicationController
  def show
    device_id = params['id']
    gps = Beacon.all.last
    response = MachineService.post(device_id, gps)
    if gps.location == response[:location_1]
      render status: 202, json: {"message": "Successfully triggered alarm GPS signal."}
    else
      render status: 406, json: {"message": "Not completed."}
    end
  end
end
