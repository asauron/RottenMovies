//
//  MovieCell.h
//  RottenMovies
//
//  Created by Abinaya Sarva on 10/16/14.
//  Copyright (c) 2014 Sarva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;

@end
