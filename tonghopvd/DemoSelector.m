//
//  DemoSelector.m
//  tonghopvd
//
//  Created by student on 21/11/2015.
//  Copyright © 2015 dungdang. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}
- (IBAction)onCrunchData:(id)sender {
    //[self performSelectorInBackground:@selector(doCrunchData) withObject:nil];
    //[self performSelectorOnMainThread:@selector(doCrunchData) withObject:nil waitUntilDone:true];
    //[self performSelector:@selector(hideSlide) withObject:nil afterDelay:5];
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"apple":@"tao",@"lemmon":@"chanh"} waitUntilDone:true];
}
- (IBAction)onSwitch:(id)sender {
    [self performSelector:@selector(showSlide) withObject:nil afterDelay:2];
    
}
-(void)processData:(NSDictionary*) data{
    for (NSString* key in [data allKeys] ) {
        NSLog(@"%@-%@",key, [data valueForKey:key]);
    }

};
- (void)doCrunchData {
    [NSThread sleepForTimeInterval:10];
}
- (void)hideSlide{
    self.slider.hidden = true;
}
-(void)showSlide{
    self.slider.hidden= false;
}
@end
