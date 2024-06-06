
import UIKit

class SecondViewController: UIViewController {
    override func loadView() {
        super.loadView()
        print("loadView -- 2")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad -- 2")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear -- 2")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear -- 2")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear -- 2")
    }
   
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear -- 2")
    }


}
