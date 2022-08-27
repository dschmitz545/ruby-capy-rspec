describe 'Testando caixas de seleção' do

    before(:each) do
        visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
    end
    
    # tanto pelo id ou name
    it 'Marcando uma opção' do
        check("thor")
    end

    it 'Desmarcando uma opção' do
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