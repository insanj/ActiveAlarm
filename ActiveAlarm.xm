// ActiveAlarm by Julian (insanj) Weiss
// (CC) 2014 Julian Weiss, see full license in README.md

#import "ActiveAlarm.h"

@implementation ActiveAlarm

-(void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event{
	[event setHandled:YES];
	NSLog(@"[ActiveAlarm] Recieved event (%@), launching Clock app now...", event);
	[(SpringBoard *)[UIApplication sharedApplication] applicationOpenURL:[%c(ClockManager) urlForClockAppSection:1] publicURLsOnly:NO];
}

+(void)load{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"libactivator.ActiveAlarm"];
	[pool release];
}

@end 