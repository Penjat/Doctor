//
//  Perscription.m
//  Patient-Doctor
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import "Perscription.h"

@implementation Perscription

-(instancetype)initWithPatient:(Patient *)patient doctor:(Doctor *)doctor drugName:(NSString *)drugName timesTakenDaily:(NSNumber*)timesTakenDaily doseInMGs:(NSNumber*)doseInMGs daysTaken:(NSNumber*)daysTaken{
    
    
    
    self = [super init];
    if (self) {
        _patient = patient;
        _doctor = doctor;
        _drugName = drugName;
        _timesTakenDaily =timesTakenDaily;
        _doseInMGs = doseInMGs;
        _daysTaken = daysTaken;
    }
    return self;
    
}

@end
