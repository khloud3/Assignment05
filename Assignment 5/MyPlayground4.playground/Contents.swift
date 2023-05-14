import UIKit



// Drinks

protocol liquidity {
    func Liquid ()
}

class Drinks : liquidity {
    func Liquid() {
        print (" Drinks its liquid")
    }
    
    var drinkName : String
    var drinkColor :String
    
    init(drinkName : String  ,drinkColor :String){
        self.drinkName = drinkName
        self.drinkColor = drinkColor
    }
    
}


class Juices : Drinks{
    var typeOfJuice : String
    var addSugar :Bool
    
    init(typeOfJuice : String  ,addSugar :Bool ,drinkName : String ,drinkColor :String){
        self.typeOfJuice = typeOfJuice
        self.addSugar = addSugar
        super.init(drinkName: drinkName, drinkColor :drinkColor)
    }
}



class SoftDrinks : Juices {
    var calories :Int
    var typeOfBottel :String
    
    init(calories :Int , typeOfBottel :String , typeOfJuice : String  ,addSugar :Bool ,drinkName : String  ,drinkColor :String){
        
        self.calories = calories
        self.typeOfBottel = typeOfBottel
        super.init(typeOfJuice : typeOfJuice, addSugar: addSugar, drinkName: drinkName, drinkColor: drinkColor)
    }
}

class FruitJuice : Juices{
    var fruitName : String
    var price : Double
    
    init (fruitName : String ,price : Double ,typeOfJuice : String  ,addSugar :Bool ,drinkName : String ,drinkColor :String){
        self.fruitName = fruitName
        self.price = price
        super.init(typeOfJuice: typeOfJuice, addSugar: addSugar, drinkName: drinkName, drinkColor: drinkColor)
    }
}

enum BeanRoast {
    case Light , Medium , Dark
}

class Coffee : Drinks{
    var coffeeName : String
    var coffeeRoast  : BeanRoast
    init(coffeeName : String ,coffeeRoast : BeanRoast ,drinkName : String  ,drinkColor :String){
        self.coffeeName = coffeeName
        self.coffeeRoast = coffeeRoast
        super.init(drinkName: drinkName, drinkColor: drinkColor)
    }
}

class V60 : Coffee {
    let size = 350
    var coffeeBeans : String
    
    
    init ( coffeeBeans : String ,coffeeName : String ,coffeeRoast : BeanRoast ,drinkName : String  ,drinkColor :String){
        self.coffeeBeans = coffeeBeans
        super.init(coffeeName: coffeeName, coffeeRoast: coffeeRoast, drinkName: drinkName, drinkColor: drinkColor)
    }
    
}

class SaudiCoffee : Coffee{
    var regions :String
    var color : String
    var timeToCook : Float
    
    init (regions :String , color : String , timeToCook : Float ,coffeeName : String ,coffeeRoast : BeanRoast ,drinkName : String ,drinkColor :String){
        self.regions = regions
        self.color = color
        self.timeToCook = timeToCook
        super.init(coffeeName: coffeeName, coffeeRoast: coffeeRoast, drinkName: drinkName, drinkColor: drinkColor)
    }
}


//City

class City {
    var cityName : String
    var cityArea : Double
    
    init(cityName : String ,cityArea : Double) {
        self.cityName = cityName
        self.cityArea = cityArea
    }
}



class Hospital : City {
    var hospitalName : String
    var numberOfDepartment : Int
    var hospitalDepartment : [String]
    
    init(hospitalName : String , numberOfDepartment : Int , hospitalDepartment : [String] ,cityName : String ,cityArea : Double){
        self.hospitalName = hospitalName
        self.numberOfDepartment = numberOfDepartment
        self.hospitalDepartment = hospitalDepartment
        super.init(cityName: cityName, cityArea: cityArea)
    
    }
}

class Patients : Hospital{
    var entryTime : Double
    fileprivate struct PatientsData{
        
        var fName :String
        var lName:String
        var mobileNum :Int
        var itsmale1: Bool
        var itsfamale1:Bool
        
        init (fName :String ,lName:String ,mobileNum :Int ,itsmale1: Bool ,itsfamale1:Bool){
            self.fName = fName
            self.lName = lName
            self.mobileNum = mobileNum
            self.itsfamale1 = itsfamale1
            self.itsmale1 = itsmale1
        }
    }
    init ( entryTime : Double,hospitalName : String , numberOfDepartment : Int , hospitalDepartment : [String] ,cityName : String ,cityArea : Double){
        self.entryTime = entryTime
        super.init(hospitalName: hospitalName, numberOfDepartment: numberOfDepartment, hospitalDepartment: hospitalDepartment, cityName: cityName, cityArea: cityArea)
    }
}


class Employee : Hospital{
   private var employeeData :[Int : String]
    var workTime : Float
    
