// Playground - noun: a place where people can play

var name :[String:String] = ["CAG":"computer animations and game", "IS":"information science", "IT":"information technology","Gis":"geo-informatics","CS":"computer science","MC":"mass communication"]


func add(){
    var uu="ABCDEFG"
    var ss="a boy can do everyting for girl"
    name.updateValue(ss, forKey: uu)//add
    
}

func up(){
    var uu="ABCDEFG"
    name.updateValue("he is just kidding", forKey: uu)//update
    
}

func rem(){
    var uu="ABCDEFG"
    name.removeValueForKey(uu)//remove
    
    
}
add()
println(name["ABCDEFG"])
up()
println(name["ABCDEFG"])
rem()
println(name["ABCDEFG"])
