ActiveAdmin.register Place do
  scope :active
  scope :inactive
 
  index do
	column :id
	column :owner
	column :is_active
	column :grade
	column :price_min, :sortable => :price_min do |place|
      div :class => "price" do
        number_to_currency place.price_min
      end
    end
	column :price_max, :sortable => :price_max do |place|
      div :class => "price" do
        number_to_currency place.price_max
      end
    end
	column :availability_from
	column :availability_to
	column :city
	default_actions
  end
end
