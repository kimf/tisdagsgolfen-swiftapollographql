import UIKit

class SeasonPickerController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var collectionView: UICollectionView!
    var seasons: NSArray! = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Säsonger"
        
        seasons = [2018, 2017, 2016, 2015, 2014]
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 120)
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.backgroundColor = UIColor.white
        self.view.addSubview(collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainViewController = MainViewController()
        mainViewController.title = "\(seasons[indexPath.row])"
        
        self.navigationController?.pushViewController(mainViewController, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return seasons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath)
                
        cell.backgroundColor = UIColor.orange
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 70, height: 100))
        label.center = CGPoint(x: 20, y: 20)
        label.textAlignment = .center
        label.text = "\(seasons[indexPath.row])"
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


