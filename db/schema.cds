namespace db.schema;

type Adress {
    Street     : String;
    City       : String;
    State      : String(2);
    PostalCode : String(5);
    Country    : String(3);
};

entity Products {
    key ID               : UUID;
        Name             : String;
        Description      : String;
        ImageURL         : String;
        ReleaseDate      : DateTime;
        DiscontinuedDate : DateTime;
        Price            : Decimal(16, 2);
        Height           : Decimal(16, 2);
        Width            : Decimal(16, 2);
        Depth            : Decimal(16, 2);
        Quantity         : Decimal(16, 2);
};

entity Suppliers {
    key ID     : UUID;
        Name   : String;
        Adress : Adress;
        Email  : String;
        Phone  : String;
        Fax    : String;
};

entity Category {
    key ID   : String(1);
        Name : String;
};

entity Availability {
    key ID          : Integer;
        Description : String;
};

entity Currencies {
    key ID          : String;
        Description : String;
};

entity UnitOfMeasures {
    key ID          : String(2);
        Description : String;
};

entity DimensionUnits {
    key ID          : String(2);
        Description : String;
};

entity Months {
    key ID               : String(2);
        Description      : String;
        ShortDescription : String(3);
};

entity ProductReview {
    key Name    : String;
        Rating  : Integer;
        Comment : String;
};

entity SalesData {
    key DeliveryDate : DateTime;
        Revenue      : Decimal(16, 2);
};
