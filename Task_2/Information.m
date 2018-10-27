//
//  Information.m
//  Task_1
//
//  Created by Евгений Гостев on 25.10.2018.
//  Copyright © 2018 Evgenij Gostev. All rights reserved.
//

#import "Information.h"


@implementation Information

- (instancetype)initWithName:(NSString*) name andValue:(NSString*) value {
  self = [super init];
  if (self) {
    _name = name;
    _value = value;
  }
  return self;
}

-(NSString*)description {
  return [NSString stringWithFormat:@"Name: %@, value: %@", _name, _value];
}

@end
