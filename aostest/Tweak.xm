#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLLocation.h>

%hook AOSFindBaseServiceProvider
-(void)sendCurrentLocation:(id)fp8 isFinished:(BOOL)fp12 forCmd:(id)fp16 withReason:(int)fp20 andAccuracyChange:(double)fp24{
    CLLocation *lp=(CLLocation *)fp8;
    float nlat=lp.coordinate.latitude - 0.002072;
    float nlng=lp.coordinate.longitude + 0.004294;
    CLLocation *c = [[[CLLocation alloc] 
        initWithCoordinate:CLLocationCoordinate2DMake(nlat, nlng)
        altitude:lp.altitude
        horizontalAccuracy:lp.horizontalAccuracy
        verticalAccuracy:lp.verticalAccuracy
        timestamp:lp.timestamp] autorelease];
    %orig(c,fp12,fp16,fp20,fp24);
}
%end
