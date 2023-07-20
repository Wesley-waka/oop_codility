require_relative '../lib/customer.rb'

RSpec.describe Customer do
    subject{described_class.new()}
    describe '#open account' do
        it 'opens an account'do
            expect(subject.open_account(100)).to eq(1004)
        end
    end

    describe '#close account' do
        it'closes account'do
            expect(subject.open_account(100)).to eq(1002)
            expect(subject.close_account(1002)).to eq(true)
        end
    end

    describe '#get account balance' do
        it'closes account'do
            expect(subject.open_account(100)).to eq(1002)
            expect(subject.get_account_balance(1002)).to eq(100)
        end
    end

    describe '#get all account' do
        it'returns all accounts'do
            expect(subject.open_account(100)).to eq(1002)
            expect(subject.all).to eq(1002)
        end
    end
end