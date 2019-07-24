//
//  ViewController.swift
//  HWshoppinglist
//
//  Created by Daniel on 2019/7/20.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var watchLabel: UILabel!
    
    @IBOutlet weak var tvLabel: UILabel!
    @IBOutlet weak var iphoneLabel: UILabel!
    @IBOutlet weak var miniLabel: UILabel!
    @IBOutlet weak var macLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var watchStepper: UIStepper!
    @IBOutlet weak var tvStepper: UIStepper!
    @IBOutlet weak var iphoneStepper: UIStepper!
    @IBOutlet weak var miniStepper: UIStepper!
    @IBOutlet weak var macStepper: UIStepper!
    var watchtotal = 0
    var tvtotal = 0
    var iphonetotal = 0
    var minitotal = 0
    var mactotal = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalLabel.text! = "\(0)"
        watchLabel.text! = "\(0)"
        tvLabel.text! = "\(0)"
        iphoneLabel.text! = "\(0)"
        macLabel.text! = "\(0)"
        miniLabel.text! = "\(0)"
    }
    @IBAction func watchStepper(_ sender: Any) {
        let watchno = Int(watchStepper.value)
        watchLabel.text! = "\(watchno)"
        watchtotal = watchno * 2500
        totalLabel.text! = "\(watchtotal + tvtotal + iphonetotal + minitotal + mactotal)"
    }
    @IBAction func tvStepper(_ sender: Any) {
        let tvno = Int(tvStepper.value)
        tvLabel.text! = "\(tvno)"
        tvtotal = tvno * 3500
        totalLabel.text! = "\(watchtotal + tvtotal + iphonetotal + minitotal + mactotal)"
    }
    
    @IBAction func iphoneStepper(_ sender: Any) {
        let iphoneno = Int(iphoneStepper.value)
        iphoneLabel.text! = "\(iphoneno)"
        iphonetotal = iphoneno * 12500
        totalLabel.text! = "\(watchtotal + tvtotal + iphonetotal + minitotal + mactotal)"
    }
    
    @IBAction func miniStepper(_ sender: Any) {
        let minino = Int(miniStepper.value)
        miniLabel.text! = "\(minino)"
        minitotal = minino * 12500
        totalLabel.text! = "\(watchtotal + tvtotal + iphonetotal + minitotal + mactotal)"
    }
    @IBAction func macStepper(_ sender: Any) {
        let macno = Int(macStepper.value)
        macLabel.text! = "\(macno)"
        mactotal = macno * 22500
        totalLabel.text! = "\(watchtotal + tvtotal + iphonetotal + minitotal + mactotal)"
    }
    
}

