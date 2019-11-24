# frozen_string_literal: true

class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end
  end
