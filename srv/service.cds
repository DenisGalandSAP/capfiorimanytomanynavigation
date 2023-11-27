using db from '../db/schema';

service MyService {

    entity People      as projection on db.People;
    entity Film        as projection on db.Film;

    entity Film2People as
        projection on db.Film2People {
            *,
            people : redirected to People,
            film   : redirected to Film
        };


}
