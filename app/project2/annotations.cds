using MyService as service from '../../srv/service';

annotate service.Film with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'episode_id',
            Value : episode_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'opening_crawl',
            Value : opening_crawl,
        },
        {
            $Type : 'UI.DataField',
            Label : 'director',
            Value : director,
        },
        {
            $Type : 'UI.DataField',
            Label : 'producer',
            Value : producer,
        },
    ]
);
annotate service.Film with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'episode_id',
                Value : episode_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'opening_crawl',
                Value : opening_crawl,
            },
            {
                $Type : 'UI.DataField',
                Label : 'director',
                Value : director,
            },
            {
                $Type : 'UI.DataField',
                Label : 'producer',
                Value : producer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'release_date',
                Value : release_date,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
