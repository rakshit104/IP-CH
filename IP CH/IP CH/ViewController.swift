//
//  ViewController.swift
//  IP CH
//
//  Created by Rakshit Bhardwaj on 11/01/20.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    
    private var baseurl: String = "http://oriti.mingleminds.in/";
    
    private var numberOfItemsInRow = 2

    private var minimumSpacing = 5

    private var edgeInsetPadding = 10
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = clcView.dequeueReusableCell(withReuseIdentifier: "cvcCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            let inset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        edgeInsetPadding = Int(inset.left+inset.right)
            return inset
        }
    
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(minimumSpacing)
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return CGFloat(minimumSpacing)
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let width = (Int(UIScreen.main.bounds.size.width) - (numberOfItemsInRow - 1) * minimumSpacing - edgeInsetPadding) / numberOfItemsInRow
            return CGSize(width: width, height: width)
        }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let (view.id) {
                    self.id.cardviewaboutus -> {
                        dequecell(baseurl + "aboutus.aspx", "About Us");
                    }
            self.id.cardviewipallication -> {
                dequecell(baseurl + "patentform.aspx", "Patent Application");
                    }
            self.id.cardviewipservice -> {
                dequecell(baseurl + "ipservices.aspx", "IP Services");
                    }
            self.id.cardviewattornev -> {
                dequecell = Intent(this@MainActivity, pdfviewActivtiy::class.);
                dequecell(dequecell);
                    }
            self.id.cardviewageny -> {
                        intent(baseurl + "agencyfees.aspx", "Agency Fees");
                    }
            self.id.cardviewlink -> {
                dequecell(baseurl + "links.aspx", "Links");
                    }
            self.id.cardviewcontactus -> {
                dequecell(baseurl + "contactus.aspx", "Contact Us");
                    }
                }
    }
    

    @IBOutlet weak var clcView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    
    private func setUI(){
        clcView.delegate = self
        clcView.dataSource = self
        clcView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")

    }
    

}

