//
//  InformationParser.m
//  Task_2
//
//  Created by Евгений Гостев on 26.10.2018.
//  Copyright © 2018 Evgenij Gostev. All rights reserved.
//

#import "InformationParser.h"



@implementation InformationParser

- (Information*)getInformationWithServerResponse:(NSDictionary*) responseObject {
  NSString* name = [self checkDictionary:responseObject withKey:@"name"];
  NSString* value = [self checkDictionary:responseObject withKey:@"value"];
  Information* information = [[Information alloc] initWithName:name
                                                      andValue:value];
  return information;
}

- (NSString*)checkDictionary:(NSDictionary*) dict withKey:(NSString*) key {
  if (dict[key] != [NSNull null]) {
    return dict[key];
  }
  return nil;
}

@end
