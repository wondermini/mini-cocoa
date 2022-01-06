//
//  ViewController.swift
//  WaitingNumberApp
//
//  Created by JUNGMIN KIM on 2021/11/17.
//

import UIKit

class ViewController: UIViewController {
    var totalWaitingNumber = 0
    let maxWaitingNumber = 20

    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var completionButton: UIButton!
    @IBOutlet var waitingButton: UIButton!
    @IBOutlet var waitingNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setProgressBar()
        waitingNumberLabel.text = "\(totalWaitingNumber) 명"
    }

    @IBAction func pushWaiting(_ sender: UIButton) {
        totalWaitingNumber += 1
        waitingNumberLabel.text = "\(totalWaitingNumber) 명"
        upperLimitPushWaiting()
        lowerLimitPushCompletion()
        setProgressBar()
    }

    @IBAction func pushCompletion(_ sender: UIButton) {
        totalWaitingNumber -= 1
        waitingNumberLabel.text = "\(totalWaitingNumber) 명"
        upperLimitPushWaiting()
        lowerLimitPushCompletion()
        setProgressBar()
    }

    func upperLimitPushWaiting() {
        if totalWaitingNumber == maxWaitingNumber {
            waitingButton.isEnabled = false
            waitingNumberLabel.textColor = UIColor.red
        } else {
            waitingButton.isEnabled = true
            waitingNumberLabel.textColor = UIColor.black
        }
    }

    func lowerLimitPushCompletion() {
        if totalWaitingNumber == 0 {
            completionButton.isEnabled = false
        } else {
            completionButton.isEnabled = true
        }
    }

    func setProgressBar() {
        progressBar.setProgress(Float(totalWaitingNumber) / Float(maxWaitingNumber), animated: true)
    }
}
