Spree::Admin::ProductsController.class_eval do
  def stock
    @taxons = Spree::Taxon.where(:parent_id => nil)
  end

  def stock_show
    @products = Spree::Product.all(:include => :taxons, :conditions => "spree_taxons.id = #{params[:format]}")
  end
end
