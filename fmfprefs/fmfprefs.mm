#import <Preferences/Preferences.h>

@interface fmfprefsListController: PSListController {
}
@end

@implementation fmfprefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"fmfprefs" target:self] retain];
	}
	return _specifiers;
}

- (NSString *) getVersion: (PSSpecifier *) spec {
    return @"1.1.2";
}
- (NSString *) getAuthor: (PSSpecifier *) spec {
    return @"Wei Shi";
}
- (NSString *) getTwitter: (PSSpecifier *) spec {
    return @"@weishics";
}
- (NSString *) getBlog: (PSSpecifier *) spec {
    return @"weishi.github.io";
}
@end
// vim:ft=objc