    init(employeeData :[Int : String], workTime : Float , hospitalName : String , numberOfDepartment : Int , hospitalDepartment : [String] ,cityName : String ,cityArea : Double){
        self.employeeData = employeeData
        self.workTime = workTime
        super.init(hospitalName: hospitalName, numberOfDepartment: numberOfDepartment, hospitalDepartment: hospitalDepartment, cityName: cityName, cityArea: cityArea)
    }
}

class Doctors : Employee {
    var nameOfDepartment : String
    var numberOfPatient : Int
    
    init (nameOfDepartment : String ,numberOfPatient : Int , employeeData :[Int : String], workTime : Float , hospitalName : String , numberOfDepartment : Int , hospitalDepartment : [String] ,cityName : String ,cityArea : Double){
        self.nameOfDepartment = nameOfDepartment
        self.numberOfPatient = numberOfPatient
        super.init(employeeData: employeeData, workTime: workTime, hospitalName: hospitalName, numberOfDepartment: numberOfDepartment, hospitalDepartment: hospitalDepartment, cityName: cityName, cityArea: cityArea)
    }
}

class Administration : Employee {
   private var idNumber : Int
    var nameOfDepartment : String
    
    init (idNumber : Int , nameOfDepartment : String ,employeeData :[Int : String], workTime : Float , hospitalName : String , numberOfDepartment : Int , hospitalDepartment : [String] ,cityName : String ,cityArea : Double){
        self.idNumber = idNumber
        self.nameOfDepartment = nameOfDepartment
        super.init(employeeData: employeeData, workTime: workTime, hospitalName: hospitalName, numberOfDepartment: numberOfDepartment, hospitalDepartment: hospitalDepartment, cityName: cityName, cityArea: cityArea)
    }
}





class School : City {
    var schoolName : String
    var numberOfSudent : Double
    
    init (schoolName : String , numberOfSudent : Double ,cityName : String ,cityArea : Double){
        self.schoolName = schoolName
        self.numberOfSudent = numberOfSudent
        super.init(cityName: cityName, cityArea: cityArea)
    }
}

class Classes : School{
    var numberOfClasses : Int
    var className : String
    
    init(numberOfClasses : Int, className : String ,schoolName : String , numberOfSudent : Double ,cityName : String ,cityArea : Double){
        self.numberOfClasses = numberOfClasses
        self.className = className
        super.init(schoolName: schoolName, numberOfSudent: numberOfSudent, cityName: cityName, cityArea: cityArea)
    }
}

class Student : School{
    var studentName : String
    var studentLevel : Int
    
    init (studentName : String ,studentLevel : Int ,schoolName : String , numberOfSudent : Double ,cityName : String ,cityArea : Double){
        self.studentName = studentName
        self.studentLevel = studentLevel
        super.init(schoolName: schoolName, numberOfSudent: numberOfSudent, cityName: cityName, cityArea: cityArea)
    }
}



class Mall : City {
    var mallName :String
    var numberOfFloors : Int
    
    init(mallName :String ,numberOfFloors : Int ,cityName : String ,cityArea : Double) {
        self.mallName = mallName
        self.numberOfFloors = numberOfFloors
        super.init(cityName: cityName, cityArea: cityArea)
    }
}



class FoodZone : Mall{
    var sizeArea : Double
    var closeTime : Float
    
    init (sizeArea : Double , closeTime : Float ,mallName :String ,numberOfFloors : Int ,cityName : String ,cityArea : Double){
        self.sizeArea = sizeArea
        self.closeTime = closeTime
        super.init(mallName: mallName, numberOfFloors: numberOfFloors, cityName: cityName, cityArea: cityArea)
    }

}

class Restaurant : FoodZone {
    var typeOfRestaurant : String
    var restaurantName :String
    
    init(typeOfRestaurant : String ,restaurantName :String, sizeArea : Double , closeTime : Float ,mallName :String ,numberOfFloors : Int ,cityName : String ,cityArea : Double) {
        self.typeOfRestaurant = typeOfRestaurant
        self.restaurantName = restaurantName
        super.init(sizeArea: sizeArea, closeTime: closeTime, mallName: mallName, numberOfFloors: numberOfFloors, cityName: cityName, cityArea: cityArea)
    }
}

class MallCoffee : FoodZone{
    var coffeeName :String
    var itsSpecialtyCoffee : Bool
    
    init(coffeeName :String , itsSpecialtyCoffee : Bool ,sizeArea : Double , closeTime : Float ,mallName :String ,numberOfFloors : Int ,cityName : String ,cityArea : Double) {
        self.coffeeName = coffeeName
        self.itsSpecialtyCoffee = itsSpecialtyCoffee
        super.init(sizeArea: sizeArea, closeTime: closeTime, mallName: mallName, numberOfFloors: numberOfFloors, cityName: cityName, cityArea: cityArea)
    }
}



class Stores : Mall{
    var storName : String
    var numberOfEmployee : Int
    
    init (storName : String ,numberOfEmployee : Int ,mallName :String ,numberOfFloors : Int ,cityName : String ,cityArea : Double){
        self.storName = storName
        self.numberOfEmployee = numberOfEmployee
        super.init(mallName: mallName, numberOfFloors: numberOfFloors, cityName: cityName, cityArea: cityArea)
    }
}

