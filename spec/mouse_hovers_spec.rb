describe 'Testando funcionalidades de mouse hover', :hovers do

    before(:each) do
        visit "https://training-wheels-protocol.herokuapp.com/hovers"
    end

    it 'quando passo o mouse sobre o Blade' do
        # usando seletor css com o find
        card = find('img[alt=Blade')
        card.hover

        expect(page).to have_content "Nome: Blade"
    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        # usando seletor css com o find
        card = find('img[alt="Pantera Negra"')
        card.hover

        expect(page).to have_content "Nome: Pantera Negra"
    end

    it 'quando passo o mouse sobre o Homem Aranha' do
        # usando seletor css com o find
        card = find('img[alt="Homem Aranha"')
        card.hover

        expect(page).to have_content "Nome: Homem Aranha"

        # card = find('img[alt*=Aranha') contém
        # card = find('img[alt^=Homem') Inicia
        # card = find('img[alt$=Negra') Termina
    end
end