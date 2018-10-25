//
//  Information.m
//  Task_1
//
//  Created by Евгений Гостев on 25.10.2018.
//  Copyright © 2018 Evgenij Gostev. All rights reserved.
//

#import "Information.h"

@implementation Information

- (id)initWithServerResponse:(NSDictionary*) responseObject {
  self = [super init];
  if (self) {
    if (responseObject[@"name"] != [NSNull null]) {
      _name = responseObject[@"name"];
    } else {
      _name = nil;
    }
    
    if (responseObject[@"value"] != [NSNull null]) {
      _value = responseObject[@"value"];
    } else {
      _value = nil;
    }
  }
  return self;
}

-(NSString*)description {
  return [NSString stringWithFormat:@"Name: %@, value: %@", _name, _value];
}

@end
