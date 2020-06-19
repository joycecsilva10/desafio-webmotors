class HomePage
    
    include Capybara::DSL

    def url
        visit '/' 
    end
end
