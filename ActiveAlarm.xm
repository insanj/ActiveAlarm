// ActiveAlarm by Julian (insanj) Weiss
// (CC) 2014 Julian Weiss, see full license in README.md

#import "ActiveAlarm.h"

static void AALaunchToTab(int tab){
	NSLog(@"[ActiveAlarm] Recieved Activator trigger, launching Clock app to tab %i now...", tab);
	[(SpringBoard *)[UIApplication sharedApplication] applicationOpenURL:[%c(ClockManager) urlForClockAppSection:tab] publicURLsOnly:NO];
}

@implementation ActiveAlarmClock

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event{
	[event setHandled:YES];
	AALaunchToTab(0);
}

+ (void)load{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"libactivator.ActiveAlarmClock"];
	[pool release];
}

@end

@implementation ActiveAlarmAlarm

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event{
	[event setHandled:YES];
	AALaunchToTab(1);
}

+ (void)load{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"libactivator.ActiveAlarmAlarm"];
	[pool release];
}

@end


@implementation ActiveAlarmStopwatch

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event{
	[event setHandled:YES];
	AALaunchToTab(2);
}

+ (void)load{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"libactivator.ActiveAlarmStopwatch"];
	[pool release];
}

@end

@implementation ActiveAlarmTimer

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event{
	[event setHandled:YES];
	AALaunchToTab(3);
}

+ (void)load{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"libactivator.ActiveAlarmTimer"];
	[pool release];
}

@end
