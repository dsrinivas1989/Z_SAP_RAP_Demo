using CatalogService as service from '../srv/catalog-service';

annotate service.Books with {

    ID @Common.ValueList: {
        CollectionPath : 'Authors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : author_ID,
                ValueListProperty : 'ID'
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name'
            }
        ]
    };

};
annotate CatalogService.Books with @UI.HeaderInfo: {
    TypeName: 'Item',
    TypeNamePlural: 'Items'
};
annotate CatalogService.Books with @UI.SelectionFields: [
    ID,
    title,
    author_ID,
    price,
    stock
];
annotate CatalogService.Books with @UI.LineItem: [
    {
        Value : ID
    },
    {
        Value : title
    },
    {
        Value : author_ID
    },
    {
        Value : price
    },
    {
        Value : stock
    }
];
annotate CatalogService.Books with @Capabilities.DeleteRestrictions: {
    Deletable : true
};