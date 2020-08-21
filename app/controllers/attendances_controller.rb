class AttendancesController < ApplicationController

  def new
    @attendance = Attendance.new
  end

  def create
    #@event = Event.find(params[:event_attended_id])
    #@user = User.find(params[:attendee_id])
    #@event.attendances.create(attendee_id: @user.id)
  end

end
