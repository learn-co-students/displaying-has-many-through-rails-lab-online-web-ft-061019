class AppointmentsController < ApplicationController
  def show
    @apointment = Appointment.find(params[:id])
  end

  def index
  end

  def new
  end
end
