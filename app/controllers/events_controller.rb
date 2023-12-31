class EventsController < ApplicationController
  def index
    search_query = params[:search_query]
    user_location = current_user.profile.address

    if search_query.present?
      category_results = Event.where("category ILIKE :search_query", search_query: "%#{search_query}%")
      address_results = Event.where("address ILIKE :search_query", search_query: "%#{search_query}%")

      if address_results.any?
        @events = address_results
      else
        @events = category_results.near(user_location, 300)
      end
    else
      @events = Event.near(user_location, 300)
    end

    # markers for the map
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { event: event })
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
