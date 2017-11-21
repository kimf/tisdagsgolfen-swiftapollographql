import UIKit

class MainViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    var displayView: UIView!
    var weekView: UICollectionView!
    var weeks: NSArray! = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        displayView = UIView(frame: self.view.frame)
        displayView.backgroundColor = UIColor.white
        self.view.addSubview(displayView)
        
        weeks = [18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
        layout.itemSize = CGSize(width: 40, height: 40)
        
        
        let weekViewFrame = CGRect(x: 0, y: 120, width: self.view.frame.size.width, height: 60)
        weekView = UICollectionView(frame: weekViewFrame, collectionViewLayout: layout)
        weekView.dataSource = self
        weekView.delegate = self
        weekView.isPagingEnabled = true
        weekView.showsHorizontalScrollIndicator = false
        weekView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        weekView.backgroundColor = UIColor.gray
        displayView.addSubview(weekView)
        
        let playButton = UIBarButtonItem(title: "SPELA GOLF", style: .plain, target: Any?.self, action: nil)
        self.navigationItem.rightBarButtonItem = playButton
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return weeks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath)
        
        cell.backgroundColor = UIColor.green
        cell.layer.cornerRadius = cell.frame.width/2
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
        if let cell = collectionView.cellForItem(at: indexPath) {
            cell.contentView.backgroundColor = UIColor(white: 217.0/255.0, alpha: 1.0) // Apple default cell highlight color
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) {
            cell.contentView.backgroundColor = nil
        }
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

