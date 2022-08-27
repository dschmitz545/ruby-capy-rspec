describe 'Trabalhando com select 2', :select2 do
    
    describe("single", :single) do
        before(:each) do
            visit "https://training-wheels-protocol.herokuapp.com/apps/select2/single.html"
        end
        
        it 'Selecionando ator por nome' do
            find(".select2-selection--single").click
            find(".select2-results__option", text: "Adam Sandler").click
            expect(find(".select2-selection__rendered").text).to include "Adam Sandler"
            expect(find(".select2-selection__rendered").text).not_to include "Jim Carrey"

        end
    end

    describe("multi", :multi) do
        before(:each) do
            visit "https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html"
        end

        it 'Selecionando ator por nome' do
            find(".select2-selection--multiple").click
            find(".select2-results__options", text: "Jim Carrey").click
            # find(".select2-selection__rendered").text
            expect(find(".select2-selection__rendered").text).to include "Jim Carrey"            
            expect(find(".select2-selection__rendered").text).not_to include "Owen Wilson"            
        end
    end
end