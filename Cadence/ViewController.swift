//
//  ViewController.swift
//  Cadence
//
//  Created by John Gainfort Jr on 7/29/18.
//  Copyright © 2018 John G. Gainfort, Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var spotifyBtn: UIButton!

    var spAuth = SPTAuth.defaultInstance()!
    var session: SPTSession!
    var player: SPTAudioStreamingController?
    var loginUrl: URL?

    @IBAction func spotifyLoginBtnPressed(_ sender: Any) {
        if UIApplication.shared.canOpenURL(loginUrl!) {
            if spAuth.canHandle(spAuth.redirectURL) {
                // TODO: - build in error handling
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setup() {
        SPTAuth.defaultInstance().clientID = "a1a6af9fe43c45d7993625d29f712c41"
        SPTAuth.defaultInstance().redirectURL = URL(string: "Cadence://returnAfterLogin")
        SPTAuth.defaultInstance().requestedScopes = [SPTAuthStreamingScope, SPTAuthPlaylistReadPrivateScope, SPTAuthPlaylistModifyPublicScope, SPTAuthPlaylistModifyPrivateScope]
    }

}

