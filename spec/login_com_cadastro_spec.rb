describe 'Testando formularios de login com cadastro', :login3 do

    before(:each) do
        visit "/access"
    end

    it 'login com sucesso' do

        # escopo da página
        login_form = find("#login")
        
        login_form.find("input[name=username]").set 'stark'
        login_form.find("input[name=password").set "jarvis!"

        # # outra forma de trabalhar com escopo
        # within("#login") do

        # end

        # pelo value
        click_button 'Entrar'

        expect(find('#flash').visible?).to be true

        expect(find('#flash').text).to include "Olá, Tony Stark. Você acessou a área logada!"
        expect(find('#flash')).to have_content "Olá, Tony Stark. Você acessou a área logada!"
    end

    it 'cadastro com sucesso' do
        within("#signup") do
            find("input[name=username]").set 'peter'
            find("input[name=password").set "maquina02!"

            click_link "Criar Conta"

        end

    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
        
    end
end