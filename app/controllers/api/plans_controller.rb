class API::PlansController < ApplicationController
  before_action :set_plan, only: [:show, :update, :destroy]

  def index
    @plans = Plan.includes(itineraries: :items).all
    render 'index.jbuilder'
  end

  def create
    @plan = Plan.includes(itineraries: :items).new(plan_params)
    if @plan.save # true
      render 'show.jbuilder'
    else
      render json: @plan.errors.messages, status: :bad_request
    end
  end

  # /plans/:id
  def show
    render 'show.jbuilder'
  end

  def update
    @plan.assign_attributes(plan_params)

    if @plan.save
      render 'show.jbuilder'
    else
      render json: @plan.errors.messages, status: 400
    end
  end

  def destroy
    @plan.destroy

    render json: {message: "Plan is destroyed", success: true}
  end

  def new
    @plan = Plan.new
  end

private
  def set_plan
    @plan = Plan.includes(itineraries: :items).find_by_id(params[:id])
    if @plan.nil?
      render json: {message: "Cannot find plan with id #{params[:id]}"}
    end
  end

  def plan_params
    params.require(:plan).permit(:title)
  end
end
