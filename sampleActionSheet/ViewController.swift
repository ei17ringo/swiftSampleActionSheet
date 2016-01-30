//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by Eriko Ichinohe on 2016/01/29.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapBtn(sender: UIButton) {
        
        
        //アクションシートを作る
        var alertController = UIAlertController(title: "行くアクティビティ", message: "どれにする？", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
       
        // アクション１ボタンを追加
        alertController.addAction(UIAlertAction(
            title: "ヨガ",
            style: .Default,
            handler: { action in self.myAction("ヨガ") } ))
        // アクション２ボタンを追加
        alertController.addAction(UIAlertAction(
            title: "バスケ",
            style: .Default,
            handler: { action in self.myAction("バスケ") } ))
        
        // 削除ボタンを追加
        alertController.addAction(UIAlertAction(
            title: "ムエタイ",
            style: .Destructive,
            handler: { action in self.myDelete() } ))
        // キャンセルボタンを追加
        alertController.addAction(UIAlertAction(
            title: "今日はやめとく",
            style: .Cancel,
            handler: { action in self.myCancel() } ))
        // アラートを表示する
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    // アクションが選択されたとき呼ばれるメソッド
    func myAction(var activitiy:String!) {
        print("アクション")
        myLabel.text = "\(activitiy)にいこう！"
    }
    // 削除が選択されたとき呼ばれるメソッド
    func myDelete() {
        print("削除")
        myLabel.text = "ムエタイ頑張ろ！"
    }
    // キャンセルが選択されたとき呼ばれるメソッド
    func myCancel() {
        print("キャンセル")
        myLabel.text = "明日は行こう！"
    }


    
}




