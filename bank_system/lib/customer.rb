class Customer < BankAccount
    @@next_customer_id = 1
  
    attr_reader :customer_id
  
    def initialize
      @customer_id = Customer.generate_customer_id
      @accounts = []
    end
  
    def open_account(initial_deposit)
      account = BankAccount.new
      account.deposit(initial_deposit)
      @accounts << account
      account.account_number
    end
  
    def close_account(account_number)
      account = find_account(account_number)
      if account
        @accounts.delete(account)
        return true
      else
        return false
      end
    end
  
    def get_account_balance(account_number)
      account = find_account(account_number)
      if account
        account.get_balance
      else
        nil
      end
    end

    def all()
        @accounts
    end
  
    private
  
    def find_account(account_number)
      @accounts.find { |account| account.account_number == account_number }
    end
  
    def self.generate_customer_id
      customer_id = @@next_customer_id
      @@next_customer_id += 1
      customer_id
    end
  end
  