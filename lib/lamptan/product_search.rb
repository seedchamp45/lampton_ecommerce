module MyStore
  class ProductSearch < Spree::Core::Search::Base
    private
    def self.search(term)
  		super.where('LOWER(title) LIKE :term OR LOWER(author) LIKE :term', term: "%#{term.downcase}%")
	end
  end
end