class EventsController < ApplicationController
  def index
    # pundit
    search_query = params[:search_query]
    sql_subquery = "title ILIKE :search_query OR address ILIKE :search_query"
    if search_query.present?
      # Search the database for matching eventes
      @events = Event.where(sql_subquery, search_query: "%#{params[:search_query]}%")
      @markers = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: { event: })
        }
      end

    else
      @events = Event.all
      # markers for the map
      @markers = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: { event: })
        }
      end
    end
  end

  def show
    @event = Event.find_by_id(params[:id])
    @events = @event.events
    @reviews = @event.reviews
    # pundit
    authorize @event
  end

  def new
    @event = Event.new
    # pundit
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
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
    params.require(:event).permit(:title, :datetime, :description, :max_attend, :category, :price_per, :address)
  end
end
