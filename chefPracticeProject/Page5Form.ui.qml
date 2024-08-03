import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 1200
    height: 800

    header: Label {
        text: qsTr("MIREPOIX (szabálytalan kocka): Hagyma, répa és zeller hagyományosan 2:1:1 arányú kombinációja. (De vannak más kombinációk is.) Egyes esetekben, pl. világos alaplénél, a répa helyett célszerű paszternákot használni. A tisztított sárgarépát, vöröshagymát és/vagy póréhagymát, szárzellert hosszában félbe vagy négyfelé vágjuk, majd keresztirányban egyenletes 'kockákra' daraboljuk. A nagyobb vöröshagymát célszerű a finomvágásnál nagyobb kockákra vágni. Felhasználástól függően vághatjuk a zöldségeket kisebb-nagyobb darabokra.")
        font.pixelSize: Qt.application.font.pixelSize * 2
        wrapMode: Text.WordWrap
        padding: 10
    }

    Image {
        id: image
        width: 700
        height: 600
        source: "qrc:/images/mirepoix.jpg"
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }
}
