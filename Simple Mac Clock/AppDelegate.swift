//
//  AppDelegate.swift
//  Simple Mac Clock
//
//  Created by Sulthonul Adib on 31/03/20.
//  Copyright © 2020 Sulthonul Adib. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBarItem: NSStatusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    var timer: Timer? = nil
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        guard let statusButton = statusBarItem.button else { return }
        statusButton.title = Date.now.stringTimeWithSeconds
        
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(updateStatusText),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc
    func updateStatusText(_ sender: Timer) {
        guard let statusButton = statusBarItem.button else { return }
        statusButton.title = Date.now.stringTimeWithSeconds
        print(Date.now.stringTimeWithSeconds)
    }


}

