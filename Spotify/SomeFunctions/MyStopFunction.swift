//
//  MyStopFunction.swift
//  Spotify
//
//  Created by mohammed alsaad on 20/05/2023.
//

import Foundation
import AVFAudio
import AVFoundation
import UIKit



func stopSong(){
  let url = Bundle.main.url(forResource: "fisrtSong", withExtension: "mp3")

  guard url != nil else{
    return
  }
  do{
    play = try AVAudioPlayer(contentsOf: url!)
    play.pause()
    
  }catch{
    print("error")
  }
  return
}
