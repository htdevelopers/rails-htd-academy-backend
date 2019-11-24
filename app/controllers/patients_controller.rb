# frozen_string_literal: true

class PatientsController < ApplicationController
  before_action :set_patient, only: [:edit, :update, :show, :destroy]

  def index
    @patients = Patient.all.includes(:doctor)
  end

  def new
    @patient = Patient.new
  end

  def edit; end

  def update
    if @patient.update(patient_params)
      flash[:notice] = 'Patient successfully updated'
      redirect_to patients_path
    else
      flash[:error] = 'Patient cannot be updated'
      redirect_to edit_patient_path(@patient)
    end
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      flash[:notice] = 'Patient successfully created'
      redirect_to patients_path
    else
      flash[:error] = 'Patient cannot be created'
      render :new
    end
  end

  def destroy
    msg = @patient.destroy ? { notice: 'Patient successfully deleted' } : { error: 'Patient cannot be deleted' }
    redirect_to patients_path, msg
  end

  def show; end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name,
                                    :age, :gender
                                  )
  end
  end
