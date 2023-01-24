import PlaygroundSupport;


// TIPOS DE DADOS
// String - PARA TEXTOS
// Int 16 bits (5 ou 6 caracteres), 32(1 a/ou  2 bilhões de caracteres), 64(mais caracteres do que de 32 bits)
// float - NÚMEROS DECIMAIS
// double - NÚMEROS DECIMAIS COM CASAS MAIS GRANDES
// Bool - TRUE OU FALSE
// Character - apenas um caracter


// VARIAVEIS
print("------------------- VARIAVEIS -------------------")
var name = "Ronald";
print("NAME:", name);

var lastName: String = "Alves"

print("LASTNAME:", lastName)

// String? - Opcional ter um valor
var name2: String?;
name2 = "Otavio"

print("NAME - 2:", name2)


// CONSTANTS
print("------------------- CONSTANTS -------------------")
// VALORES NÃO PODEM SER REATRIBUIDOS!

let cityName = "Juiz de Fora"
//cityName = "Belo Horizonte" - ISSO NÃO FUNCIONA COM CONSTANTS

print("CITY:", cityName)

// STRING
print("------------------- STRING -------------------")

let multilineText = """
blablabla
blablabla
blablabla
blablabla
blablabla
blablabla
blablabla
blablabla
blablabla

"""

print(multilineText)

// -- concatenar
let text1 = "Hello";
let text2 = "World";
print(text1 + text2)
print("Hello \(text2) 2" )

// -- emoji - Press "ctrl + cmd + space" while in XCode


//let emoji = "Hello, I am fine 😀 "
//print(emoji)

let caracter: Character = "😀";
var emoji = "Hello,I am fine ";
emoji.append(caracter);
print(emoji)

// -- contar caracteres(espaços também são considerados)
print(emoji.count)

// -- verificar string vazia
let myValue = "with content";

if(myValue.isEmpty){
    print("myValue is Empty")
}else{
    print("myValue is not Empty")
}

// -- prefix - retorna o máximo de caracteres a serem retornados do qual foi informado
print(emoji.prefix(1))
print(emoji.prefix(5))



// OPCIONALS
print("------------------ OPCIONALS ------------------")

var number :Int?
number = 21
//print(number) //console: Optional(21)
print(number!) //console: 21 => para remover o texto opcional precisamos colocar o !

print(number ?? "no value");

//esta atribuindo o valor de number a year
if let year = number {
    print("the age is + ",year)
}else{
    print("no value")
}



func returnAge(myAge: Int?){
    
    // é executado quando a expressão for contrario do esperado, no caso se age for diferente de myAge ele ira retornar "inform your age"
    guard let age = myAge else{
        print("inform your age");
        return;
    }
    
    print("Your age is: ", myAge)
    
}

returnAge(myAge: number)


print("------------------ CHANGE DATATYPE ------------------")

let number1 = "20"
let number2 = 60

// abaixo estamos convertendo o number 1 para inteiro e para forcar essa mudanca de tipo colocamos o "!" no final.
let sum = Int(number1)! + number2
print(sum);


// Aqui não precisa do !(force) pois eu estou atribuindo o Int(number1) ao num1 e a passagem de valor
// possui uma certeza
if let num1 = Int(number1){
    let sum = num1 + number2
    print(sum)
}else{
    print("inform one number");
}


print("------------------ IF ------------------")

// == -> IGUAL
// === -> IDENTICO

let age2 = 22;

if(age2 == 22){
  print("Your age is 22")
}else if(age2 == 23){
 print("Your age is 23")
}else{
  print("Your age is \(age2)")
}


print("------------------ SWITCH ------------------")

let number_1 = 21
print(type(of: number_1))

switch number_1 {
case 10:
  print(10)
case 20:
  print(20)
case 21...30:
  print("The number is entry 21 and 30")
default:
  print(number_1)
}


let day = "domingo";

switch(day){
  case "sabado":
  print("Vamos passear, hoje é sabado!");
  case "segunda", "terca", "quarta":
  print("Bora trabalhar!");
  case "domingo":
   print("Vamos passear, hoje é domingo!");
   default:
   print("Bora trabalhar!");
}

print("------------------ FOR ------------------")


let number_2 = 100;

for i in 1...number_2{
  print("The number is \(i)")
}


let letras = "ABCDEF";

for letra in letras{
  print(letra)
}



let names = ["Ronald", "Guilherme", "Luisa", "Silvana"];


for name in names{
  print(name);
}


print("------------------ ARRAYS ------------------")


var nameList = ["Ronald", "Guilherme", "Luisa", "Silvana"];

print(nameList);

//Print de um valor de uma posicao especifica
print(nameList[1])

//Quantos itens tem no array
print(nameList.count)


//Quantos caracteres tem um item do array
print(nameList[2].count)

//Adicionar um item no array
nameList.append("Rosa");
print(nameList);

//Remover um item no array
nameList.remove(at: 1)
print(nameList);



print("------------------ TUPLAS ------------------")
// ARRAY - TODOS ITENS SÃO SO DE UM TIPO
// TUPLAS - ITEMS PODEM MUDAR SUA TIPAGEM


//ARRAY
var nameList2 = ["Ronald", "Guilherme", "Luisa", "Silvana"];

// TUPLAS
var usuario2 = ("Ronald", 22, 32323232, true);
print(usuario2.0);


let (name3, age, phone, bool) = usuario2;
print(name3)


print("------------------ FUNCTIONS ------------------")

func hello(name: String){
  print("Hello \(name)");
}

hello(name: "Ronald");



// Quando uma função tem retorno adicionamos " -> e o tipo do retorno"
func sum(value1: Int, value2: Int) -> Int{
  return value1 + value2
}

let value1 = 50;
let value2 = 90

let res = sum(value1: 10, value2: 20);
let res2 = sum(value1: value1, value2: value2);

print("RES", res);
print("RES2", res2);


print("------------------ Classes ------------------")

class Person{

  // variaveis
  var name = "";
  var age = 0;


  // constuctor -> Funcao executada quando a classe é "chamada"
  init(nameParam: String, ageParam: Int){
    self.name = nameParam;
    self.age = ageParam
  }

  // metodos = funcoes
  func hola() -> String{
    return "Hello World Personas"
  }

}


let person1 = Person(nameParam: "Otavio", ageParam: 21);
print(person1.name)
