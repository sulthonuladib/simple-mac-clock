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

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        guard let statusButton = statusBarItem.button else { return }
        statusButton.title = "Simple Mac Clock"
        
    }


}

