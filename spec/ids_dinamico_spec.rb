describe 'Testando ids dinamicos', :iddinamico do

    before(:each) do
        visit "/access"
    end

    # Usando Regex:
    # $ => termina com
    # ^ => Começa com
    # * => contém


    it 'cadastro com id dinamico' do
        find('input[id$=UsernameInput]').set 'miranha'
        find('input[id^=PasswordInput]').set 'nowayhome!'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"

    end
end