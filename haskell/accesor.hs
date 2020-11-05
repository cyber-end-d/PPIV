type CustomerID = Int
type CustomerName = String
type CustomerAddress = [String]

data Customer = Customer {
              customerID :: CustomerID
			, customerName :: CustomerName
			, customerAddress :: CustomerAddress
            } deriving(Show)

customer1 = Customer 10 "Juan" ["Pacheco", "2900"]
customer2 = Customer 11 "Pedro" ["Pacheco", "2900"]