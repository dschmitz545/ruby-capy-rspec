describe "Testando a instalação" do
    it "Visitando uma pagina" do
        puts("Acessando a pagina")
        visit "https://training-wheels-protocol.herokuapp.com/"
        
        expect(page.title).to eql "Training Wheels Protocol"
    end
end