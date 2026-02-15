package laba1.animals.mammals

class Elephant(
    body: String,
    paws: String,
    private var trunk: String
) : AbstractMammal(body, paws, "Слон") {

    //переопределенные абс. ф-ции
    override fun eat(): String {
        return "Слон ест!"
    }

    override fun getInfo(): String {
        return """
            животное: слон
                тело: $body
                лапы: $paws
                хобот: $trunk
        """.trimIndent()
    }

    override fun returnThanks(): String {
        return "Слон благодарит работника!"
    }
}