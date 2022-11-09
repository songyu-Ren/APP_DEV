using { sap.ui.energymanagement as my } from '../db/schema';

@path: 'service/energy'
service energyService {
   entity energy @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'Viewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'Manager' ]
            }
        ]) as projection on my.energy
    annotate energy with @odata.draft.enabled;
   
}

