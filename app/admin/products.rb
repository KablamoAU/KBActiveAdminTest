ActiveAdmin.register Product do
  scope :all, :default => true
  scope :visible
  index do
    column :name
    column :price do |product|
      number_to_currency product.price
    end
    column :display
    default_actions
  end
end
