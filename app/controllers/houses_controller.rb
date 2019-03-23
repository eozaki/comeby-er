class HousesController < ApplicationController
  before_action :validate_permission_to_create, only: [:new, :create]

  def index
    @houses = House.all
  end

  def new
  end

  private

  def validate_permission_to_create
    redirect_to new_agent_session_path unless current_agent.present?
  end
end
