#import <MapKit/MapKit.h>
%hook FMFLocation
- (void)updateLatitude:(id)lat longitude:(id)lng altitude:(id)alt horizontalAccuracy:(id)acc verticalAccuracy:(id)acc5 course:(id)c speed:(id)s timestamp:(id)ts {
    float nlat=[lat floatValue]-0.002072;
    float nlng=[lng floatValue]+0.004294;
    NSNumber *olat=[NSNumber numberWithFloat:nlat];
    NSNumber *olng=[NSNumber numberWithFloat:nlng];

    %orig(olat,olng,alt,acc,acc5,c,s,ts); 
}
%end
