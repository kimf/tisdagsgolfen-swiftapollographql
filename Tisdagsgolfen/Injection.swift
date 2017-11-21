//import UIKit
//
//extension UIViewController {
//    
//    #if DEBUG //1
//    @objc func injected() {
//        for subview in self.view.subviews {
//            subview.removeFromSuperview()
//        }
//        
//        viewDidLoad()
//    }
//    #endif
//}



//// IF ANIMATIONG THINGS WITH CALayer
//import UIKit
//
//extension UIViewController {
//
//    #if DEBUG
//    @objc func injected() {
//
//        for subview in self.view.subviews {
//            subview.removeFromSuperview()
//        }
//        if let sublayers = self.view.layer.sublayers {
//            for sublayer in sublayers {
//                sublayer.removeFromSuperlayer()
//            }
//        }
//
//        viewDidLoad()
//    }
//    #endif
//}

