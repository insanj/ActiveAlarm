#import <libactivator/libactivator.h>
#import <UIKit/UIKit.h>

@interface SpringBoard : UIApplication
- (void)applicationOpenURL:(id)arg1 publicURLsOnly:(BOOL)arg2;
@end

@interface ClockManager : NSObject
+ (id)urlForClockAppSection:(int)arg1;
@end

@interface ActiveAlarm : NSObject <LAListener>
@end