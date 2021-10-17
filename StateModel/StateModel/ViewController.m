//
//  ViewController.m
//  StateModel
//
//  Created by Sharker on 2021/10/17.
//

#import "ViewController.h"
#import "Work.h"
#import "State.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    Work *emergencyProjects = [[Work alloc] init];
    emergencyProjects.hour = [NSNumber numberWithInt:9];
    [emergencyProjects writeProgram];
    emergencyProjects.hour = [NSNumber numberWithInt:10];
    [emergencyProjects writeProgram];
    emergencyProjects.hour = [NSNumber numberWithInt:12];
    [emergencyProjects writeProgram];
    emergencyProjects.hour = [NSNumber numberWithInt:13];
    [emergencyProjects writeProgram];
    emergencyProjects.hour = [NSNumber numberWithInt:14];
    [emergencyProjects writeProgram];
    emergencyProjects.hour = [NSNumber numberWithInt:17];
    [emergencyProjects writeProgram];
    
    // 是否完成
    emergencyProjects.finished = YES;
    
    emergencyProjects.hour = [NSNumber numberWithInt:19];
    [emergencyProjects writeProgram];
    emergencyProjects.hour = [NSNumber numberWithInt:22];
    [emergencyProjects writeProgram];
    
    
}


@end
