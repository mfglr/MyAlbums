class DataController < ApplicationController
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
        end
        
        redirect_to root_path
    end
end
