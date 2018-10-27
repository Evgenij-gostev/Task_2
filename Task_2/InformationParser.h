//
//  InformationParser.h
//  Task_2
//
//  Created by Евгений Гостев on 26.10.2018.
//  Copyright © 2018 Evgenij Gostev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Information.h"


@interface InformationParser : NSObject

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (Information*)getInformationWithServerResponse:(NSDictionary*) responseObject;

@end
