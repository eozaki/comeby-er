class HousesController < ApplicationController
  # before_action :validate_permission_to_create, only: [:new, :create]

  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def create
    House.create!(params[:house])
  rescue
    redirect_to agents_houses_path, alert: 'Somethng wen wrong when creating the house! Try again, please.'
  end

  private

  def validate_permission_to_create
    redirect_to new_agent_session_path unless current_agent.present?
  end
end
