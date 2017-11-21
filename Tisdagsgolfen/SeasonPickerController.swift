import UIKit
import Apollo

class SeasonPickerController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var collectionView: UICollectionView!
    var seasons: [InitialQueryQuery.Data.Season] = []
    
    convenience init(seasonsFromApi: [InitialQueryQuery.Data.Season]) {
        self.init()
        seasons = seasonsFromApi
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Säsonger"
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: self.view.frame.width-20, height: 200)
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.backgroundColor = UIColor.white
        self.view.addSubview(collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainViewController = MainViewController(seasonFromApi: seasons[indexPath.row])
        mainViewController.title = "\(seasons[indexPath.row].name)"
        
        self.navigationController?.pushViewController(mainViewController, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return seasons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath)
        cell.backgroundColor = UIColor.lightGray
        cell.backgroundView = UIImageView()
        for item in cell.contentView.subviews {
            item.removeFromSuperview()
        }
        
        
        let season = seasons[indexPath.row]
        
        let frame = CGRect(x: 0, y: 0, width: self.view.frame.width-20, height: 200)
    
        if (season.photo != nil) {
            let imageView : UIImageView = {
                let iv = UIImageView(frame: frame)
                iv.downloadedFrom(link: season.photo!)
                return iv
            }()
            
            cell.backgroundView = imageView
        } else {
            cell.backgroundColor = UIColor.orange
        }
    
        
        let label = UILabel(frame: frame)
        label.textAlignment = .center
        label.text = "\(season.name)"
        label.textColor = UIColor.white
        label.adjustsFontSizeToFitWidth = true
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


