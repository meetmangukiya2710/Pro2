//
//  ViewController.swift
//  Pro2
//
//  Created by R95 on 01/02/24.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var ProductCollectionOutlet: UICollectionView!
    
    @IBOutlet weak var ProductTableOutlet: UITableView!
    
    var imagename1 = ["lamp1","lamp2","lamp3","lamp4","lamp5","lamp6","lamp7","lamp8","lamp9","lamp10","lamp11","lamp12","lamp13"]
    
    var ProductDetail1 = ["Voroly Wood Oval Table Lamp,White ₹1,664 M.R.P: ₹2,999(45%off)","Hopdezyo Antique Nautical Wooden Tripod Adjustable Floor Lamp for Living Room, Home Decoration, Pack of Lamp in Jute Shade ₹1,090 M.R.P: ₹1,799 (39% off)","Craftter Premium Sconces Wooden Base Fabric Shade Round Wall Lamp for Home Decoration ₹999 M.R.P: ₹3,331 (70% off)","Divine Trends Modern Table Shelf Floor Lamp Standing Brass Antique Gold 5ft Height 10 Inches Shelf Diameter ₹6,850 M.R.P: ₹11,500 (40% off)","Crosscut Furniture Metal Floor Lamp with Decorative Shelf (Cotton White, Pack of 1) ₹1,499 M.R.P: ₹4,990 (70% off)","Homesake Wall Light Antique Home Decor Wall Lamp, Mandir Balcony Decoration Items Outdoor ₹849 M.R.P: ₹3,300 (74% off)","ABOUT SPACE Table Lamp - Bedside Side Table Lamp with Wooden Base for Night Reading,Bed Room ₹1,459 M.R.P: ₹1,699 (14% off)","Crosscut Furniture Metal Floor Lamp with 3 Shelves (Fresh Flower) ₹1,799 M.R.P: ₹4,990 (64% off)","Homesake® Rustic Algae French Trophy Carved Table lamp with Shade,able Lamp, Night Lamp Home ₹1,394 M.R.P: ₹5,000 (72% off)","Homesake Hanging Light Diamond Cluster, Ceiling Lights for Home Decoration, Pendant Light Living Room ₹850 M.R.P: ₹3,500 (76% off)","Homesake® Lamp, Table Lamp, Night Lamp for Bedroom, Home Decor Items, Lamp for Living Room ₹849 M.R.P: ₹3,000 (72% off)","XERGY Crystal Table Lamp,3 Color,Touch Control and USB Rechargeable,3-Levels Brightness Room Décor ₹799 M.R.P: ₹999 (20% off)","ExclusiveLane Sheesham Wooden 'Pyramid' Table Lamp for Bedroom & Living Room ₹1,224 M.R.P: ₹2,415 (49% off)"]
    
    var imagename2 = ["lamp14","lamp15","lamp16","lamp17","lamp18","lamp19","lamp20","lamp21","lamp22","lamp23","lamp24","lamp25","lamp26"]
    
    var ProductDetail2 = ["IMNISHNAY Tree Lamp for Baby Room Decor,Pearl LED Fairy Lights Spirit Tree,Bonsai Tree Light, LED ₹699 M.R.P: ₹999 (30% off)","ExclusiveLane Sheesham Wooden 'Pyramid' Table Lamp for Bedroom & Living Room ₹1,224 M.R.P: ₹2,415 (49% off)","IMNISHNAY Table Lamp for Bedroom, Minimalist Bedside Table Lamps Night Light with USB Ports ₹1,999 M.R.P: ₹2,499 (20% off)","Homesake Wall Light, Wall Lamp Wood Light for Home Decoration, Chandelier Home, Living Room, Indoor Outdoor ₹269 M.R.P: ₹299 (10% off)","GLOWSERIE Led Desk Tree Lamp, Desk Table Decor 36 Pearl LED Lights ₹699 M.R.P: ₹1,999 (65% off)","ELYZIA Tripping Indoor Outdoor Wall Lamps/Lights lamp led Light Shade/Curved Black ₹549 M.R.P: ₹2,999 (82% off)","Decor & More - Bedside Lamp | Bed Lamps for Bedroom with On/Off Button | Table Lamps for Home Decoration  ₹2,389 M.R.P: ₹2,999 (20% off)","Zinnia Night Light for Bedroom, 3D Solar System Crystal Ball Night Lamp, LED Space Projection Table Lamp for Home Decoration & Living-Room ₹499 M.R.P: ₹999 (50% off)","XERGY 10 cm 3D Rechargeable Moon Lamp with Touch Control Adjust Brightness with Wooden ₹699 M.R.P: ₹1,999 (65% off)","CASE PLUS Furniture Premium Lamps for Home Decoration with 6 Shelves Living Room, Bedroom Multiutility Floor ₹1,699 M.R.P: ₹7,999 (79% off)","SHILP KATHA Handcrafted Leather Lamp shade | Handmade Table Lamp for home decoration ₹1,345 M.R.P: ₹2,400 (44% off)","Homesake Wall Light Antique Home Decor Wall Lamp, Mandir Balcony Decoration Items Outdoor, Lanterns ₹849 M.R.P: ₹3,300 (74% off)","Hopdezyo Khadi Drum Lamp Shade Corner Floor Lamp for Living Room, Bedroom, Office, Home Decoration ₹1,499 M.R.P: ₹2,690 (44% off)"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagename1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ProductCollectionOutlet.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionProdeuctCollectionViewCell
        
        cell.ProductImageOutlet.image = UIImage(named: imagename1[indexPath.row])
        cell.ProductNameOutlet.text = ProductDetail1[indexPath.row]
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 177, height: 350)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagename2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ProductTableOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableProdectTableViewCell
        
        cell.ImgOutlet.image = UIImage(named: imagename2[indexPath.row])
        cell.ItemOutlet.text = ProductDetail2[indexPath.row]
       
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 164.52
    }


}

