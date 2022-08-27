describe 'Testando Login' do

    before(:each) do
        visit "/login"
    end

    it 'Formulario de login com sucesso' do

        # tanto pelo id como pelo name
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        
        # pelo value
        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash').text).to include "Olá, Tony Stark. Você acessou a área logada!"
        expect(find('#flash')).to have_content "Olá, Tony Stark. Você acessou a área logada!"
    end

    it 'Formulario de login com senha incorreta' do
        
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis'
        
        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash').text).to include "Senha é invalida!"
        expect(find('#flash')).to have_content "Senha é invalida!"

    end

    it 'Formulario de login com usuario não cadastrado' do
        
        # tanto pelo id como pelo name
        fill_in 'userId', with: 'stark1'
        fill_in 'password', with: 'jarvis!'
        
        # pelo value
        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash').text).to include "O usuário informado não está cadastrado!"
        expect(find('#flash')).to have_content "O usuário informado não está cadastrado!"

    end
end
