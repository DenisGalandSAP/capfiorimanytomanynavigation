namespace db;


using {
    cuid,
    managed
} from '@sap/cds/common';

@cds.autoexpose: true
entity People @(cds.redirection.target: false) : cuid, managed {
    name       : String;
    height     : String default 'Test';
    mass       : String;
    /**
     * Person's Hair Color
     */
    hair_color : String;
    skin_color : String;
    eye_color  : String;
    birth_year : String;
    gender     : String;
    scoundrel  : Boolean default false;
    films      : Composition of many Film2People
                     on films.people = $self;
}

entity Film : cuid, managed {
    title         : String;
    episode_id    : Integer;
    opening_crawl : String(2500);
    director      : String;
    producer      : String;
    release_date  : Date;
}


entity Film2People : cuid {
    film   : Association to Film;
    people : Association to People;
}
