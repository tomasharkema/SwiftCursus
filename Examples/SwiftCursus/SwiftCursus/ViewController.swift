//
//  ViewController.swift
//  SwiftCursus
//
//  Created by Tomas Harkema on 25-10-15.
//  Copyright © 2015 Tomas Harkema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var timer: NSTimer?
  var counter = 0

  @IBOutlet weak var label: UILabel!

  func startTimer() {
    counter = 11

    timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "count:", userInfo: nil, repeats: true)
    count(timer!)
  }

  func count(timer: NSTimer) {
    counter--
    label.text = "\(counter)"
    if counter < 1 {
      stopTimer()
    }
  }

  func stopTimer() {
    timer?.invalidate()
    timer = nil
  }

  @IBAction func startPressed(sender: AnyObject) {
    startTimer()
  }

  @IBAction func stopPressed(sender: AnyObject) {
    stopTimer()
  }

}

