using MyService as service from '../../srv/service';

annotate service.Film2People with @(UI: {
    TextArrangement    : #TextOnly,
    LineItem           : [
        {
            $Type         : 'UI.DataFieldWithIntentBasedNavigation',
            Value         : film.ID,
            SemanticObject: 'film',
            Action        : 'manage',
        // Mapping       : {$value: [{
        //     LocalProperty         : ,
        //     SemanticObjectProperty: 'ID',
        // }, ], }
        },
        {
            $Type                  : 'UI.DataField',
            Value                  : film.release_date,
            ![@Common.FieldControl]: #ReadOnly,
            ![@UI.Importance]      : #High
        },
        {
            $Type                  : 'UI.DataField',
            Value                  : film.director,
            ![@Common.FieldControl]: #ReadOnly,
            ![@UI.Importance]      : #High
        },
        {
            $Type                  : 'UI.DataField',
            Value                  : film.producer,
            ![@Common.FieldControl]: #ReadOnly,
            ![@UI.Importance]      : #High
        },
        {
            $Type                  : 'UI.DataField',
            Value                  : film.opening_crawl,
            ![@Common.FieldControl]: #ReadOnly,
            ![@UI.Importance]      : #High
        }
    ],
    PresentationVariant: {SortOrder: [{
        $Type     : 'Common.SortOrderType',
        Property  : film.release_date,
        Descending: false
    }]},
});

annotate service.People with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'name',
        Value: name,
    },
    {
        $Type: 'UI.DataField',
        Label: 'height',
        Value: height,
    },
    {
        $Type: 'UI.DataField',
        Label: 'mass',
        Value: mass,
    },
    {
        $Type: 'UI.DataField',
        Label: 'hair_color',
        Value: hair_color,
    },
    {
        $Type: 'UI.DataField',
        Label: 'skin_color',
        Value: skin_color,
    },
]);

annotate service.People with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'height',
                Value: height,
            },
            {
                $Type: 'UI.DataField',
                Label: 'mass',
                Value: mass,
            },
            {
                $Type: 'UI.DataField',
                Label: 'hair_color',
                Value: hair_color,
            },
            {
                $Type: 'UI.DataField',
                Label: 'skin_color',
                Value: skin_color,
            },
            {
                $Type: 'UI.DataField',
                Label: 'eye_color',
                Value: eye_color,
            },
            {
                $Type: 'UI.DataField',
                Label: 'birth_year',
                Value: birth_year,
            },
            {
                $Type: 'UI.DataField',
                Label: 'gender',
                Value: gender,
            },
            {
                $Type: 'UI.DataField',
                Label: 'scoundrel',
                Value: scoundrel,
            },
        ],
    },
    UI.Facets                     : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: 'films/@UI.LineItem'
        }
    ]
);
