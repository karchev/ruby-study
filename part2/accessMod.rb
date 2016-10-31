
# access modify know how 1
class MyClass
    def method1 # public
    end
    
    protected
    def method2 # protected
    end
    
    private
    def method3 # private
    end
end

# know how 2
class MyClass2
    def method1
    end
    def method2
    end
    def method3
    end
    
    # dynamic bind access modifiler
    public      :method1
    protected   :method2
    private     :method3
end

# exam : Account
class Account
    attr_accessor   :balance
    def initialize(balance)
        @balance    = balance
    end
end

class Transaction
    def initialize(account_a, account_b)
        @account_a  = account_a
        @account_b  = account_b
    end
    
    private 
    def debit(account, amount)
        account.balance -= amount
    end
    def credit(account, amount)
        account.balance += amount
    end
    
    public
    def transfer(amount)
        debit(@account_a, amount)
        credit(@account_b, amount)
        "debit : #{@account_a.balance}, credit : #{@account_b.balance}"
    end
    
    
end

saving = Account.new(100)
checking = Account.new(200)

trans = Transaction.new(checking, saving)
p trans.transfer(50)