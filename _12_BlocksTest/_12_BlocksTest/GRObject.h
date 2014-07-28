//
//  GRObject.h
//  _12_BlocksTest
//
//  Created by Exo-terminal on 3/17/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ObjectBlock) (void);

@interface GRObject : NSObject
@property(strong, nonatomic) NSString* name;

-(void) testMethod:(ObjectBlock) block;

@end
