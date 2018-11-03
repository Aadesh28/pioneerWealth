
import UIKit

class ToolsViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource
{
    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var homeButton: UIButton!
    
    @IBOutlet weak var toolsLabel: UILabel!
    
    @IBAction func btnBackButton(_ sender: UIButton)
    {
//        let homeVC = HomeViewController()
//        present(homeVC, animated: true , completion: nil)
        
        let storyboard = UIStoryboard(name : "Main", bundle : nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier : "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(viewcontroller,animated : true)
    }
    
    var toolImages: [UIImage] = [UIImage(named: "calculate_future_value.png")!,UIImage(named: "calculate_sip.png")!,UIImage(named: "cost_of_delay.png")!,UIImage(named: "education_calculator.png")!,UIImage(named: "emi_calculator.png")!,UIImage(named: "lumpsum_calculator.png")!,UIImage(named: "marriage_calculator.png")!,UIImage(named: "retirement_calculator.png")!,UIImage(named: "sip_tenure.png")!]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return toolImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
       let identifier = "ToolsTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ToolsTableViewCell
        
        cell.TableViewImage.image = toolImages[indexPath.row]
//       cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath)) as UITableViewCell
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
//    {
//        <#code#>
//    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        let labelFont = UIFont(name: "HelveticaNeue-Bold", size: 18)
//        let attributes :Dictionary = [NSAttributedString.Key.font : labelFont]
//        let attrString = NSAttributedString(string: "Tools", attributes:attributes as [NSAttributedString.Key : Any])
//        toolsLabel.attributedText = attrString
    }
}
