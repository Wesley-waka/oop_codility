# Certainly! Here's a beginner-level programming challenge that covers various object-oriented programming (OOP) principles. The challenge is to implement a basic banking application with customer accounts.
# Bank Account Application
# Requirements:

#     Implement a BankAccount class that represents a customer's bank account.
#     Each BankAccount instance should have a unique account number, starting from 1001.
#     Implement methods to perform the following operations on a BankAccount:
#         deposit(amount): Add the specified amount to the account balance.
#         withdraw(amount): Subtract the specified amount from the account balance if sufficient funds are available.
#         get_balance(): Retrieve the current balance of the account.
#     Implement a Customer class that represents a bank customer.
#     Each Customer instance should have a unique customer ID, starting from 1.
#     Implement methods to perform the following operations on a Customer:
#         open_account(initial_deposit): Open a new bank account for the customer with the specified initial deposit.
#         close_account(account_number): Close the bank account with the specified account number if it belongs to the customer.
#         get_account_balance(account_number): Retrieve the balance of the account with the specified account number if it belongs to the customer.

# Constraints:

#     All amounts and balances should be represented as positive integers.
#     When attempting to withdraw an amount, the account balance should be checked to ensure sufficient funds are available.

# Your task is to implement the BankAccount and Customer classes according to the given requirements. Feel free to add any additional methods or attributes that you think are necessary to fulfill the requirements.

# Once you have implemented the classes, you can write test cases to verify that your implementation behaves correctly, covering various scenarios such as account opening, deposits, withdrawals, and balance retrieval.

# Bank account
# deposit(amount) - add specified amount
# withdraw(amount) - subtract specified amount if sufficient funds
# get_balance(amount) -Retrieve current balance of the acount
# Customer class
# @customer should have a unique id starting form 1
# open_account(initial_depo) - should open account with initial deposit
# close_account(account_number)-should close accnt with specified account number
# get_account_balance(account_number) - get balance of account with specified account number 
class BankAccount
    @@next_account_number = 1001
  
    attr_reader :account_number
  
    def initialize
      @account_number = BankAccount.generate_account_number
      @balance = 0
    end
  
    def deposit(amount)
      @balance += amount
    end
  
    def withdraw(amount)
      if amount <= @balance
        @balance -= amount
        return true
      else
        return false
      end
    end
  
    def get_balance
      @balance
    end
  
    private
  
    def self.generate_account_number
      account_number = @@next_account_number
      @@next_account_number += 1
      account_number
    end
  end
  

