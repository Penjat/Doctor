

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
        NSLog(@"patient has health card, adding to accepted patients");
        return;
    }
    NSLog(@"patient has no health card.");
}
- (Perscription *)requestMedicationForPatient:(Patient *)patient{
    
    if([_acceptedPatients containsObject:patient]){
         NSLog(@"patient is on the list of accepted patients, writing prescription");
        Perscription* perscription = [[Perscription alloc] initWithPatient:patient  drugName:@"rovexathol" timesTakenDaily:@3 doseInMGs:@75 daysTaken:@14];
        
        
        return perscription;
    }
    NSLog(@"the patient is not on the list, no medication given");
    
    return nil;
}
@end
