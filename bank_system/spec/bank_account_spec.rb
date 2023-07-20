require_relative '../lib/bank_account.rb'

RSpec.describe BankAccount do
    subject{described_class.new()}

    describe '#deposit' do
        it 'expects new bankAccount initialized with 0' do
            subject.deposit(100)
            expect(subject.get_balance).to eq(100)
        end
    end

    describe '#withdraw' do
        it 'expects new bankAccount to deduct current amount'do
            subject.deposit(100)
            subject.withdraw(10)
            expect(subject.get_balance).to eq(90)
        end
    end

    describe '#does not have sufficient funds' do
        it 'expects to deduct funds if funds are more' do
            subject.deposit(100)
            expect(subject.withdraw(150)).to eq(false)
            expect(subject.get_balance).to eq(100)
        end
    end
end