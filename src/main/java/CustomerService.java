import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService {
    private static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "John", "1/2/1994", "Hanoi"));
        customers.put(2, new Customer(2, "Bill", "27/12/1998", "Danang"));
        customers.put(3, new Customer(3, "Alex", "5/12/1995", "Saigon"));
        customers.put(4, new Customer(4, "Adam", "20/4/1997", "Beijin"));
        customers.put(5, new Customer(5, "Sophia", "12/6/1994", "Miami", "https://i.doanhnhansaigon.vn/2013/11/15/22099457-20121203153318-3-1508380654.jpg"));
        customers.put(6, new Customer(6, "Rose", "25/9/1989", "Newyork"));
    }

    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }
}
