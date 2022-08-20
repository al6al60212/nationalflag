import UIKit
import SwiftUI
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        addNationalFlag()
    }
    func addNationalFlag(){
        let redView = UIView(frame: CGRect(x: 75, y: 200, width: 249, height: 166))
        redView.backgroundColor = UIColor(red: 210/255, green: 16/255, blue: 52/255, alpha: 1)
        view.addSubview(redView)
        
        let greenView = UIView(frame: CGRect(x: (redView.frame.width - 168) / 2, y: (redView.frame.height - 84) / 2, width: 168, height: 84))
        greenView.backgroundColor = UIColor(red: 0, green: 126/255, blue: 58/255, alpha: 1)
        redView.addSubview(greenView)
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 140, y: 56))
        path.addCurve(to: CGPoint(x: 140, y: 110), controlPoint1: CGPoint(x: 96, y: 51), controlPoint2: CGPoint(x: 96, y: 116))
        path.addCurve(to: CGPoint(x: 140, y: 56), controlPoint1: CGPoint(x: 110, y: 102), controlPoint2: CGPoint(x: 110, y: 62))
        let moonLayer = CAShapeLayer()
        moonLayer.path = path.cgPath
        moonLayer.lineWidth = 1
        moonLayer.strokeColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        moonLayer.fillColor = UIColor.white.cgColor
        redView.layer.addSublayer(moonLayer)
    }
    
        }
struct ViewControllerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> ViewController {
            ViewController()
        }
        
        func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        }
        
        typealias UIViewControllerType = ViewController
        
        
    }
    struct ViewController_Previews: PreviewProvider {
        static var previews: some View {
            ViewControllerView()
    }
}
