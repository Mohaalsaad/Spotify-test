//
//  MyplayFunction.swift
//  Spotify
//
//  Created by mohammed alsaad on 20/05/2023.
//

import Foundation
import AVFAudio
import AVFoundation
import UIKit

var play : AVAudioPlayer!
var widt : CGFloat = 12
func playSong(){
  let url = Bundle.main.url(forResource: "fisrtSong", withExtension: "mp3")

  guard url != nil else{
    return
  }
  do{
    play = try AVAudioPlayer(contentsOf: url!)
    play.play()
    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in

      if play.isPlaying{

        let screen = UIScreen.main.bounds.width - 30

        let value = play.currentTime / play.duration

        widt = screen * CGFloat(value)
      }

    }
  }catch{
    print("error")
  }
  return


}
