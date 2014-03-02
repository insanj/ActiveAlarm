#import <libactivator/libactivator.h>
#import <UIKit/UIKit.h>

@interface SpringBoard : UIApplication
- (void)applicationOpenURL:(id)arg1 publicURLsOnly:(BOOL)arg2;
@end

@interface ClockManager : NSObject
+ (id)urlForClockAppSection:(int)arg1;
@end

@interface ActiveAlarmClock : NSObject <LAListener>
@end

@interface ActiveAlarmAlarm : NSObject <LAListener>
@end

@interface ActiveAlarmStopwatch : NSObject <LAListener>
@end

@interface ActiveAlarmTimer : NSObject <LAListener>
@end
