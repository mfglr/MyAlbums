class DataChannel < ApplicationCable::Channel
  def subscribed
    stream_from "DataChannel"
  end

  def unsubscribed
  end

  def load
    app_state = AppState.first || AppState.new(status: :not_ready)
    app_state.save!

    if app_state.not_ready?
      app_state.loading!
      loader = DataLoader.new
      begin
        loader.load
        app_state.ready!
      rescue
        app_state.not_ready!
      end
      turbo_stream.update "DataChannel", 
        target: "content",
        partial: "users/users_with_state",
        locals: { users: User.all, state: app_state }
    end
  end

end
