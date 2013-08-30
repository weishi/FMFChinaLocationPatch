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
@end

// vim:ft=objc
