//
//  Doctor.m
//  Patient-Doctor
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import "Doctor.h"


@implementation Doctor

-(instancetype)initWithName:(NSString *)name andSpecialty:(NSString *)specialty andDatabase:(NSMutableSet*)database{
    
    self = [super init];
    if (self) {
        _name = name;
        _specialty = specialty;
        _pescriptionDatabase = database;
    }
    return self;
}
-(void)seePatient:(Patient *)patient{
    if(patient.hasHealthCard){
        [_acceptedPatients addObject:patient];
    }
}
- (Perscription *)requestMedicationForPatient:(Patient *)patient{
    
    if([_acceptedPatients containsObject:patient]){
        Perscription* perscription = [[Perscription alloc] initWithPatient:patient doctor:self drugName:@"rovexathol" timesTakenDaily:@3 doseInMGs:@75 daysTaken:@14];
        
        
        return perscription;
    }
}

@end
