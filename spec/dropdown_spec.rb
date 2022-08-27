
describe 'Testando caixa de opcoes', :dropdown do

    before(:each) do
        visit "/dropdown"
    end

    it 'Selecionando um item expecífico simples' do

        # para id's
        select('Bucky', from: 'dropdown')
    end

    it 'Selecionando um item especifico com o find' do

        # se não tiver id no elemento
        listaAvenger = find('.avenger-list')
        listaAvenger.find('option', text: 'Scott Lang').select_option

    end

    it 'Qualquer item' do
        # se não tiver um id e seleciona qualquer um
        allAvengers = find('.avenger-list') # retorna uma lista
        allAvengers.all('option').sample.select_option # usa o sample para escolher qualquer um

    end
    
end