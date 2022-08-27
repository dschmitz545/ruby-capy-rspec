describe 'Testando upload de arquivos' do

    before(:each) do
        @arquivo = Dir.pwd + "/spec/fixtures/arquivo.txt"
        @imagem = Dir.pwd + "/spec/fixtures/imagem.png"
        visit "https://training-wheels-protocol.herokuapp.com/upload"
    end

    # usando o id
    it 'Upload com arquivo texto' do
        attach_file("file-upload", @arquivo)

        # pelo value ou id
        click_button 'Upload'

        
        # verificando pelo id
        div_arquivo = find("#uploaded-file")
        expect(div_arquivo.text).to eql "arquivo.txt"
        
    end
    
    it 'Upload com arquivo de imagem', :uploads do

        attach_file("file-upload", @imagem)

        # pelo value ou id
        click_button 'Upload'

        # procurando pelo id
        file_img = find("#new-image")
        # verificando pelo caminho relativo da imagem
        expect(file_img[:src]).to include "/uploads/imagem.png"

    end


    after(:each) do
        sleep 2
    end
end
