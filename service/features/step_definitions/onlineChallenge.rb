Dado('que tenho o {string} da marca') do |id|
  @id = id
end

Dado('que tenho o id da marca honda') do
  @idMaker = 2
end

Dado('que tenho o id do honda City') do
  @idModel = 2
end

Quando('consultar a lista de marcas') do
  @maker = @OnlineChallenge.getMaker
end

Quando('consultar os modelos do veículo') do
  @model = @OnlineChallenge.getModel(@idMaker)
end

Quando('chamar a API version') do
  @version = @OnlineChallenge.getVersion(@idModel)
end

Então('a lista de marcas') do
  expect(@maker.code).to eq 200
  expect(@maker.all? { |value| expect(value['ID']).not_to be_nil }).to be_truthy
  expect(@maker.all? { |value| expect(value['Name']).not_to be_nil }).to be_truthy
end

Então('é retornado a lista de modelos') do
  expect(@model.code).to eq 200
  expect(@model.all? { |value| expect(value['MakeID']).to eq 2 }).to be_truthy
  expect(@model.all? { |value| expect(value['MakeID']).not_to be_nil }).to be_truthy
  expect(@model.all? { |value| expect(value['ID']).not_to be_nil }).to be_truthy
  expect(@model.all? { |value| expect(value['Name']).not_to be_nil }).to be_truthy
 end

Então('é retorna a lista versões') do
  expect(@version.code).to eq 200
  expect(@version.all? { |value| expect(value['ModelID']).to eq 2 }).to be_truthy
  expect(@version.all? { |value| expect(value['ModelID']).not_to be_nil }).to be_truthy
  expect(@version.all? { |value| expect(value['ID']).not_to be_nil }).to be_truthy
  expect(@version.all? { |value| expect(value['Name']).not_to be_nil }).to be_truthy
end