import UIKit

class MainViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    var displayView: UIView!
    var weekView: UICollectionView!
    var season: InitialQueryQuery.Data.Season!
    var weeks: NSArray! = []
    
    convenience init(seasonFromApi: InitialQueryQuery.Data.Season!) {
        self.init()
        season = seasonFromApi
        weeks = season.eventIds! as NSArray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let playButton = UIBarButtonItem(title: "SPELA GOLF", style: .plain, target: Any?.self, action: nil)
        self.navigationItem.rightBarButtonItem = playButton
        
        displayView = UIView(frame: self.view.frame)
        displayView.backgroundColor = UIColor.lightGray
        self.view.addSubview(displayView)
        
        let top = navigationController?.navigationBar.frame.size.height
        
        if (weeks.count > 0) {
            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            layout.sectionInset = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
            layout.itemSize = CGSize(width: 40, height: 40)
            
            weekView = UICollectionView(frame: CGRect(x: 0, y: top!, width: self.view.frame.size.width, height: 80), collectionViewLayout: layout)
            weekView.dataSource = self
            weekView.delegate = self
            weekView.isPagingEnabled = true
            weekView.showsHorizontalScrollIndicator = false
            weekView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
            weekView.backgroundColor = UIColor.gray
            displayView.addSubview(weekView)
            
            let topPlus = top! + 80
            let weekHeader = WeekHeader(frame: CGRect(x: 0, y: topPlus, width: self.view.frame.size.width, height: 60))
            displayView.addSubview(weekHeader)
            
            let topPlusPlus = topPlus + 60
            let leaderboardView = LeaderboardView(frame: CGRect(x: 0, y: topPlusPlus, width: self.view.frame.size.width, height: self.view.frame.size.height - topPlusPlus))
            displayView.addSubview(leaderboardView)
        } else {
            let imageView : UIImageView = {
                let iv = UIImageView(frame: CGRect(x: 0, y: top!, width: self.view.frame.size.width, height: self.view.frame.size.height - top!))
                iv.image = UIImage(named: "emptystate.png")
                iv.contentMode = .scaleAspectFill
                return iv
            }()
            
            displayView.addSubview(imageView)
        }
        
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return weeks.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath)
        cell.backgroundColor = UIColor.orange
        cell.layer.cornerRadius = cell.frame.width/2
    
        
        for lbl in cell.contentView.subviews {
            if (lbl is UILabel) {
                lbl.removeFromSuperview()
            }
        }

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        label.center = CGPoint(x: 20, y: 20)
        label.layer.cornerRadius = label.frame.width/2
        label.textAlignment = .center
        label.text = "\(weeks[indexPath.row])"
        label.tag = indexPath.row
        cell.contentView.addSubview(label)

        return cell
    }


    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell: UICollectionViewCell? = collectionView.cellForItem(at: indexPath)
        //set color with animation
        UIView.animate(withDuration: 0.1, delay: 0, options: .allowUserInteraction, animations: {() -> Void in
            cell?.backgroundColor = UIColor(red: 232 / 255.0, green: 232 / 255.0, blue: 232 / 255.0, alpha: 1)
        }) { _ in }
    }
    
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell: UICollectionViewCell? = collectionView.cellForItem(at: indexPath)
        //set color with animation
        UIView.animate(withDuration: 0.1, delay: 0, options: .allowUserInteraction, animations: {() -> Void in
            cell?.backgroundColor = UIColor.orange
        }) { _ in }
    }


    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
