//
//  GRObject.m
//  _12_BlocksTest
//
//  Created by Exo-terminal on 3/17/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "GRObject.h"

@interface GRObject()
@property (copy, nonatomic) ObjectBlock objectBlock;
@end

@implementation GRObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        __weak GRObject* weakSelf = self;
        self.objectBlock =^{
            NSLog(@"%@", weakSelf.name);
        };
    }
    return self;
}
-(void)dealloc{
    NSLog(@"GRObject is deallocated");
}
-(void) testMethod:(ObjectBlock) block{
    block();
}

@end
