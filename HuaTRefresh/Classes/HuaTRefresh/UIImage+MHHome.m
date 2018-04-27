//
//  UIImage+MHHome.m
//  HuaTRefresh
//
//  Created by MiHu on 2018/4/27.
//

#import "UIImage+MHHome.h"

@implementation UIImage (MHHome)

/**
 获取图片
 
 @param imageName 图片的名字
 @param bundle bundel
 @param targetClass 调用的Class
 @return 返回图片
 */
+ (instancetype)ff_imagePathWithName:(NSString *)imageName bundle:(NSString *)bundle targetClass:(Class)targetClass{
    
    NSInteger scale = [[UIScreen mainScreen] scale];
    NSBundle *currentBundle = [NSBundle bundleForClass:targetClass];
    NSString *name = [NSString stringWithFormat:@"%@@%zdx",imageName,scale];
    NSString *dir = [NSString stringWithFormat:@"%@.bundle",bundle];
    NSString *path = [currentBundle pathForResource:name ofType:@"png" inDirectory:dir];
    return path ? [UIImage imageWithContentsOfFile:path] : nil;
    
}

@end
