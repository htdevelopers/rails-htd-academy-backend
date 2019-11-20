class AddDoctorsRelationIntoPatientField < ActiveRecord::Migration[5.2]
  def change
    add_reference :patients, :doctor, foreign_key: true, optional: true
  end
end
