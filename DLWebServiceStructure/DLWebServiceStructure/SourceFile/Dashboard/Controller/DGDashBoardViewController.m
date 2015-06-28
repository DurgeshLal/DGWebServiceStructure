//
//  DashboardViewController.m
//  DLWebServiceStructure
//
//  Created by Durgesh Gupta on 6/28/15.
//  Copyright © 2015 Durgesh Gupta. All rights reserved.
//

#import "DGDashBoardViewController.h"
#import "DGDashBoardTableCell.h"

static NSString *CellIdentifier = @"reuseID";

@interface DGDashBoardViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation DGDashBoardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //Register Table Cell Class
    
    [self.tableView registerClass:[DGDashBoardTableCell class] forCellReuseIdentifier:@"Reuse"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma Mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    DGDashBoardTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.lblWeather.text = @"DummyLabel";
    return cell;
}

#pragma Mark IBAction
- (IBAction)clearButtonTapped:(id)sender {
}

- (IBAction)apiButtonTapped:(id)sender {
}

- (IBAction)jsonButtonTapped:(id)sender {
}

- (IBAction)xmlButtonTapped:(id)sender {
}
@end
