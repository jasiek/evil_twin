class BuyerForm < Reform::Form
  property :name
  collection :rates, form: RateForm
end
