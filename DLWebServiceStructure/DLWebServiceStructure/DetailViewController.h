//
//  DetailViewController.h
//  DLWebServiceStructure
//
//  Created by Durgesh Gupta on 6/26/15.
//  Copyright © 2015 Durgesh Gupta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

