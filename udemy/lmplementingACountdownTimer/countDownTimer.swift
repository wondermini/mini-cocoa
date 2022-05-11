//
//  countDownTimer.swift
//  lmplementingACountdownTimer
//
//  Created by JUNGMIN KIM on 2022/05/02.
//

import Foundation

class MyTimer {
    var seconds = 60

    func sixtySecTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.seconds -= 1
            if self.seconds == 0 {
                print("Go!")
                timer.invalidate()
            } else {
                print(self.seconds)
            }
        }
    }


}
