//
//  main.m
//  Patient-Doctor
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Perscription.h"

int main(int argc, const char * argv[]) {
    
    
    @autoreleasepool {
        
        //create a place to store perscriptions
        NSMutableSet *database = [[NSMutableSet alloc] init];
        
        Doctor *drBrown = [[Doctor alloc]initWithName:@"Dr. Brown" andSpecialty:@"family" andDatabase:database];
        
        Doctor *drBradlington = [[Doctor alloc]initWithName:@"Dr. Bradlington" andSpecialty:@"surgery" andDatabase:database];
        
        Patient *steve = [[Patient alloc] initWithName:@"Steve" andAge:@32];
        Patient *brian = [[Patient alloc] initWithName:@"Brian Wilson" andAge:@76];
        Patient *joe = [[Patient alloc] initWithName:@"Joseph Carlson" andAge:@22];
        
        [drBrown seePatient:steve];
        [drBrown requestMedicationForPatient:steve];
        
    }
    return 0;
}
