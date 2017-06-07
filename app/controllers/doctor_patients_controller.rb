class DoctorPatientsController < ApplicationController

  def new
    @doctors = Doctor.all.map{|r| [r.name, r.id]}
    @patients = Patient.all.map{|r| [r.name, r.id]}
    @doctor_patient = DoctorPatient.new
  end

  def create
    @doctor_patient = DoctorPatient.new(doctor_patient_params)
    if @doctor_patient.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def destroy
    doctor_patient = DoctorPatient.find(params[:id])
    doctor_patient.destroy
    redirect_to doctor_path(doctor_patient.doctor_id)
  end


private

  def doctor_patient_params
    params.require(:doctor_patient).permit(:doctor_id, :patient_id, :date, :time)
  end
end
