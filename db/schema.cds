namespace db.schema;

//// Testing ENUM
// type Gender   : String enum {
//     Male;
//     Female
// };
//
// entity Order {
//     ClientGender : Gender;
//     Status       : Integer enum {
//         Canceled   = 0;
//         Opened     = 1;
//         Fullfilled = 2;
//         Shipped    = 3;
//         Submitted  = 4;
//     };
//     Priority     : String @assert.range enum {
//         high;
//         medium;
//         low
//     };
// }

type Adress {
    Street     : String;
    City       : String;
    State      : String(2);
    PostalCode : String(5);
    Country    : String(3);
};

type Dec_16_2 : Decimal(16, 2);

entity Products {
    key ID               : UUID;
        Name             : String default 'NoName';
        Description      : String;
        ImageURL         : String;
        ReleaseDate      : DateTime default $now;
        // CreationDate     : Date default CURRENT_DATE;
        DiscontinuedDate : DateTime;
        Price            : Dec_16_2;
        Height           : type of Price;
        Width            : Decimal(16, 2);
        Depth            : Decimal(16, 2);
        Quantity         : Decimal(16, 2);
};

entity Suppliers {
    key ID     : UUID;
        Name   : type of Products : Name;
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
