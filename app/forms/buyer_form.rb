class BuyerForm < Reform::Form
  property :name
  collection :rates, prepopulator: ->(*) {
    self.rates = model.rates.map { |r| CurrentRate.from(r) }
  }, virtual: true, form: RateForm
end
