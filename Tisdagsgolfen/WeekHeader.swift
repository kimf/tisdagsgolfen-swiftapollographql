import UIKit

class WeekHeader: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        let course = "Nynäshamns GK: Berg-Dal"
        let date = "14 Aug"
        let scoringType = "slag"
        // let teamEvent = false
        
        self.backgroundColor = UIColor.black
        
        let courseLbl = PaddingLabel(frame: CGRect(x: 0, y: 0, width: 240, height: 20))
        courseLbl.text = "\(course)"
        courseLbl.textColor = UIColor.white
        courseLbl.adjustsFontSizeToFitWidth = true
        self.addSubview(courseLbl)
        
        
    
        let dateLbl = PaddingLabel(frame: CGRect(x: 0, y: 20, width: 240, height: 20))
        dateLbl.text = "\(scoringType) - \(date)"
        dateLbl.textColor = UIColor.white
        dateLbl.adjustsFontSizeToFitWidth = true
        self.addSubview(dateLbl)
        
    
        
        let beerBtn = UIButton(frame: CGRect(x: 260, y: 0, width: 40, height: 40))
        beerBtn.setTitle("🍻", for: .normal)
        beerBtn.showsTouchWhenHighlighted = true
        beerBtn.titleLabel!.font = UIFont(name: "MarkerFelt-Thin", size: 30)
        self.addSubview(beerBtn)
        
        let pointsBtn = UIButton(frame: CGRect(x: 300, y: 0, width: 40, height: 40))
        pointsBtn.setTitle("🎰", for: .normal)
        pointsBtn.showsTouchWhenHighlighted = true
        pointsBtn.titleLabel!.font = UIFont(name: "MarkerFelt-Thin", size: 30)
        self.addSubview(pointsBtn)
        
        let krBtn = UIButton(frame: CGRect(x: 340, y: 0, width: 40, height: 40))
        krBtn.setTitle("💸", for: .normal)
        krBtn.showsTouchWhenHighlighted = true
        krBtn.titleLabel!.font = UIFont(name: "MarkerFelt-Thin", size: 30)
        self.addSubview(krBtn)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

