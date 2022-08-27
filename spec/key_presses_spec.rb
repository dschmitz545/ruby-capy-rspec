describe 'Enviando teclas do teclado', :keypress do

    before(:each) do
        visit "/key_presses"
    end

    it 'Simulando as teclas simbolicas' do
        teclas = %i[tab escape space alt control shift enter]
        # find("#campo-id").send_keys :tab
        teclas.each do |t|
            find("#campo-id").send_keys t
            expect(page).to have_content "You entered: " + t.to_s.upcase

        end
    end

    it 'simulando letras do teclado' do
        letras = %w[a s d f g h j k l]
        letras.each do |l|
            find("#campo-id").send_keys l
            expect(page).to have_content "You entered: " + l.to_s.upcase
        end
    end
end