describe "Testando iframes", :iframes do

    describe "Iframe Bom" do

        before(:each) do
            visit "/nice_iframe"
        end

        it 'adicionar ao carrinho' do
            # buscando pelo id do iframe
            within_frame("burgerId") do
                produto = find(".menu-item-info-box", text: "REFRIGERANTE")
                produto.find('a').click

                expect(find("#cart")).to have_content "R$ 4,50"
                
            end
        end

    end

    describe "Iframe Ruim" do
        before(:each) do
            visit "/bad_iframe"
        end

        it 'carrinho deve estar vazio' do
            
            #usando jquerry para adicionar um id temporario
            script = '$(".box-iframe").attr("id", "tempId");'
            page.execute_script(script)

            within_frame("tempId") do
                expect(find("#cart")).to have_content "Seu carrinho está vazio!"

            end
        end

    end

end
    