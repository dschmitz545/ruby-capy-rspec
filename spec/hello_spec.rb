describe "Testando a instalacao" do
    it "Visitando uma pagina" do
        puts("Acessando a pagina")
        visit "/"
        
        expect(page.title).to eql "Training Wheels Protocol"
    end
end