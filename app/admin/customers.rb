ActiveAdmin.register Customer do
  # Must whitelist what admin is allowed to change when submitting the form
   permit_params :full_name, :phone_number, :email_address, :notes, :avatar
   filter :full_name
   filter :email_address
   filter :created_at
   #formtastic
   form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs  
      f.inputs do
        f.input :avatar, as: :file
      end        # builds an input field for every attribute
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
