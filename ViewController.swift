//
//  ViewController.swift
//  protection-ios
//
//  Created by mateus on 23/05/19.
//  Copyright © 2019 mateus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func creatAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIA)
    
    }
    
    
    @IBAction func detect_jailbreak(){
         let possible_jailbreak = ["/Applications/Cydia.app", "/Applications/blackra1n.app", "/Applications/FakeCarrier.app", "/Applications/Icy.app", "/Applications/IntelliScreen.app", "/Applications/MxTube.app", "/Applications/RockApp.app", "/Applications/SBSetttings.app", "/Applications/WinterBoard.app", "/private/var/lib/apt/", "/private/var/lib/cydia/", "/private/var/mobileLibrary/SBSettingsThemes/", "/private/var/tmp/cydia.log", "/private/var/stash/", "/usr/libexec/cydia/", "/usr/bin/sshd", "/usr/sbin/sshd", "/usr/libexec/cydia/", "/usr/libexec/sftp-server", "/Systetem/Library/LaunchDaemons/com.ikey.bbot.plist", "/System/Library/LaunchDaemons/com.saurik.Cydia.Startup.plist", "/Library/MobileSubstrate/MobileSubstrate.dylib", "/var/cache/apt/", "/var/lib/apt/", "/var/lib/cydia/", "/var/log/syslog", "/private/var/cache/apt/", "/private/var/lib/apt/", "/private/var/lib/cydia/", "/private/var/log/syslog", "/bin/bash", "/bin/sh", "/private/etc/apt/", "/etc/apt/", "/private/etc/ssh/sshd_config", "/etc/ssh/sshd_config", "/usr/libexec/ssh-keysign", "/Applications/Snoop-itConfig.app", "/Library/MobileSubstrate/DynamicLibraries/xCon.dylib", "/private/etc/dpkg/origins/debian", "/etc/apt", "/usr/bin/ssh", "/var/cache/apt", "/var/lib/apt", "/var/lib/cydia", "/var/tmp/cydia.log"]
        
        let file_cat = FileManager()
        for i in possible_jailbreak {
             if file_cat.fileExists(atPath: i){
                print("Possible Jailbreak Detected");
             }
             else {
                    print ("Jailbreak no detected");
             }
            }
        
    }
}

