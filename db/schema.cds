namespace bookshop;
entity Authors {
    key ID : Integer;
    name   : String;
}

entity Books {
    key ID    : Integer;
    title     : String;
    price     : Decimal(9,2);
    stock     : Integer;
    author    : Association to Authors;
}