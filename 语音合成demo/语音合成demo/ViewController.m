//
//  ViewController.m
//  语音合成demo
//
//  Created by 王虎 on 16/8/26.
//  Copyright © 2016年 王虎. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IFlyRecognizerView      *_iflyRecognizerView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化语音识别控件
    _iflyRecognizerView = [[IFlyRecognizerView alloc] initWithCenter:self.view.center];
    _iflyRecognizerView.delegate = self;
    [_iflyRecognizerView setParameter: @"iat" forKey: [IFlySpeechConstant IFLY_DOMAIN]];
    //asr_audio_path保存录音文件名，如不再需要，设置value为nil表示取消，默认目录是documents
    [_iflyRecognizerView setParameter:@"asrview.pcm " forKey:[IFlySpeechConstant ASR_AUDIO_PATH]];
    //启动识别服务
    [_iflyRecognizerView start];
    /*识别结果返回代理
     @param resultArray 识别结果
     @ param isLast 表示是否最后一次结果 
     */
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)onResult: (NSArray *)resultArray isLast:(BOOL) isLast
{
}
/*识别会话错误返回代理
 @ param  error 错误码
 */
- (void)onError: (IFlySpeechError *) error
{
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
