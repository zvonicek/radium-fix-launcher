#import <Foundation/Foundation.h>

@interface NSMutableDictionary (RadiumFix)

+ (NSString *)defaultPresetUID;

@end

@interface NSDictionary (RadiumFix)

- (BOOL)isDefaultPreset;
- (NSString *)uid;
- (NSString *)name;

@end
