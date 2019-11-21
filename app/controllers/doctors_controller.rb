class DoctorsController < ApplicationController
  before_action :set_doctor, except: %i(index new create)

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def edit; end

  def create
    doctor = Doctor.new(doctor_params)

    if doctor.save
      flash[:notice] = "Doctor successfully created"
      redirect_to doctors_path
    else
      flash[:notice] = "Doctor cannot be created"
      render :new
    end
  end

  def update
    if @doctor.update(doctor_params)
      flash[:notice] = "Doctor successfully updated"
      redirect_to doctors_path
    else
      flash[:notice] = "Doctor cannot be updated"
      redirect_to edit_doctor_path(@doctor.id)
    end
  end

  def destroy
    if @doctor.destroy
      flash[:notice] = "Doctor successfully deleted"
      redirect_to doctors_path
    else
      flash[:notice] = "Doctor cannot be deleted"
      redirect_to doctors_path
    end
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :practicing_from, :qualification_number, :employment)
  end
end
