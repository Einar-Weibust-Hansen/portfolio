
//
// StyleDictionaryColor.h
//

// Do not edit directly
// Generated on Wed, 22 Jun 2022 12:10:53 GMT


#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, StyleDictionaryColorName) {
ColorButtonBg,
ColorButtonText,
ColorCanvasBg,
ColorFg
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
