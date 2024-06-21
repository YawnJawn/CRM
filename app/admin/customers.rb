ActiveAdmin.register Customer do
  # Must whitelist what admin is allowed to change when submitting the form
   permit_params :full_name, :phone_number, :email_address, :notes

end
