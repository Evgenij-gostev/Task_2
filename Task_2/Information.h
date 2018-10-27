//
//  Information.h
//  Task_1
//
//  Created by Евгений Гостев on 25.10.2018.
//  Copyright © 2018 Evgenij Gostev. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Information : NSObject

@property (nonatomic, readonly) NSString* name;
@property (nonatomic, readonly) NSString* value;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithName:(NSString*) name andValue:(NSString*) value;

@end
