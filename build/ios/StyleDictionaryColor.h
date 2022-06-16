
//
// StyleDictionaryColor.h
//

// Do not edit directly
// Generated on Thu, 16 Jun 2022 19:48:46 GMT


#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, StyleDictionaryColorName) {
ColorCanvas
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
