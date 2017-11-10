//
//  CustomNavigationBar.m
//  Project
//
//  Created by ziv on 2017/11/10.
//

#import "CustomNavigationBar.h"

@interface CustomNavigationBar ()
@property (nonatomic, assign) CGFloat navigationBarHeight;
@end

@implementation CustomNavigationBar

- (instancetype)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		self.navigationBarHeight = frame.size.height;
	}
	return self;
}

- (void)layoutSubviews {
	[super layoutSubviews];
	NSArray *classes = @[@"_UIBarBackground"];
	for (UIView *view in self.subviews) {
		if ([classes containsObject:NSStringFromClass([view class])]) {
			view.frame = CGRectMake(view.bounds.origin.x, view.bounds.origin.y, view.frame.size.width, self.navigationBarHeight);
		}
	}
}

- (void)setFrame:(CGRect)frame {
	[super setFrame:frame];
	self.navigationBarHeight = frame.size.height;
}

@end
