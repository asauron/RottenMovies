//
//  MovieDetailViewController.m
//  RottenMovies
//
//  Created by Abinaya Sarva on 10/18/14.
//  Copyright (c) 2014 Sarva. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface MovieDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *posterFullView;

@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end

@implementation MovieDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = self.movie[@"title"];
    self.titleLabel.text = self.movie[@"title"];
    self.titleLabel.opaque = NO;
    self.titleLabel.textColor = [UIColor whiteColor];
    self.synopsisLabel.opaque = NO;
    self.synopsisLabel.textColor = [UIColor whiteColor];
    //self.titleLabel.backgroundColor = [UIColor whiteColor];
    self.synopsisLabel.text = self.movie[@"synopsis"];
    
    
    self.scrollView.contentSize = CGSizeMake(320,1000);
    self.posterFullView.layer.shadowRadius = 2.0;
    self.posterFullView.clipsToBounds = NO;
    NSString *imageString = [[self.movie valueForKeyPath:@"posters.thumbnail"] stringByReplacingOccurrencesOfString:@"_tmb" withString:@"_full"];
    UIImage *movieThumbnail = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[self.movie valueForKeyPath:@"posters.thumbnail"]]]];
    [self.posterFullView setImageWithURL:[NSURL URLWithString: imageString] placeholderImage:movieThumbnail];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
