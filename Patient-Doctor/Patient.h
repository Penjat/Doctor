//
//  Patient.h
//  Patient-Doctor
//
//  Created by Spencer Symington on 2019-01-10.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject

@property (nonatomic,strong) NSNumber* age;
@property (nonatomic,strong,readonly) NSString* name;
@property (nonatomic) BOOL hasHealthCard;
@property (nonatomic,strong) NSArray<NSString*>* symptoms;

-(instancetype)initWithName:(NSString*)name andAge:(NSNumber*)age;

@end

NS_ASSUME_NONNULL_END
