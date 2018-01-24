//
//  UseCardIO.swift
//  TestProjFramework
//
//  Created by Mehta, Janki on 1/24/18.
//  Copyright © 2018 PayPal, Inc. All rights reserved.
//

import UIKit

class SettingsCardIOCaptureViewController: UIViewController, CardIOViewDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet var cardIOView: CardIOView!
    @IBOutlet weak var cancelButton: UIButton!
    
    
   override func viewDidLoad() {
        super.viewDidLoad()
        self.cardIOView.delegate = self
        self.cardIOView.scannedImageDuration = 0.0
        self.cardIOView.hideCardIOLogo = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        CardIOUtilities.preload()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func cardIOView(_ cardIOView: CardIOView!, didScanCard cardInfo: CardIOCreditCardInfo!) {
        if let cardInfo = cardInfo {
            //
        }
    }
    
}

