package laba1.animals

abstract class AbstractAnimal(
    protected var body: String,
    open var type: String = "Неопределенное животное"
) {
    //объявляем абстрактные ф-ции
    abstract fun eat(): String
    abstract fun getInfo(): String
    abstract fun returnThanks(): String
}