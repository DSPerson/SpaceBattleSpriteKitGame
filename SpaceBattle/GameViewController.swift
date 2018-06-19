//
//  GameViewController.swift
//  SpaceBattle
//
/*
 *  *** 游戏元素使用条款及注意事项 ***
 *
 *  游戏中的所有元素全部由iFIERO所原创(除注明引用之外)，包括人物、音乐、场景等;
 *  创作的初衷就是让更多的游戏爱好者可以在开发游戏中获得自豪感 -- 让手机游戏开发变得简单;
 *  秉着开源分享的原则,iFIERO发布的游戏都尽可能的易懂实用，并开放所有源码;
 *  任何使用者都可以使用游戏中的代码块，也可以进行拷贝、修改、更新、升级，无须再经过iFIERO的同意;
 *  但这并不表示可以任意复制、拆分其中的游戏元素:
 *  用于[商业目的]而不注明出处;
 *  用于[任何教学]而不注明出处;
 *  用于[游戏上架]而不注明出处；
 *  另外,iFIERO有商用授权游戏元素，获得iFIERO官方授权后，即无任何限制;
 *  请尊重帮助过你的iFIERO的知识产权，非常感谢;
 *
 *  Created by VANGO杨 && ANDREW陈
 *  Copyright © 2018 iFiero. All rights reserved.
 *  www.iFIERO.com
 *  iFIERO -- 让手机游戏开发变得简单
 *
 *  *** 以上使用条款及注意事项为iFIRO的保留元素,我们保留追究侵权的权利 ***
 */

/*  SpaceBattle 宇宙大战 在此游戏中您将获得如下技能：
 *  1、LaunchScreen       学习如何设置游戏启动画面;
 *  2、Scenes             学习如何切换不同的场景 主菜单+游戏场景+游戏结束场景;
 *  3、Accleroation       利用重力加速度 让飞船左右移动;
 *  4、Endless Background 无限循环背景;
 *  5、Scene Edit         直接使用可见即所得操作;
 *  6、UserDefaults       保存游戏分数、最高分;
 *  7、Random             利用可复用的随机函数生成Enemy;
 *  8、Background Music   如何添加背景音乐;
 *  9、Particle           粒子爆炸特效;
 */

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            
            if let scene = MainScene(fileNamed: "MainScene") {
                scene.size = CGSize(width: 1536, height: 2048)
                scene.scaleMode = .aspectFill
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
         
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
