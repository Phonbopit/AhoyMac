//
//  AppDelegate.swift
//  AhoyMac
//
//  Created by Chai Phonbopit on 2/10/18.
//  Copyright © 2018 Chai Phonbopit. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        if let button = statusItem.button {
            button.image = NSImage(named: NSImage.Name("ahoy-logo"))
            button.image?.size.width = 16
            button.image?.size.height = 16
            button.action = #selector(printText(_:))
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @objc func printText(_ sender: Any?) {
        let text = "Ahoy! Mac OS Application"
        let author = "Chai Phonbopit"
        
        print("\(text) — \(author)")
    }

}

