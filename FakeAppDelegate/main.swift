//
//  main.swift
//  FakeAppDelegate
//
//  Created by Paul Lee on 2021/9/5.
//

import UIKit
#if DEBUG
UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, NSStringFromClass(AppDelegateForDebug.self))

#elseif STAGE
UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, NSStringFromClass(AppDelegate.self))

#else
UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, NSStringFromClass(AppDelegate.self))

#endif

