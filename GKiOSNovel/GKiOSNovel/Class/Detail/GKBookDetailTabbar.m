//
//  GKBookDetailTabbar.m
//  GKiOSNovel
//
//  Created by wangws1990 on 2019/6/14.
//  Copyright © 2019 wangws1990. All rights reserved.
//

#import "GKBookDetailTabbar.h"

@implementation GKBookDetailTabbar
- (void)awakeFromNib{
    [super awakeFromNib];
    [self.addBtn setTitle:@"放入书架" forState:UIControlStateNormal];
    [self.addBtn setTitle:@"放入书架" forState:UIControlStateNormal|UIControlStateHighlighted];
    
    [self.addBtn setTitle:@"已在书架中" forState:UIControlStateSelected];
    [self.addBtn setTitle:@"已在书架中" forState:UIControlStateSelected|UIControlStateHighlighted];
}
- (void)setCollection:(BOOL)collection{
    if (_collection != collection) {
        _collection = collection;
        self.addBtn.selected = collection;
    }
}
@end
