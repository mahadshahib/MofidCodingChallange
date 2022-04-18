//
//  WebViewController.swift
//  MofidCodingChallange
//
//  Created by Mamad Shahib on 1/29/1401 AP.
//

import UIKit
import WebKit

class WebViewController: UIViewController , WKNavigationDelegate {
    
    var webView: WKWebView!
    var userPhoneNumber : String?
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       loadUrl("https://www.cheetateam.ir")
    
    }
    
    func loadUrl(_ urlString:String) {
        let url = URL(string: urlString)!
                webView.load(URLRequest(url: url))
    }
    
}
extension WebViewController : WKUIDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            webView
        .evaluateJavaScript("alert('\(userPhoneNumber ?? "oops again")')", completionHandler: nil)
        }
    func webView(_ webView: WKWebView,
                     runJavaScriptAlertPanelWithMessage message: String,
                     initiatedByFrame frame: WKFrameInfo,
                     completionHandler: @escaping () -> Void) {

            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let title = NSLocalizedString("OK", comment: "OK Button")
            let ok = UIAlertAction(title: title, style: .default) { (action: UIAlertAction) -> Void in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            present(alert, animated: true)
            completionHandler()
        }
}
