    import UIKit


class SignInViewController: UIViewController
{


//    @IBAction func btnBackButton(_ sender: UIButton)
//    {
//      navigationController?.popViewController(animated: true)
//    }


    @IBAction func btnBackbutton(_ sender: UIButton)
    {
        let storyboard = UIStoryboard(name : "Main", bundle : nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier : "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(viewcontroller,animated : true)
    
    }
    @IBOutlet weak var btnSignIN: UIButton!
    @IBOutlet weak var viewPasswordHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var viewUserIDTextField: UIView!
    
    @IBOutlet weak var viewPasswordTextField: UIView!
    @IBOutlet weak var imageVIew: UIImageView!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var btnForgotPassword: UIButton!
    
    @IBOutlet weak var btnContactUs: UIButton!
    
    @IBAction func btnSignIn(_ sender: Any)
    {
    
        let userName = usernameText.text
        let password = passwordText.text
        
        if((userName?.count)! <= 0 && (password?.count)! <= 0)
        {
            //to show alert
            return
        }
        ApiHandeler.callAPi(urlString: "http://m.investwell.in/hc/logincheck.jsp", parameters: ["bid" : "20146" , "user" : userName! ,"password" : password!], httpMethod: "GET") { (data, response, error) in
            
            print("Response Recieved")
            
            let decoder = JSONDecoder()
            do
            {
                let abc = try decoder.decode(Login_Model.self, from: data!)
                print(abc)
                
                let uid = abc.uid
                let bid = abc.bid
                let flag = abc.flag
                let headline = abc.headline
                let logopath = abc.logopath
                
                DispatchQueue.main.async
                    {
                        //login screen transition
                        
                    }
                
            }
            catch
            {
                print(error)
            }
            
    }
        //User ID View Bottom BAr
        
        func textFieldDidBeginEditing(userIDTextField: UITextField!)
        {
            viewUserIDTextField.backgroundColor = .red
            self.viewPasswordHeightConstraint.constant = 2
        }
        
        func textFieldShouldEndEditing(userIDTextField: UITextField!) -> Bool
        {
            return false
        }
        
        func textFieldShouldReturn(userIDTextField: UITextField!) -> Bool
        {
            userIDTextField.resignFirstResponder()
            viewUserIDTextField.backgroundColor = .black
            return true
        }
        
        //password eye in imageview
        func imgvieweye ()
        {
            //    passwordTextField.rightViewMode = UITextFieldViewMode.Always
            //    let imageView1 = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            //    let image = UIImage(named: eye.png)
            //    imageView1.image = image
            //    passwordTextField.rightView = imageView1
        }
        
        //PassworD View Bottom BAr
        
        func textFieldDidBeginEditing(passwordTextField: UITextField!)
        {
            viewPasswordTextField.backgroundColor = .red
        }
        
        func textFieldShouldEndEditing(passwordTextField: UITextField!) -> Bool
        {
            return false
        }
        
        func textFieldShouldReturn(passwordTextField: UITextField!) -> Bool
        {
            passwordTextField.resignFirstResponder()
            return true
        }
        
        
        func viewDidLoad()
        {
            super.viewDidLoad()
            btnSignIN.layer.cornerRadius = 22
            btnSignIN.clipsToBounds = true
//            imgvieweye()

        }
      }
}

