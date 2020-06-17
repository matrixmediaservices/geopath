module Geopath
  module Insights
    class Inventory < Geopath::Client
      class << self
        def search(query = {})
          options = merge_headers({ body: query.to_json })
          results = post('/inventory/search', options)
          block_given? ? yield(results) : results
        end

        def operators(query = {})
          options = merge_headers({ query: query })
          results = get('/inventory/operators', options)
          block_given? ? yield(results) : results
        end

        def classification_types(query = {})
          options = merge_headers({ query: query })
          results = get('/inventory/classification_types', options)
          block_given? ? yield(results) : results
        end

        def constructions(query = {})
          options = merge_headers({ query: query })
          results = get('/inventory/constructions', options)
          block_given? ? yield(results) : results
        end
      end
    end
  end
end

