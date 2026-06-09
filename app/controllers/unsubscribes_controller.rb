class UnsubscribesController < ApplicationController
    allow_unauthenticated_access
    before_action :set_subscriber

    def show
        @subscriber.destroy
        redirect_to @subscriber.product, notice: "You have been unsubscribed."
    end

    private
        def set_subscriber
        @subscriber = Subscriber.find_by!(unsubscribe_token: params[:id])
    end
end