class CustomerS  : Stores{
    var itsFemale : Bool
    var itsMale : Bool
    
    init(itsFemale : Bool ,itsMale : Bool ,storName : String ,numberOfEmployee : Int ,mallName :String ,numberOfFloors : Int ,cityName : String ,cityArea : Double){
        self.itsFemale = itsFemale
        self.itsMale = itsMale
        super.init(storName: storName, numberOfEmployee: numberOfEmployee, mallName: mallName, numberOfFloors: numberOfFloors, cityName: cityName, cityArea: cityArea)
    }
}



class PlayArea : Mall{
    var itsFree : Bool
    var playerInfo :[ Int : String]
    
    init(itsFree : Bool , playerInfo :[ Int : String] ,mallName :String ,numberOfFloors : Int ,cityName : String ,cityArea : Double) {
        self.itsFree = itsFree
        self.playerInfo = playerInfo
        super.init(mallName: mallName, numberOfFloors: numberOfFloors, cityName: cityName, cityArea: cityArea)
        
    }
}


//Transport

protocol Movable{
    func movement ()
}

public class Transport : Movable {
    func movement() {
        print (" its can movement")
    }
    
    var transportType :String
    var movementSpeed :Double
    
    init(transportType :String ,movementSpeed :Double) {
        self.transportType = transportType
        self.movementSpeed = movementSpeed
    }
}


class LandTransport : Transport{
    var lName :String
    var wheelsNumber : Int
    
    init(lName :String ,wheelsNumber : Int , transportType :String ,movementSpeed :Double) {
        self.lName = lName
        self.wheelsNumber = wheelsNumber
        super.init(transportType: transportType, movementSpeed: movementSpeed)
    }
}

class Car :LandTransport {
    var carName :String
    var carDoors:Int
    
    init(carName :String ,carDoors:Int ,lName :String ,wheelsNumber : Int , transportType :String ,movementSpeed :Double) {
        self.carName = carName
        self.carDoors = carDoors
        super.init(lName: lName, wheelsNumber: wheelsNumber, transportType: transportType, movementSpeed: movementSpeed)
    }
}

class Bike : LandTransport{
    var bikeType :String
    var numberOfSeats :Int
    
    init(bikeType :String , numberOfSeats :Int,lName :String ,wheelsNumber : Int , transportType :String ,movementSpeed :Double) {
        self .bikeType = bikeType
        self .numberOfSeats = numberOfSeats
        super.init(lName: lName, wheelsNumber: wheelsNumber, transportType: transportType, movementSpeed: movementSpeed)
    }
}



class AirTransport : Transport {
    
    var aName :String
    var aHeight :Double
    
    init(aName :String , aHeight :Double ,transportType :String ,movementSpeed :Double) {
        self.aName = aName
        self.aHeight = aHeight
        super.init(transportType: transportType, movementSpeed: movementSpeed)
    }
}

class Airplanes : AirTransport {
    var airplaneModel : String
    var numberOfPassengers : Int
    
    init(airplaneModel : String ,numberOfPassengers : Int ,aName :String , aHeight :Double ,transportType :String ,movementSpeed :Double) {
        self.airplaneModel = airplaneModel
        self.numberOfPassengers = numberOfPassengers
        super.init(aName: aName, aHeight: aHeight, transportType: transportType, movementSpeed: movementSpeed)
    }
}

class Helicopter : AirTransport{
    var helicopterType :String
    var wings : Int
    
    init( helicopterType :String , wings : Int ,aName :String , aHeight :Double ,transportType :String ,movementSpeed :Double) {
        self.helicopterType = helicopterType
        self.wings = wings
        super.init(aName: aName, aHeight: aHeight, transportType: transportType, movementSpeed: movementSpeed)
    }
    
}


var swiftKeyword = ["associatedtype", "class", "deinit", "enum", "extension" , "fileprivate", "func", "import", "init", "inout", "internal", "let", "open", "operator", "private", "precedencegroup", "protocol", "public", "rethrows", "static"," struct", "subscript", "typealias", "var" ,"break", "case", "catch"," continue", "default", "defer", "do", "else", "fallthrough", "for", "guard"," if", "in", "repeat", "return", "throw", "switch", "where", " while" ,"Any", "as", "await", "catch", "false", "is", "nil", "rethrows", "self", "Self"," super", "throw", "throws"," true"," try" ,"#available", "#colorLiteral", "#column", "#dsohandle", "#elseif", "#else", "#endif", "#error", "#fileID", "#fileLiteral", "#filePath"," #file", "#function", "#if", "#imageLiteral", "#keyPath", "#line", "#selector", "#sourceLocation", "#warning" ," _." ,"associativity", "convenience"," didSet", "dynamic", "final", "get", "indirect", "infix", "lazy", "left", "mutating", "none", "nonmutating"," optional", "override", "postfix", "precedence", "prefix", "Protocol", "required", "right", "set", "some"," Type", "unowned"," weak", "willSet" ]
