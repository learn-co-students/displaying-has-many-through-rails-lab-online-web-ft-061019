class DoctorsController < ApplicationController

    def new
        @doctor = Doctor.new
    end

    def create
        @doctor = Doctor.create(doctor_params)
        redirect_to doctor_path(@doctor)
    end

    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    def destroy
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
        redirect_to doctors_path
    end
    private

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end
end
