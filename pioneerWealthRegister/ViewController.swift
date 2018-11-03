

import UIKit


class ViewController: UIViewController
{

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    @IBAction func btnBackButton(_ sender: UIButton)
    {
        
        let storyboard = UIStoryboard(name : "Main", bundle : nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier : "SignInViewController") as! SignInViewController
        navigationController?.pushViewController(viewcontroller,animated : true)
        
//        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//         self.navigationController?.pushViewController(secondViewController, animated: true)

//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//        self.present(nextViewController, animated:true, completion:nil)
    }
//    @IBOutlet weak var usernameViewHeight: NSLayoutConstraint!
//    
//    @IBOutlet weak var emailVIewHeight: NSLayoutConstraint!
//    
//    @IBOutlet weak var phoneViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        resetButton.layer.cornerRadius = 22
        resetButton.clipsToBounds = true
        
        registerButton.layer.cornerRadius = 22
        registerButton.clipsToBounds = true
    }
}

