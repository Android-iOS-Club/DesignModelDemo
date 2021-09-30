//
//  ViewController.m
//  Factory
//
//  Created by Sharker on 2021/9/18.
//

#import "ViewController.h"
#import "Operation/OperationFactory.h"
#import "Operation/Operation.h"

#import "Interface/Person.h"
#import "Interface/Fish.h"
#import "Interface/Forg.h"

@interface ViewController ()
@property (nonatomic, strong) NSThread *therad;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    @try {
//        self.view.backgroundColor = UIColor.whiteColor;
//        NSNumber *numberA = [NSNumber numberWithInt:20];
//        NSNumber *numberB = [NSNumber numberWithInt:0];
//        Operation *operation = [OperationFactory creatOperationWithSymbol:@"/"];
//        [operation setNumberA:numberA];
//        [operation setNumberB:numberB];
//        NSLog(@"%@", [operation result]);
//    } @catch (NSException *exception) {
//        NSLog(@"catch exception");
//        NSLog(@"%@", exception.callStackReturnAddresses);
//        @throw exception;
//    } @finally {
//        NSLog(@"over");
//    }
    
//    NSMutableArray<id> *array = [[NSMutableArray alloc] init];
//    [array addObject:[Person new]];
//    [array addObject:[Fish new]];
//    [array addObject:[Forg new]];
//    [array addObject:[NSObject new]];
//    // 协议 对于方法的抽象
//    for (id Object in array) {
//        if ([Object conformsToProtocol:@protocol(Swimming)] && [Object respondsToSelector:@selector(swimming)]) {
//            [Object swimming];
//        }
//    }
    
//    dispatch_queue_t queue = dispatch_queue_create("queue", DISPATCH_QUEUE_CONCURRENT);
//    dispatch_async(queue, ^{
//        NSLog(@"%@", [NSThread currentThread]);
//        // timer停止了之后loop就退出了
//        NSTimer * __unused timer = [NSTimer scheduledTimerWithTimeInterval:0.1 repeats:NO block:^(NSTimer * _Nonnull timer) {
//            NSLog(@"run");
//        }];
//
//        CFRunLoopObserverRef observer = CFRunLoopObserverCreateWithHandler(CFAllocatorGetDefault(), kCFRunLoopAllActivities, YES, 0, ^(CFRunLoopObserverRef observer, CFRunLoopActivity activity) {
//            NSLog(@"监听loop发生改变 %zd", activity);
//        });
//        CFRunLoopAddObserver(CFRunLoopGetCurrent(), observer, kCFRunLoopDefaultMode);
//        CFRelease(observer);
//
//        // 子线程的loop需要手动开启
//        NSRunLoop *loop = [NSRunLoop currentRunLoop];
//        [loop run];
//
//        NSTimer *timer2 = [[NSTimer alloc] initWithFireDate:[NSDate dateWithTimeIntervalSinceNow:2] interval:2 repeats:YES block:^(NSTimer * _Nonnull timer) {
//            NSLog(@"再次开启Timer");
//        }];
//        [loop addTimer:timer2 forMode:NSDefaultRunLoopMode];
//
//        // 再次启动loop
//        [loop run];
//    });
    
    self.therad = [[NSThread alloc] initWithBlock:^{
        NSLog(@"%@", [NSThread currentThread]);
        NSLog(@"task1");
        NSRunLoop *currentLoop = [NSRunLoop currentRunLoop];
        [currentLoop addPort:[NSPort port] forMode:NSDefaultRunLoopMode];
        [currentLoop run];
    }];
    
    [self.therad start];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self performSelector:@selector(task2) onThread:self.therad withObject:nil waitUntilDone:YES];
    NSLog(@"test");
}

- (void)task2 {
    NSLog(@"%@", [NSThread currentThread]);
    NSLog(@"task2");
    
}


@end
