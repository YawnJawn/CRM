class CustomersController < ApplicationController
    def index
        @customers = Customer.all
        # @customers variable accessible from views by its name (index) -> app/views/customers/index.html.erb
    end
end
