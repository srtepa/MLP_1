/*
 Каждый класс должен реализовывать протокол;
 - Работа должна происходить не с экземплярами класса, а с
 экземплярами протокола;
 – сделать валидацию всех вводимых значений.
 
 Класс Patient. Фамилия, имя, отчество, возраст, адрес, номер
 медиц. карты, диагноз (возможно наличие не одного диагноза). Вывести
 список пациентов (ФИО, адрес, возраст) номера медицинских карт которых
 находятся в заданном диапазоне, список пациентов с заданным диагнозом
 */

class Patient: PatientProtocol{
    let firstName: String
    let lastName: String
    let middleName: String
    let age: Int
    let address: String
    let medicalCardNumber: Int
    var diagnoses: [String]
    
    var fullName: String{
        return "\(lastName) \(firstName) \(middleName)"
    }
    
    init?(firstName: String, lastName: String, middleName: String, age: Int, address: String, medicalCardNumber: Int, diagnoses: [String]) {
        
        guard !firstName.isEmpty, !lastName.isEmpty, !middleName.isEmpty else{
            print("Ошибка: Имя, фамилия и адрес не могут быть пустыми")
            return nil
        }
        
        guard age>0 && age<120 else{
            print("Ошибка: Возраст должен быть в разумных пределах (1-129)")
            return nil
        }
        
        guard medicalCardNumber > 0 else{
            print("Ошибка: Номер медицинской карты должен быть положительным числом")
            return nil
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
        self.age = age
        self.address = address
        self.medicalCardNumber = medicalCardNumber
        self.diagnoses = diagnoses
    }
    
    func DisplayInfo() {
        print("ФИО: \(fullName), адрес: \(address), возраст: \(age)")
    }
}

