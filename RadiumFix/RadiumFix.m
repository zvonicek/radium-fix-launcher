#import "RadiumFix.h"

@implementation NSDictionary (RadiumFix)

- (BOOL)isDefaultPreset {
    NSString * const defaultUID = [NSMutableDictionary defaultPresetUID];
    return [self.uid isEqual:defaultUID];
}

- (NSString *)uid {
    return [self valueForKey:@"uid"];
}

- (NSString *)name {
    return [self valueForKey:@"name"];
}

@end

