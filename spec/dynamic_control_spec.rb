describe 'Testando controles dinâmicos' do

    before(:each) do
        visit "https://training-wheels-protocol.herokuapp.com/dynamic_controls"
    end

    it 'Quando habilita o campo', :dynamic do
        
        # fazendo uma pergunta ao capybara
        # quando tem a propriedade disabled = true, o campo está desabilitado
        # quando não tem a propriedade disabled, o campo está habilitado
        resu = page.has_field? "movie", disabled: true
        expect(resu).to eql true

        click_button "Habilita"

        resu = page.has_field? "movie", disabled: false
        expect(resu).to eql true

    end
end