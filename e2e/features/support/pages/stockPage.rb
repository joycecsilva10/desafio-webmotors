class StockPage
    
    include Capybara::DSL

    def url
        visit '/carros/estoque?tipoveiculo=carros&estadocidade=estoque' 
    end

    def selectValue(element, value)
        within element do
            first("option[value='#{value}']").click
        end
    end

    def filterBrand(marca, modelo)
        find('#searchBar').set "#{marca}" " #{modelo}"
        find('div.SearchBar__results__result__name').click
    end

    def selectStoreAds
        sleep 2
        find('#root > main > div.container > div.Search-result.Search-result--container-left > div > div:nth-child(5) > div:nth-child(3) > label').click
        sleep 2
        first('a.CardVehicle__linkPhoto').click
        sleep 2
        page.switch_to_window page.windows[-1]
        find('a.CardSeller__stock__seller').click
        # find('.CardSeller__stock').click
        sleep 10000
    end

    def expectGetBrand
        sleep 5
        find('.title-search').text        
    end

end
