class AppState < ApplicationRecord
    enum :status, [ :ready, :not_ready, :loading]
end
