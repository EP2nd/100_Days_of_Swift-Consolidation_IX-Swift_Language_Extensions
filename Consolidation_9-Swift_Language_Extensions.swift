import UIKit

// MARK: - 1)

extension UIView {
    func bounceOut(duration: TimeInterval) {
        UIView.animate(withDuration: duration, animations: {
            self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        })
    }
}

// Test:
let view = UIView()
view.backgroundColor = .systemBlue
view.bounceOut(duration: 3)

// MARK: - 2)

extension Int {
    func times(_ closure: () -> Void) {
        guard self > 0 else { return }
        
        for _ in 1...self {
            closure()
        }
    }
}

// Test:
5.times { print("Hello!") }

// MARK: - 3)
    
extension Array where Element: Comparable {
    mutating func remove(item: Element) {
        guard self.contains(item) else { return }
        if let location = self.firstIndex(of: item) {
            self.remove(at: location)
        }
    }
}

// Test:
var numbers = [1, 2, 3, 4, 5, 6, 7, 7, 8, 9]
numbers.remove(item: 7)
