//
//  Patient.m
//  Patient-Doctor
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)name andAge:(NSNumber *)age{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasHealthCard = false;//defaults to false
    }
    return self;
}

    

@end
