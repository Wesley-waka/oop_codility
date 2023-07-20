RSpec.describe Book do
    subject{described_class.new("Choozi la heri","Onyango")}
    
    describe "#get_book_id"do
        it 'retrieve book id'do
            expect(subject.get_book_id).to eq(1)
        end
    end

    describe"#get_title" do
        it 'retrieves title of book' do
            let(:book){Book.new("Wimbo")}
            expect(book.get_title).to eq("Wimbo")
        end
    end

    describe"#get_author"do
        it 'retrieves author of the book' do
            let(:book){Book.new("Samaki","Walibora")}
            expect(book.author).to eq("Walibora")
        end
    end
end

RSpec.describe LibraryMember do
    subject{described_class.new("Choozi la heri","Onyango")}
    
    describe "#get_book_id"do
        it 'retrieve book id'do
            expect(subject.get_book_id).to eq(1)
        end
    end

    describe"#get_title" do
        it 'retrieves title of book' do
            let(:book){Book.new("Wimbo")}
            expect(book.get_title).to eq("Wimbo")
        end
    end

    describe"#get_author"do
        it 'retrieves author of the book' do
            let(:book){Book.new("Samaki","Walibora")}
            expect(book.author).to eq("Walibora")
        end
    end
end

