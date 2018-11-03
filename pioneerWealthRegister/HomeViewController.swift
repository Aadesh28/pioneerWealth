

import UIKit

class HomeViewController: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource
{
    
    @IBOutlet weak var btnPortfolio: UIButton!
    
    var murl : String = ""
  //  var ar = Array<>()
    var homeImages: [UIImage] = [UIImage(named: "about_us.png")!,UIImage(named: "services_provided.png")!,UIImage(named: "nfo.png")!,UIImage(named: "tools.png")!,UIImage(named: "useful_articles.png")!,UIImage(named: "knowledge_area.png")!]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
       return homeImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        let identifier = "HomeCollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! HomeCollectionViewCell
        
        cell.imgView.image = homeImages[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)

    {
        
     print("AAAAAA")
        if (indexPath.row == 3)
        {
            let storyboard = UIStoryboard(name : "Main", bundle : nil)
            let viewcontroller = storyboard.instantiateViewController(withIdentifier : "ToolsViewController") as! ToolsViewController
            self.navigationController?.pushViewController(viewcontroller,animated : true)
//            if let viewcontroller = semun.destination as? TertiaryViewController
//            {
//                viewcontroller.lbl.text = "Tools"
//            }
        }
        
        if (indexPath.row == 0)
        {
            murl = "http://my-portfolio.in/SubDomainLogos/Template/AboutUs20146.html"
            let storyboard = UIStoryboard(name : "Main", bundle : nil)
            let viewcontroller = storyboard.instantiateViewController(withIdentifier : "WebView") as! WebView
            viewcontroller.nurl = murl
            self.navigationController?.pushViewController(viewcontroller,animated : true)
        }
    
        if (indexPath.row == 1)
        {
            murl = "http://my-portfolio.in/SubDomainLogos/Template/Services20146.html"
            let storyboard = UIStoryboard(name : "Main", bundle : nil)
            let viewcontroller = storyboard.instantiateViewController(withIdentifier : "WebView") as! WebView
          //  viewcontroller.lbl.text = "Services"
            viewcontroller.nurl = murl
            self.navigationController?.pushViewController(viewcontroller,animated : true)
        }
    
        if (indexPath.row == 2)
        {
         //   murl = "locate us"
            let storyboard = UIStoryboard(name : "Main", bundle : nil)
            let viewcontroller = storyboard.instantiateViewController(withIdentifier : "WebView") as! WebView
            //viewcontroller.lbl.text = "Locate Us"
            viewcontroller.nurl = murl
            self.navigationController?.pushViewController(viewcontroller,animated : true)
        }
    
        if (indexPath.row == 4)
        {
            murl = " http://m.investwell.in/hc/article.jsp?bid=20146&user=demo1234&password=123456&phone=ios"
            
            let storyboard = UIStoryboard(name : "Main", bundle : nil)
            let viewcontroller = storyboard.instantiateViewController(withIdentifier : "WebView") as! WebView
            //viewcontroller.lbl.text = "Useful Articles"
            viewcontroller.nurl = murl
            self.navigationController?.pushViewController(viewcontroller,animated : true)
        }
    
    
        if (indexPath.row == 5)
        {
            murl = "http://investwellonline.com/knowledgeBase/kb.html"
            let storyboard = UIStoryboard(name : "Main", bundle : nil)
            let viewcontroller = storyboard.instantiateViewController(withIdentifier : "WebView") as! WebView
            //viewcontroller.lbl.text = "Knowledge Area"
            viewcontroller.nurl = murl
            self.navigationController?.pushViewController(viewcontroller,animated : true)
        }
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

      
    }

}
