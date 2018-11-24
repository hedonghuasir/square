//
//  squarefive.m
//  square
//
//  Created by user on 12-3-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "squarefive.h"

@implementation squarefive


-(id)init
{
    self = [super init];
    if (self) {
        case1.x = 0;
        case1.y = 0;
        case2.x = 0;
        case2.y = 1;
        case3.x = 0;
        case3.y = 2;
        case4.x = 1;
        case4.y = 2;
        state = 1;

    }
    return self;    
}

-(void)squareRound
{
    if (state == 1) {
        [self setButtonState:YES];
        if ([self beyondBounds:case1.x+2 :case1.y+1]
            || [self beyondBounds:case4.x :case4.y-1]) {
            [self setButtonState:NO];
            return;
        }
        state = 2;
        case1.x += 2;
        case1.y += 1;
        case4.y -= 1;
        
        [self setButtonState:NO];
        
        
        return;
        
    } else if (state == 2) {
        [self setButtonState:YES];
        
        if ([self beyondBounds:case1.x-1 :case1.y-1]
            || [self beyondBounds:case2.x :case3.y-1]
            || [self beyondBounds:case3.x+1 :case3.y]) {
            [self setButtonState:NO];
            return;
        }
        state = 3;
        case1.x -= 1;
        case1.y -= 1;
        case2.y -= 1;
        case3.x += 1;
        
        
        [self setButtonState:NO];
        
        
        return;
        
    } else if (state == 3) {
        [self setButtonState:YES];
        
        if ([self beyondBounds:case1.x+1 :case1.y+1]
            || [self beyondBounds:case2.x :case2.y+2]
            || [self beyondBounds:case4.x+1 :case4.y+1]) {
            [self setButtonState:NO];
            return;
        }
        state = 4;
        case1.x += 1;
        case1.y += 1;
        case2.y += 2;
        case4.x += 1;
        case4.y += 1;
        
        
        [self setButtonState:NO];
        
        
        return;
        
    } else if (state == 4) {
        [self setButtonState:YES];
        
        if ([self beyondBounds:case1.x-2 :case1.y-1]
            || [self beyondBounds:case2.x :case2.y-1]
            || [self beyondBounds:case3.x-1 :case3.y]
            || [self beyondBounds:case4.x-1 :case3.y]) {
            [self setButtonState:NO];
            return;
        }
        state = 1;
        case1.x -= 2;
        case1.y -= 1;

        case2.y -= 1;
        case3.x -= 1;
        case4.x -= 1;
        
        
        [self setButtonState:NO];
        
        
        return;
        
    }


}



@end
