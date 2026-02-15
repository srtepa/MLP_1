package laba1.animals.mammals

class Tiger(
    body: String,
    paws: String
) : AbstractMammal(body, paws, "Тигр") {

    private var stripes: String = "Полосы на шерсти"

    //переопред. ф-ции
    override fun eat(): String {
        return "Тигр ест!"
    }

    override fun getInfo(): String {
        return """
            Информация о тигре:
                тело: $body
                лапы: $paws
                полосы: $stripes
        """.trimIndent()
    }

    override fun returnThanks(): String {
        return "Тигр благодарит работника!"
    }
}