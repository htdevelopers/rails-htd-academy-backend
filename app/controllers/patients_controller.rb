class PatientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_patient, except: %i(index new create)

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def edit; end

  def create
    patient = Patient.new(patient_params)

    if patient.save
      flash[:notice] = "Patient successfully created"
      redirect_to patients_path
    else
      flash[:notice] = "Patient cannot be created"
      render :new
    end
  end

  def update
    if @patient.update(patient_params)
      flash[:notice] = "Patient successfully updated"
      redirect_to patients_path
    else
      flash[:notice] = "Patient cannot be updated"
      redirect_to edit_patient_path(@patient.id)
    end
  end

  def destroy
    if @patient.destroy
      flash[:notice] = "Patient successfully deleted"
      redirect_to patients_path
    else
      flash[:notice] = "Patient cannot be deleted"
      redirect_to patients_path
    end
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :age, :gender, :doctor_id)
  end
end
