Dado("que estou na página inicial") do
    @HomePage.url
end

Então('o logo WebMotors da homePage') do
    expect(page.has_no_field?('#logoHomeWebmotors')).to eq true
end

Dado('que estou na página de estoque') do
    @StockPage.url
    expect(page.current_url).to eq 'https://www.webmotors.com.br/carros/estoque?tipoveiculo=carros&estadocidade=estoque'
end

Quando('selecionar {string} e {string}') do |marca, modelo|
    @StockPage.filterBrand(marca, modelo)
end

Quando('selecionar o estoque de uma loja') do
    @StockPage.selectStoreAds
end

Então('é exibido o titulo {string}') do |titulo|
    expect(@StockPage.expectGetBrand).to eq titulo
end