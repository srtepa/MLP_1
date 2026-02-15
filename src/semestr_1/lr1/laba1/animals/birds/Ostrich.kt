package laba1.animals.birds

class Ostrich(
    body: String,
    wings: String
) : AbstractBird(body, wings, "Страус") {

    private var runSpeed: String = "Очень быстро бегает"

    override fun eat(): String{//переопределяем абс. ф-ции
        return "Страус ест мелких насекомых"
    }

    override fun getInfo(): String {
        return """
            животное: страус
                тело: $body
                крылья: $wings (не летает)
                скорость бега: $runSpeed
        """.trimIndent()
    }

    override fun returnThanks(): String {
        return "Страус благодарит работника!"
    }
}