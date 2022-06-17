
//
// StyleDictionaryColor.m
//

// Do not edit directly
// Generated on Fri, 17 Jun 2022 13:24:47 GMT


#import "StyleDictionaryColor.h"

@implementation StyleDictionaryColor

+ (UIColor *)color:(StyleDictionaryColorName)colorEnum{
  return [[self values] objectAtIndex:colorEnum];
}

+ (NSArray *)values {
  static NSArray* colorArray;
  static dispatch_once_t onceToken;

  dispatch_once(&onceToken, ^{
    colorArray = @[
[UIColor colorWithRed:0.000f green:0.090f blue:1.000f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
