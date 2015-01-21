import Foundation

class MainScene: CCNode {
    
    // Audio
    let audio:OALSimpleAudio = OALSimpleAudio.sharedInstance()
    
    override func onEnter() {
        
        // タッチ処理を検出
        self.userInteractionEnabled = true
        
        super.onEnter()
    }
    
    // タッチで音声を出力
    override func touchBegan(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        
        println("touch!!")
        
        // 再生
        self.audio.playEffect("switch1.mp3")
    }
}
