//
//  Information.h
//  Task_1
//
//  Created by Евгений Гостев on 25.10.2018.
//  Copyright © 2018 Evgenij Gostev. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Information : NSObject

@property (strong, nonatomic, readonly) NSString* name;
@property (strong, nonatomic, readonly) NSString* value;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (id) initWithServerResponse:(NSDictionary*) responseObject;

@end
