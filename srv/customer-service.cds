using {db.schema as schema} from '../db/schema';

service CustomerService {

    entity Customer as projection on schema.Customer;

}
