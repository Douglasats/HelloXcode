//
//  UserViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit

class UserViewController: UIViewController {
    
    var presenter: UserPresenterProtocol?
    
    @IBOutlet weak var ofertaImage: UIImageView!
    
    @IBOutlet weak var ofertaLabel: UILabel!
    @IBOutlet weak var tiendaLabel: UILabel!
    @IBOutlet weak var direccionLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var apellidoTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var celularTextField: UITextField!
    @IBOutlet weak var dniTextField: UITextField!
    
    @IBOutlet weak var canjearButton: UIButton!
    
    @IBOutlet weak var nameError: UILabel!
    @IBOutlet weak var apellidoError: UILabel!
    @IBOutlet weak var emailError: UILabel!
    @IBOutlet weak var dniError: UILabel!
    @IBOutlet weak var celularError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        resetForm()
    }
    
    @IBAction func canjearButton(_ sender: Any) {
       let user = UserEntity(name: nameTextField.text!,
                              apellido: apellidoTextField.text!,
                              email: emailTextField.text!,
                              cel: celularTextField.text!,
                              dni: dniTextField.text!)
        presenter?.obtenerUser(user)
    }
    
    
    
    @IBAction func celularChanged(_ sender: Any) {
        if let numeroCelular = celularTextField.text {
            if let errorMsg = invalidCelular(numeroCelular){
                celularError.text = errorMsg
                celularError.isHidden = false
                celularError.textColor = .orange
            } else {
                celularError.isHidden = true
            }
        }
        checkForValidForm()
    }
    private func invalidCelular(_ value: String) -> String?
    {
        //let set = CharacterSet(charactersIn: value)
//        if !CharacterSet.decimalDigits.isSuperset(of: set){
//            return "N° Celular solo debe tener números"
//        }
        let regularExpression = "[0-9 ]*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
        if !predicate.evaluate(with: value){
            return "N° Celular admite solo número"
        } else
        if value.count != 9{
            return "N° Celular debe tener 9 dígitos"
        }
        return nil
    }
    
    @IBAction func dniChanged(_ sender: Any) {
        if let numeroDni = dniTextField.text {
            if let errorMsg = invalidDni(numeroDni){
                dniError.text = errorMsg
                dniError.isHidden = false
                dniError.textColor = .orange
            } else {
                dniError.isHidden = true
            }
        }
        checkForValidForm()
    }
    
    private func invalidDni(_ value: String) -> String?
    {
        //let set = CharacterSet(charactersIn: value)
//        if !CharacterSet.decimalDigits.isSuperset(of: set){
//            return "N° Celular solo debe tener números"
//        }
        let regularExpression = "[0-9 ]*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
        if !predicate.evaluate(with: value){
            return "N° DNI admite solo número"
        } else
        if value.count != 8{
            return "N° DNI debe tener 8 dígitos"
        }
        return nil
    }

    @IBAction func emailChanged(_ sender: Any) {
        if let email = emailTextField.text {
            if let errorMsg = invalidEmail(email){
                emailError.text = errorMsg
                emailError.isHidden = false
                emailError.textColor = .orange
            } else {
                emailError.isHidden = true
            }
        }
        checkForValidForm()
    }
    
    private func invalidEmail(_ value: String) -> String?
    {
        //        let regularExpression = "[A-Z0-9a-z._%+-]+@[A-Z0-9a-z.-]+\\-[A-Za-z]{2,64}"
//        let regularExpression = "[A-Za-z ]*"
//        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
//        if !predicate.evaluate(with: value){
//            return "Email inválido"
//        } else
        if value == "" {
            return "Campo necesario"
        }
        return nil
    }
    
    
    @IBAction func apellidoChanged(_ sender: Any) {
        if let apellido = apellidoTextField.text {
            if let errorMsg = invalidApellido(apellido){
                apellidoError.text = errorMsg
                apellidoError.isHidden = false
                apellidoError.textColor = .orange
            } else {
                apellidoError.isHidden = true
            }
        }
        checkForValidForm()
    }
    
    private func invalidApellido(_ value: String) -> String?{
        let regularExpression = "[A-Za-z ]*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
       if !predicate.evaluate(with: value){
           return "Apellido solo admite letras"
       } else
        if value == "" {
            return "Campo necesario"
        }
        return nil
    }
    
    @IBAction func nombreChanged(_ sender: Any) {
        if let name = nameTextField.text {
            if let errorMsg = invalidName(name){
                nameError.text = errorMsg
                nameError.isHidden = false
                nameError.textColor = .orange
            } else {
                nameError.isHidden = true
            }
        }
        checkForValidForm()
    }
    
    private func invalidName(_ value: String) -> String?{
        let regularExpression = "[A-Za-z ]*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
        if !predicate.evaluate(with: value){
            return "Nombre solo admite letras"
        } else if value == "" {
            return "Campo necesario"
        }
        return nil
    }
    
    private func checkForValidForm()
    {
        if celularError.isHidden && dniError.isHidden && emailError.isHidden && apellidoError.isHidden && nameError.isHidden{
            canjearButton.isEnabled = true
        } else {
            canjearButton.isHidden = false
        }
    }
    
    
    private func resetForm() {
        canjearButton.isEnabled = false
        
        celularError.numberOfLines = 0
        
        nameError.isHidden = false
        apellidoError.isHidden = false
        emailError.isHidden = false
        dniError.isHidden = false
        celularError.isHidden = false
        
        nameError.text = "Campo requerido"
        apellidoError.text = "Campo requerido"
        emailError.text = "Campo requerido"
        dniError.text = "Campo requerido"
        celularError.text = "Campo requerido"
        
        nameTextField.text = ""
        apellidoTextField.text = ""
        emailTextField.text = ""
        dniTextField.text = ""
        celularTextField.text = ""
    }
    
    private func setup() {
        canjearButton.round()
        canjearButton.shine()
        navigationItem.title = "Formulario"
        ofertaImage.image = UIImage(named: (presenter?.detailEntity.imgCat)!)
        if let categoria = presenter?.detailEntity.categoria, let valor = presenter?.detailEntity.valor{
            ofertaLabel.text = "\(categoria) \(valor)% dto."
        }
        tiendaLabel.text = presenter?.detailEntity.tienda
        direccionLabel.text = (presenter?.detailEntity.direccion)
    }
}

