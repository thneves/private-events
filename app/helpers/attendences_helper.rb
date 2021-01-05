# frozen_string_literal: true

module AttendencesHelper
  def attendence_params
    params.permit(:event_attende_id, :attended_event_id)
  end
end
