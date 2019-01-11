//
//  Doctor.h
//  Patient-Doctor
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Perscription.h"
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic,strong,readonly) NSString *name;
@property (nonatomic,strong,readonly) NSString *specialty;
@property (nonatomic,strong) NSMutableSet *acceptedPatients;
@property (nonatomic,strong) NSMutableSet *pescriptionDatabase;


-(instancetype)initWithName:(NSString*)name andSpecialty:(NSString*)specialty andDatabase:(NSMutableSet *)database;
-(void)seePatient:(Patient*)patient;
-(Patient*)requestMedicationForPatient:(Patient*)patient;
@end

NS_ASSUME_NONNULL_END







