class EventsController < ApplicationController
  def index
    search_query = params[:search_query]
    sql_subquery = "title ILIKE :search_query OR address ILIKE :search_query OR :search_query = ANY(category)"
    if search_query.present?
      # Search the database for matching events
      if Event.where(sql_subquery, search_query: "%#{params[:search_query]}%")
        @events = Event.where(sql_subquery, search_query: "%#{params[:search_query]}%")
      else
        @events = Event.near(search_query,300)
      end
    else
      @events = Event.near(current_user.profile.address,300)
    end
    # markers for the map
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { event: })
      }
    end

  end

  def show
    @event = Event.find_by_id(params[:id])
    @ratings = @event.ratings
    @attendances = @event.attendances
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    redirect_to events_path
  end
  private

  def event_params
    params.require(:event).permit(:title, :photo, :datetime, :description, :max_attend, :category, :price_per, :address)
  end
end
