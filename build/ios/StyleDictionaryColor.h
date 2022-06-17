
//
// StyleDictionaryColor.h
//

// Do not edit directly
// Generated on Fri, 17 Jun 2022 13:24:47 GMT


#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, StyleDictionaryColorName) {
ColorCanvas
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
