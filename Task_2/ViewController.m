//
//  ViewController.m
//  Task_2
//
//  Created by Евгений Гостев on 25.10.2018.
//  Copyright © 2018 Evgenij Gostev. All rights reserved.
//

#import "ViewController.h"
#import "Information.h"

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSData* responseData1 = [@"{\n"
                          "\"data\":\n"
                          "{\n"
                          "\"name\": \"LIMIT_1\",\n"
                          "\"value\": \"0\",\n"
                          "}"
                          "}" dataUsingEncoding:NSUTF8StringEncoding];
  
  NSData* responseData2 = [@"{\n"
                          "\"data\":\n"
                          "[{\n"
                          "\"name\": \"LIMIT_1\",\n"
                          "\"value\": \"0\",\n"
                          "},\n"
                          "{\n"
                          "\"name\": \"LIMIT_2\",\n"
                          "\"value\": \"0\",\n"
                          "}]\n"
                          "}" dataUsingEncoding:NSUTF8StringEncoding];

  NSMutableArray* informations = [NSMutableArray new];
  
  NSInteger number = arc4random_uniform(2);
  NSData* responseData = number == 0 ? responseData1 : responseData2;

  
  NSDictionary *response = [NSJSONSerialization
                               JSONObjectWithData:responseData
                               options:NSJSONReadingMutableContainers
                               error:nil];

  if ([NSJSONSerialization isValidJSONObject:response]) {
    NSDictionary* data = [response objectForKey:@"data"];

    if (![data isKindOfClass:[NSArray class]]) {
      Information* information = [[Information alloc] initWithServerResponse:data];
      [informations addObject:information];
    } else {
      for (NSDictionary* dict in data) {
        Information* information = [[Information alloc]                          initWithServerResponse:dict];
        [informations addObject:information];
      }
    }
  }
  
  for (Information* inf in informations) {
    NSLog(@"Result: %@", inf);
  }

  
}




@end
