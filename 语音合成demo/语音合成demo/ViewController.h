//
//  ViewController.h
//  语音合成demo
//
//  Created by 王虎 on 16/8/26.
//  Copyright © 2016年 王虎. All rights reserved.
//

#import <UIKit/UIKit.h>
//不带界面的语音合成控件
#import "iflyMSC/iflyMSC.h"
@interface ViewController : UIViewController<IFlySpeechSynthesizerDelegate,IFlyRecognizerViewDelegate>


@end

