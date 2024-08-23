class Customer < ApplicationRecord
    validates :full_name, presence: true

    has_one_attached :avatar
    
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "email_address", "full_name", "id", "id_value", "notes", "phone_number", "updated_at"]
      end

      def self.ransackable_associations(auth_object = nil)
        ["avatar_attachment", "avatar_blob"]
      end

      
end
