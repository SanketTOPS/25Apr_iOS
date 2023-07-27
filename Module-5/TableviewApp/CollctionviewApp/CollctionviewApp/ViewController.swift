//
//  ViewController.swift
//  CollctionviewApp
//
//  Created by MAC03 on 27/07/23.
//

import UIKit

class ViewController: UIViewController {

    var data=[""]
    var img=[UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        data=["iOS","Android","Python","JAVA","PHP",".NET","C++","Angular","React","iOS","Android","Python","JAVA","PHP",".NET","C++","Angular","React","iOS","Android","Python","JAVA","PHP",".NET","C++","Angular","React"]
        img=[#imageLiteral(resourceName: "02"),#imageLiteral(resourceName: "09"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "04"),#imageLiteral(resourceName: "03"),#imageLiteral(resourceName: "05"),#imageLiteral(resourceName: "07"),#imageLiteral(resourceName: "08"),#imageLiteral(resourceName: "01"),#imageLiteral(resourceName: "02"),#imageLiteral(resourceName: "09"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "04"),#imageLiteral(resourceName: "03"),#imageLiteral(resourceName: "05"),#imageLiteral(resourceName: "07"),#imageLiteral(resourceName: "08"),#imageLiteral(resourceName: "01"),#imageLiteral(resourceName: "02"),#imageLiteral(resourceName: "09"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "04"),#imageLiteral(resourceName: "03"),#imageLiteral(resourceName: "05"),#imageLiteral(resourceName: "07"),#imageLiteral(resourceName: "08"),#imageLiteral(resourceName: "01")]
    }
}
extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell=CollectionViewCell()
        cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.cell_lbl.text=data[indexPath.row]
        cell.cell_img.image=img[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let alert=UIAlertController(title: "CollectionView", message:data[indexPath.row], preferredStyle: .alert)
        let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
        let more=UIAlertAction(title: "MORE", style: .destructive, handler:{ACTION in
            let secondVC=self.storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
            secondVC.m_lbl=self.data[indexPath.row]
            secondVC.m_img=self.img[indexPath.row]
            self.present(secondVC, animated: true, completion: nil)
        })
        alert.addAction(ok)
        alert.addAction(more)
        present(alert, animated: true, completion: nil)
    }
    
    
}
