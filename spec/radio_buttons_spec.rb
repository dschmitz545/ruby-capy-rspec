describe 'Testando caixas de selecao' do

    before(:each) do
        visit "/radios"
    end

    it 'Selecao por ID' do
        choose('cap')
    end

    it 'Selecao por find e css selector' do
        find("input[value=guardians]").click
    end

    after(:each) do
        sleep 2
    end
end