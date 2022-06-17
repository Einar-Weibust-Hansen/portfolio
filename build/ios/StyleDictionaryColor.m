
//
// StyleDictionaryColor.m
//

// Do not edit directly
// Generated on Fri, 17 Jun 2022 13:01:39 GMT


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
[UIColor colorWithRed:0.000f green:1.000f blue:0.000f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
