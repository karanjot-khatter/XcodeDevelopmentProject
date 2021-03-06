//
//  BeatPattern.swift
//  WatchSimulator
//
//  Created on 10/18/14.
//  Copyright (c) 2014 Ben Morrow. All rights reserved.
//
//  Developed by: HappyWatch
//  http://happy.watch
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal with the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimers.
//  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimers in the documentation and/or other materials provided with the distribution.
//  Neither the names of HappyWatch, nor the names of its contributors may be used to endorse or promote products derived from this Software without specific prior written permission.
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS WITH THE SOFTWARE.

import UIKit

struct BeatPattern {
    var icon = "❤️"
    var description = "Mid-range"
    var status = "Nominal"
    var bpm: Int?
    var duration: Double? {
        get {
            if let intBpm = bpm {
               return 60.0 / Double(intBpm)
            } else {
                return nil
            }
        }
    }
    var image: UIImage? {
        get {
            return UIImage(named: (description + ".png").lowercaseString)
        }
    }
    init(){
        
    }
    init(icon: String, description: String, status: String, bpm: Int?){
        self.icon = icon
        self.description = description
        self.status = status
        self.bpm = bpm
    }
}