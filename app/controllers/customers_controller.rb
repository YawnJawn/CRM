class CustomersController < ApplicationController
    def index
        @customers = Customer.all
        # @customers variable accessible from views by its name (index) -> app/views/customers/index.html.erb
    end
    def abc
        @customers = Customer.order(:full_name) 
    end
    def missing_email
        @customers = Customer.where(email_address:'')
    end
end
