$counter = 0

describe "let" do
   let(:count) {counter += 1}
   it "memoriza o valor" do
      expect($counter).to eq(1) #chama a primeira vez e conta +1
      expect($counter).to eq(1) #Já chamou uma vez, o resultado fica em cache. mantem 1
   end
   
   it "não é cacheado entre os testes" do
      expect($counter).to eq(1) #como é outro teste, ele vai chamar novamente e soma +1
   end
end

