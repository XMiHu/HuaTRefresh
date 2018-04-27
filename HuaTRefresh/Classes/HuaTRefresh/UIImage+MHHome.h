//
//  UIImage+MHHome.h
//  HuaTRefresh
//
//  Created by MiHu on 2018/4/27.
//

#import <UIKit/UIKit.h>

@interface UIImage (MHHome)


/**
 获取图片的路径

 @param imageName 图片的名字
 @param bundle bundel
 @param targetClass 调用的Class
 @return 返回图片
 */
+ (instancetype)ff_imagePathWithName:(NSString *)imageName bundle:(NSString *)bundle targetClass:(Class)targetClass;

@end
