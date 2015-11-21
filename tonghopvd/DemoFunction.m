//
//  DemoFunction.m
//  tonghopvd
//
//  Created by student on 20/11/2015.
//  Copyright © 2015 dungdang. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self writeln:@"hello"];
    [self writeln:@"1234"];
    [self sayFirstName:@"Dung" andLastName:@"Dang"];
    float tempdegree =30.2;
    NSString* result = [NSString stringWithFormat:@"%2.2f do C bang %3.2f F",tempdegree,[self CtoF:tempdegree]];
    [self writeln:result];
    [self performSelector:@selector(CtoF) ];
    [self performSelector:@selector(CtoF2:) withObject:@(30.2)];
}

- (void) sayFirstName: (NSString*) fn andLastName: (NSString*) ln{
    NSLog(@"%@ %@", fn, ln);
    
};
- (float) CtoF: (float) degree {
    
    return degree*1.8+32.0;
};

- (void) CtoF{ NSLog(@"ko lam gi ca") ;};
- (float) CtoF2 {return 20.2;};
- (void) CtoF2: (NSNumber*) degree {
    float resuilt= [degree floatValue]*1.8 +32.0;
    NSLog(@"%2.2f", resuilt);

};

@end
