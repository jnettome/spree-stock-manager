Spree::Variant.class_eval do
  def friendly_variants
    friendly = []
    self.option_values.each do |v|
      friendly << v.presentation
    end
    friendly.join(' - ')
  end
end
