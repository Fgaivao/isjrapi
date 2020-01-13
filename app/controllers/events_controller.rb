class EventsController < ApplicationController
 skip_before_action :verify_authenticity_token
  before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def create

    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  def dayone
    @events = Event.where(day: 'Day 1')

    render json: @events
  end

  def daytwo
    @events = Event.where(day: 'Day 2')

    render json: @events
  end

  def daythree
    @events = Event.where(day: 'Day 3')

    render json: @events
  end

  def dayfour
    @events = Event.where(day: 'Day 4')

    render json: @events
  end

  def dayfive
    @events = Event.where(day: 'Day 5')

    render json: @events
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    protected
    def event_params
      params.permit(:day, :time, :description, :title)
    end
end
