import UIKit

class Kisiler {
    var ad:String?
    var yas:Int?
    var adres:Adres?
    
    init(ad:String, yas:Int, adres:Adres) {
        self.ad = ad
        self.yas = yas
        self.adres = adres
    }
    
}




class Adres{
    var il:String?
    var ilce:String?
    
    init(il:String, ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

let adres = Adres(il: "İstanbul", ilce: "Maslak")
let kisi = Kisiler(ad: "japsa", yas: 18, adres:adres)

print("kisi ad : \(kisi.ad!)")
print("kisi yaş : \(kisi.yas!)")
print("kisi il : \(kisi.adres!.il!)")
print("kisi ilçe : \(kisi.adres!.ilce!)")

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// Farklı Bir Örnek //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class Kategoriler{
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int, kategori_ad:String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int, yonetmen_ad:String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler{
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var yonetmen:Yonetmenler?
    var kategori:Kategoriler?
    
    init(film_id:Int, film_ad:String, film_yil:Int, yonetmen:Yonetmenler, kategori:Kategoriler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.yonetmen = yonetmen
        self.kategori = kategori
    }
}

var k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
var k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")
var k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim Kurgu")

var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Nuri Bilge Ceylan")
var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quentin Tarantino")
var y3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Christopher Nolan")

var f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2012, yonetmen: y2, kategori: k1)
var f2 = Filmler(film_id: 2, film_ad: "Inception", film_yil: 2010, yonetmen: y3, kategori: k3)

print("Film Id : \(f2.film_id!)")
print("Film Ad : \(f2.film_ad!)")
print("Film Yıl : \(f2.film_yil!)")
print("Film Kategori : \(f2.kategori!.kategori_ad!)")
print("Film Yönetmen : \(f2.yonetmen!.yonetmen_ad!)")


