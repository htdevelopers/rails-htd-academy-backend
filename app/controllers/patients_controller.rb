# frozen_string_literal: true

class PatientsController < ApplicationController
  def index
    @patients = Patient.all.includes(:doctor)
  end
  end
