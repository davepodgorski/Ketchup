gem 'activerecord', '=4.2.10'

require "./crm.rb"
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name,  as: :string
  field :email,      as: :string
  field :note,       as: :text


  def full_name
    "#{ first_name } #{ last_name }"
  end

end

Contact.auto_upgrade!

at_exit do
  ActiveRecord::Base.connection.close
end

# class Contact
#
#
#   @@contacts = []
#   @@id = 1
#
#   def initialize(first_name, last_name, email, note)
#       @first_name = first_name
#       @last_name = last_name
#       @email = email
#       @note = note
#     end
#
#   def self.create(first_name, last_name, email, note)
#     new_contact = Contact.new(first_name, last_name, email, note)
#     @@contacts << new_contact
#     return new_contact
#   end
#
#
#   def self.all
#     return @@contacts
#   end
#
#   def self.find(id)
#     @@contacts.each do | contact |
#       if contact.id == id
#         return contact
#       end
#     end
#   end
#
#   def self.find_by(attribute, value)
#     if attribute == "first_name"
#       return @@contacts.select{|contact| contact.first_name == value}
#     end
#     if attribute == "last_name"
#       return @@contacts.select{|contact| contact.last_name == value}
#     end
#     if attribute == "email"
#       return @@contacts.select{|contact| contact.email == value}
#     end
#     if attribute == "note"
#       return @@contacts.select{|contact| contact.note == value}
#   end
# end
#
#   def self.delete_all
#     @@contacts = []
#   end
#
#   # Instance Methods ---------------------------
#
#   def update(attribute, value)
#     attribute = value
#   end
#
#   def full_name
#     return "#{first_name} #{last_name}"
#   end
#
#   def delete
#     @@contact.delete(self)
#   end
#
#   # Readers for arrguments in ititialize
#   def first_name
#     return @first_name
#   end
#
#   def last_name
#     return @last_name
#   end
#
#   def email
#     return @email
#   end
#
#   def note
#     return @note
#   end
#   def contacts
#     return @@contacts
#   end
#
#   # Writers for arrguments in ititialize
#
#   def first_name=(first_name)
#     @first_name = first_name
#   end
#
#   def last_name=(last_name)
#     @last_name = last_name
#   end
#
#   def email=(email)
#     @email = email
#   end
#
#   def note=(note)
#     @note = note
#   end
#
# end
