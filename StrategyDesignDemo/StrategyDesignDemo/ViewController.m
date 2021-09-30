//
//  ViewController.m
//  StrategyDesignDemo
//
//  Created by Sharker on 2021/9/30.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import <LMJDropdownMenu/LMJDropdownMenu.h>
#import "ChooseStrategyManager.h"

@interface TableViewItemCell : UITableViewCell
@property (nonatomic, strong) UILabel *itemDecLabel;
- (void)setItemDecLabelTitle:(NSString *)title;
@end

@implementation TableViewItemCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupContentUI];
    }
    return self;
}

- (void)setupContentUI {
    [self.contentView addSubview:self.itemDecLabel];
    [self.itemDecLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(0);
    }];
}

- (void)setItemDecLabelTitle:(NSString *)title {
    if (title.length > 0) {
        self.itemDecLabel.text = title;
    }
}

- (UILabel *)itemDecLabel {
    if (!_itemDecLabel) {
        _itemDecLabel = [UILabel new];
        _itemDecLabel.font = [UIFont systemFontOfSize:14];
        _itemDecLabel.textColor = [UIColor blackColor];
        _itemDecLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _itemDecLabel;
}

@end
static NSUInteger const kCountTextFieldTag = 100001;
static NSUInteger const kPriceTextFieldTag = 100002;

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, LMJDropdownMenuDataSource>
{
    LMJDropdownMenu *_menu;
    NSArray *_optionTitles;
    double _totalPriceNum;
    NSUInteger _selectedStrategyIndex;
}
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIButton *settleBtn;
@property (nonatomic, strong) UIButton *clearBtn;
@property (nonatomic, strong) UITextField *itemCountTextField;
@property (nonatomic, strong) UITextField *itemPriceTextField;
@property (nonatomic, strong) UILabel *totalPriceLabel;
@property (nonatomic, strong) ChooseStrategyManager *strategyManager;
@property (nonatomic, strong) NSMutableArray<NSString *> *itemsTitle;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self configData];
    [self configContentUI];
    [self setupContentUI];
    [self setContentUIData];
}

- (void)configData {
    self.strategyManager = [[ChooseStrategyManager alloc] init];
}

- (void)configContentUI {
    _menu = [[LMJDropdownMenu alloc] init];
    _menu.dataSource = self;
    
    _menu.layer.borderColor  = [UIColor whiteColor].CGColor;
    _menu.layer.borderWidth  = 1;
    _menu.layer.cornerRadius = 3;
    
    _menu.title           = @"Please Select";
    _menu.titleBgColor    = [UIColor colorWithRed:64/255.f green:151/255.f blue:255/255.f alpha:1];
    _menu.titleFont       = [UIFont boldSystemFontOfSize:15];
    _menu.titleColor      = [UIColor whiteColor];
    _menu.titleAlignment  = NSTextAlignmentLeft;
    _menu.titleEdgeInsets = UIEdgeInsetsMake(0, 15, 0, 0);
    
    
    _menu.optionBgColor       = [UIColor colorWithRed:64/255.f green:151/255.f blue:255/255.f alpha:0.5];
    _menu.optionFont          = [UIFont systemFontOfSize:13];
    _menu.optionTextColor     = [UIColor blackColor];
    _menu.optionTextAlignment = NSTextAlignmentLeft;
    _menu.optionNumberOfLines = 0;
    _menu.optionLineColor     = [UIColor whiteColor];
    _menu.optionIconSize      = CGSizeMake(15, 15);
    
    // 初始化_optionTitles
    _optionTitles = [self.strategyManager strartegyNames];
    
    // 监听total变化
    
}

- (void)setupContentUI {
    [self.view addSubview:self.itemCountTextField];
    [self.itemCountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(40);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(50);
    }];
    
    [self.view addSubview:self.itemPriceTextField];
    [self.itemPriceTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.itemCountTextField);
        make.top.equalTo(self.itemCountTextField.mas_bottom).offset(20);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(50);
    }];
    
    [self.view addSubview:self.settleBtn];
    [self.settleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.left.mas_equalTo(self.itemCountTextField.mas_right).offset(20);
        make.top.mas_equalTo(self.itemCountTextField.mas_top);
    }];
    
    [self.view addSubview:self.clearBtn];
    [self.clearBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.settleBtn);
        make.top.mas_equalTo(self.settleBtn.mas_bottom).offset(20);
        make.width.height.mas_equalTo(40);
    }];
    
    [self.view addSubview:_menu];
    [_menu mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.itemPriceTextField.mas_bottom).offset(20);
        make.left.mas_equalTo(self.itemPriceTextField);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(40);
    }];
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_menu.mas_bottom).offset(50);
        make.left.mas_equalTo(_menu.mas_left);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(200);
    }];
    
    [self.view addSubview:self.totalPriceLabel];
    [self.totalPriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.tableView);
        make.top.mas_equalTo(self.tableView.mas_bottom).offset(20);
    }];
}

