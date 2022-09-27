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
let number2 = 30

let sum = Int(number1)! + number2
print(sum);


if let num1 = Int(number1){
    let sum = num1 + number2
    print(sum)
}else{
    print("inform one number");
}



