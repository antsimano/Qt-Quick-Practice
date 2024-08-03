import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 1200
    height: 800

    header: Label {
        text: qsTr("MATIGNON: Az 'ehető' mirepoix; felpuhított zöldségkeveréket jelent. A mirepoix keveréket vajban nagyon lassan megpirítjuk kevés sóval, cukorral, kakukkfűvel és babérlevéllel. Miután megpuhultak, madeira bort adunk hozzá, és addig főzzük, amíg a leve elpárolog - ez a 'matignon au magigre'. Elkészíthető 'au gras' módon is (sonka vagy bacon hozzáadásával, 15 x 15 x 6 mm szeletekkel), vagy más ételek alkotóelemeként is felhasználható.")
        font.pixelSize: Qt.application.font.pixelSize * 2
        wrapMode: Text.WordWrap
        padding: 10
    }

    Image {
        id: image
        width: 700
        height: 600
        source: "qrc:/images/matignon.jpg"
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent
    }
}
