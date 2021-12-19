//
//  ViewController.m
//  DecoratorDemo
//
//  Created by Sharker on 2021/10/11.
//

#import "ViewController.h"
#import "Person.h"
#import "TShirts.h"
#import "BigTrouser.h"
#import "Sneaker.h"
#import "LeatherShoes.h"
#import "Tie.h"
#import "Suit.h"

#import "Transfrom.h"
#import "Car.h"
#import "Changer.h"
#import "Robot.h"
#import "AirPlane.h"


@interface ViewController ()

@end

@implementation ViewController
/*
 装饰模式 使用外部类来为类增加新的职责功能 就增加功能来说装饰模式比生成子类更加灵活
 为Person类增加 新的创衣服的职责 使用Finery来抽象 装饰类 使用TShit等具体的装饰类 来增加具体的操作
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    // TransformMan
    Transfrom *transfrom = [[Car alloc] init];
    transfrom.name = @"擎天柱";
    Robot *robot = [[Robot alloc] init];
    AirPlane *airPlane = [[AirPlane alloc] init];
    [robot changeTransformman:transfrom];
    [airPlane changeTransformman:robot];
    [airPlane move];
    
    
    // 装饰链
//    Person *xiaoming = [Person new];
//    xiaoming.name = @"小明";
//    NSLog(@"第一种装扮");
//    /* 创建具体的装饰类 */
//    Sneaker *sneaker = [Sneaker new];
//    BigTrouser *bigTrouser = [BigTrouser new];
//    TShirts *t = [TShirts new];
//    /* 装饰类装饰 可以替换顺序  连续去修饰 因为每个都是最终继承自 被修饰类 Component*/
//    [t decorator:xiaoming]; // t->component => xiaoming
//    [bigTrouser decorator:t]; // bigTrouser->component => t
//    [sneaker decorator:bigTrouser]; // sneaker->component => bigTrouser
//    // 展示 /*球鞋 大裤衩子 T恤衫*/
//    [sneaker show];

//
//    Person *xiaohong = [Person new];
//    xiaohong.name = @"小红";
//    NSLog(@"第二种装扮");
//    /* 创建具体的装饰类 */
//    Sneaker *sneaker1 = [Sneaker new];
//    BigTrouser *bigTrouser1 = [BigTrouser new];
//    TShirts *t1 = [TShirts new];
//    /* 装饰类装饰 可以替换顺序  连续去修饰 因为每个都是最终继承自 被修饰类 Component*/
//    [sneaker1 decorator:xiaohong];
//    [bigTrouser1 decorator:sneaker1];
//    [t1 decorator:bigTrouser1];
//    // 展示
//    [t1 show];
    
    
    
    
}


@end
