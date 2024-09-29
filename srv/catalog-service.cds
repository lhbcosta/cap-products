using {db.schema as schema} from '../db/schema';

service CatalogService {

    entity Products as projection on schema.Products;

}
