//
//  displayAllFiles.swift
//  week4day2
//
//  Created by JUNGMIN KIM on 2021/11/23.
//

import Foundation

func displayAllFiles(at path: String) {
    let fm = FileManager.default
    do {
        let items = try fm.contentsOfDirectory(atPath: path)

        for item in items {
            print("\(item)")
        }
    } catch {
        // failed to read directory – bad permissions, perhaps?
    }
}
