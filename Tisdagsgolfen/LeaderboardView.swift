import UIKit

class LeaderboardView: UIScrollView {
    
    override init(frame: CGRect) {
        let contentWidth = frame.size.width - 40
        let height = frame.size.height - 20
        
        super.init(frame: frame)

        
        self.contentSize = CGSize(width: (contentWidth * 2) + 30, height: height)
        
        self.isScrollEnabled = true
        self.isPagingEnabled = true
        self.alwaysBounceHorizontal = true
    

        let totalLeaderboard = UIView(frame: CGRect(x: 10, y: 10, width: contentWidth, height: height))
        totalLeaderboard.backgroundColor = UIColor.white
        totalLeaderboard.layer.cornerRadius = 5;
        totalLeaderboard.layer.masksToBounds = true;
        addSubview(totalLeaderboard)
        
        let weekLeaderboard = UIView(frame: CGRect(x: contentWidth + 20, y: 10, width: contentWidth, height: height))
        weekLeaderboard.backgroundColor = UIColor.white
        weekLeaderboard.layer.cornerRadius = 5;
        weekLeaderboard.layer.masksToBounds = true;
        addSubview(weekLeaderboard)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


