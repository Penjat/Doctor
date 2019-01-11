//
//  Perscription.h
//  Patient-Doctor
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"





NS_ASSUME_NONNULL_BEGIN

@interface Perscription : NSObject


@property (nonatomic,strong,readonly) NSString *drugName;
@property (nonatomic,strong,readonly) Patient *patient;

@property (nonatomic) NSNumber *timesTakenDaily;
@property (nonatomic) NSNumber *doseInMGs;
@property (nonatomic) NSNumber *daysTaken;

-(instancetype)initWithPatient:(Patient*)patient  drugName:(NSString*)drugName timesTakenDaily:(NSNumber*)timesTakenDaily doseInMGs:(NSNumber*)doseInMGs daysTaken:(NSNumber*)daysTaken;

@end

NS_ASSUME_NONNULL_END
