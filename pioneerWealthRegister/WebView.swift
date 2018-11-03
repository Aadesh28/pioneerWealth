

import UIKit

class WebView: UIViewController
{
   
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var wbWebView: UIWebView!
    
    @IBAction func btnBackButton(_ sender: UIButton)
    {
        let storyboard = UIStoryboard(name : "Main", bundle : nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier : "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(viewcontroller,animated : true)
        
        //      navigationController?.popViewController(animated: true)
        
        //        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        //         self.navigationController?.pushViewController(secondViewController, animated: true)
        //        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        //        self.present(nextViewController, animated:true, completion:nil)
    }
    
    var labelString : String = ""
    var nurl : String = ""
//    let url = URL (string: nurl)
//    let requestObj = URLRequest(url: url!)
//    wkWebView.loadRequest(requestObj)

//    (urlString:"http://m.investwell.in/hc/logincheck.jsp?bid=20146&user=%@&password=%@", parameters: ["bid" : "20146" ], httpMethod: "GET")

//Pass the string to make the function call from the same place

    override func viewDidLoad()
    {
        super.viewDidLoad()
//        lbl.text = labelString
//        let url = NSURL (string: nurl);
//        let request = NSURLRequest(URL: url! as URL);
//        wbWebView.loadRequest(request);
        
        //self.na

   }
}

