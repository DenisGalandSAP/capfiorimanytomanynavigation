sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project2/test/integration/FirstJourney',
		'project2/test/integration/pages/FilmList',
		'project2/test/integration/pages/FilmObjectPage'
    ],
    function(JourneyRunner, opaJourney, FilmList, FilmObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project2') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFilmList: FilmList,
					onTheFilmObjectPage: FilmObjectPage
                }
            },
            opaJourney.run
        );
    }
);