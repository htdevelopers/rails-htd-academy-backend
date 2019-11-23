class AddDoctorRelationToPatient < ActiveRecord::Migration[5.2]
  def change
    add_reference :patients, :doctor
  end
end
