describe 'Testando caixas de selecao' do

    before(:each) do
        visit "/checkboxes"
    end
    
    # tanto pelo id ou name
    it 'Marcando uma opcao' do
        check("thor")
    end

    it 'Desmarcando uma opcao' do
        check("antman")
    end

    
    # usando o find para buscar por outros elementos, como o value
    it 'Marcando com o find set true' do
        find("input[value=iron-man").set(true)
    end
    
    it 'Desmarcando com o find set false' do
        find("input[value=guardians").set(false)
    end
    
    after(:each) do
        sleep 2
    end
end