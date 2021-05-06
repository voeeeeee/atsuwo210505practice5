//
//  ViewController.swift
//  practice5
//
//  Created by 竹辻篤志 on 2021/05/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var devidedNumber: UITextField!
    @IBOutlet private weak var devideNumber: UITextField!
    @IBOutlet private weak var resultNumber: UILabel!

    @IBAction private func calucrateButton(_ sender: Any) {
        if devidedNumber.text == ""{
            presentAlert(message: "割られる数を入力してください")
        } else if devideNumber.text == "" {
            presentAlert(message: "割る数を入力してください")
        } else if devideNumber.text == "0" {
            presentAlert(message: "0以外を入力してください")
        } else {
            var result: Double = 1.0
            let devide = Double(String(devideNumber.text ?? "")) ?? 0
            let devided = Double(String(devidedNumber.text ?? "")) ?? 0
            result = devided / devide
            resultNumber.text = String(result)
        }
    }

    private func presentAlert(message: String) {
        let alert: UIAlertController = UIAlertController(title: "課題5", message: message, preferredStyle: UIAlertController.Style.alert)

        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (_: UIAlertAction!) -> Void in
        })
        alert.addAction(defaultAction)
        present(alert, animated: true, completion: nil)
    }
}
