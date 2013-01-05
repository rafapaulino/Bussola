//
//  PrincipalViewController.h
//  Bussola
//
//  Created by Rafael Brigagão Paulino on 17/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface PrincipalViewController : UIViewController <CLLocationManagerDelegate>

@property (nonatomic, weak) IBOutlet UIImageView *agulha;
@end