- (void)setContentUIData {
    self.totalPriceLabel.text = [NSString stringWithFormat:@"%f", _totalPriceNum];
}

- (void)settleBtnClick:(UIButton *)sender {
    [self.strategyManager chooseStarategyWithStrategy:_selectedStrategyIndex];
    double price = self.itemCountTextField.text.doubleValue * self.itemPriceTextField.text.doubleValue;
    NSNumber *resultPrice = [self.strategyManager acceptCrash:[NSNumber numberWithDouble:price]];
    _totalPriceNum += resultPrice.doubleValue;
    NSString *itemTitle = [NSString stringWithFormat:@"个数:%@ 单价:%@ 优惠:%@ 总额: %f", self.itemCountTextField.text, self.itemPriceTextField.text, _optionTitles[_selectedStrategyIndex], resultPrice.doubleValue];
    [self.itemsTitle addObject:itemTitle];
    [self.tableView reloadData];
}

- (void)clearBtnClick:(UIButton *)sender {
    self.itemPriceTextField.text = @"";
    if ([self.itemPriceTextField isFirstResponder]) {
        [self.itemPriceTextField resignFirstResponder];
    }
    self.itemCountTextField.text = @"";
    if ([self.itemCountTextField isFirstResponder]) {
        [self.itemCountTextField resignFirstResponder];
    }
}

#pragma mark - tableViewDataSource & Delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewItemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[TableViewItemCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    [cell setItemDecLabelTitle:self.itemsTitle[indexPath.item]];
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.itemsTitle.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

#pragma mark - menuDelegate

- (NSUInteger)numberOfOptionsInDropdownMenu:(LMJDropdownMenu *)menu{
    return _optionTitles.count;
}
- (CGFloat)dropdownMenu:(LMJDropdownMenu *)menu heightForOptionAtIndex:(NSUInteger)index{
    return 40;
}
- (NSString *)dropdownMenu:(LMJDropdownMenu *)menu titleForOptionAtIndex:(NSUInteger)index{
    _selectedStrategyIndex = index;
    return _optionTitles[index];
}

#pragma mark - lazy
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

- (UIButton *)settleBtn {
    if (!_settleBtn) {
        _settleBtn = [[UIButton alloc] init];
        [_settleBtn setTitle:@"确定" forState:UIControlStateNormal];
        [_settleBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_settleBtn setBackgroundColor:[UIColor cyanColor]];
        [_settleBtn.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [_settleBtn addTarget:self action:@selector(settleBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _settleBtn;
}

- (UIButton *)clearBtn {
    if (!_clearBtn) {
        _clearBtn = [[UIButton alloc] init];
        [_clearBtn setTitle:@"重置" forState:UIControlStateNormal];
        [_clearBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_clearBtn setBackgroundColor:[UIColor cyanColor]];
        [_clearBtn.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [_clearBtn addTarget:self action:@selector(clearBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _clearBtn;
}

- (UITextField *)itemCountTextField {
    if (!_itemCountTextField) {
        _itemCountTextField = [[UITextField alloc] init];
        _itemCountTextField.borderStyle = UITextBorderStyleRoundedRect;
        _itemCountTextField.placeholder = @"请输入个数";
        _itemCountTextField.tag = kCountTextFieldTag;
    }
    return _itemCountTextField;
}

- (UITextField *)itemPriceTextField {
    if (!_itemPriceTextField) {
        _itemPriceTextField = [[UITextField alloc] init];
        _itemPriceTextField.borderStyle = UITextBorderStyleRoundedRect;
        _itemPriceTextField.placeholder = @"请输入单价";
        _itemPriceTextField.tag = kPriceTextFieldTag;
    }
    return _itemPriceTextField;
}

- (UILabel *)totalPriceLabel {
    if (!_totalPriceLabel) {
        _totalPriceLabel = [[UILabel alloc] init];
        _totalPriceLabel.font = [UIFont systemFontOfSize:18];
        _totalPriceLabel.textColor = [UIColor redColor];
    }
    return _totalPriceLabel;
}

- (NSMutableArray<NSString *> *)itemsTitle {
    if (!_itemsTitle) {
        _itemsTitle = [NSMutableArray new];
    }
    return _itemsTitle;
}





@end
