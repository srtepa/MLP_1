protocol PatientProtocol{
    var fullName: String {get}
    var age: Int {get}
    var address: String {get}
    var medicalCardNumber: Int {get}
    var diagnoses: [String] {get}
    
    func DisplayInfo()
}

