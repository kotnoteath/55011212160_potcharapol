// Playground - noun: a place where people can play

var us:[String:String] = ["ant":"sugar","bat":"blood","cat":"fish","dragon":"human"]


func add(){
var uu="aaaa"
var ss="0000"
us.updateValue(ss, forKey: uu)//add

}

func up(){
var uu="cat"
us.updateValue("rat", forKey: uu)//update

}

func rem(){
    var uu="ant"
us.removeValueForKey(uu)//remove


}
add()
println(us["aaaa"])
up()
println(us["cat"])
rem()
println(us["ant"])

