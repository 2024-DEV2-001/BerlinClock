import Foundation

class TickerService{
    @Published var datePublisher = Date()
    
    private var timer = Timer()
    
    func start() {
        guard let currentDatePlusSecond = DateHelper.getNextSecondFromNow() else { return }
        
        timer = Timer(fire: currentDatePlusSecond, interval: 1, repeats: true) { [weak self] _ in
            self?.datePublisher = Date()
        }
        RunLoop.current.add(timer, forMode: .common)
    }
    
    func invalidate() {
        timer.invalidate()
    }
}
