import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    width: 1150
    height: 760

    title: qsTr("Hőkezelés")

    Rectangle {
        id: textContainer
        width: page.width - (page.width / 20)
        height: page.height - (page.height / 10)
        anchors.centerIn: parent
        Column {
            id: column1
            width: parent.width / 2
            height: parent.height
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            spacing: 10

            Rectangle {
                width: (column1.width) - (column1.width / 20)
                height: (column1.height / 5) - (column1.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    width: 451
                    height: 43
                    text: qsTr("HŐKÖZVETÍTŐ ANYAGOK: víz, alaplé, főzőlé, húslé; zsiradékok: olaj, zsír, vaj, margarin; pára: vízgőz, borgőz.")
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    font.pointSize: 11
                }
            }
            Rectangle {
                width: (column1.width) - (column1.width / 20)
                height: (column1.height / 5) - (column1.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    width: 451
                    height: 64
                    text: qsTr("SZÁRAZHŐ: a hőt a környező levelő melegítésével nyerjük. Az elkészítés lefedés nélkül történik, és zsiradékot használunk fel.")
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    font.pointSize: 11
                }
            }
            Rectangle {
                width: (column1.width) - (column1.width / 20)
                height: (column1.height / 5) - (column1.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    width: 451
                    height: 64
                    text: qsTr("NEDVESHŐ: meleg, akár forrásban lévő folyadék adje le. Fedő alatt, több-kevesebb folyadékkal, edényben történik.")
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    font.pointSize: 11
                }
            }
            Rectangle {
                id: rectangle
                width: (column1.width) - (column1.width / 20)
                height: (column1.height / 4) - (column1.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    x: 20
                    y: 16
                    width: 451
                    height: 113
                    text: qsTr("ELŐNYEI: elpusztítja a patogén mikroorganizmusokat, esetlegesen megbúvó paraziták többségét. Javítja az élelmiszerek organoleptikus (érzékszervi) jellemzőit, kiemeli az ízanyagokat, aromákat, megkönnyíti az emésztést.")
                    anchors.verticalCenter: parent.verticalCenter
                    //anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 11
                }
            }
            Rectangle {
                id: rectangle1
                width: (column1.width) - (column1.width / 20)
                height: (column1.height / 3) - (column1.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    x: 0
                    y: 0
                    width: 451
                    height: 136
                    text: qsTr("HÁTRÁNYAI: főleg, hosszabb időtartamú hőkezelés során az élelmiszerek elveszíthetik tápértékük jelentős részét. A leveles zöldségek például sok vitamint veszítenek, ha túl sokáig merítjük hőközlő folyadékba őket. Gyengülhet az ízhatás. Elhúzódó hőkezelés során egyes élelmiszerek állaga és íze megváltozhat.")
                    anchors.verticalCenter: parent.verticalCenter
                    //anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 11
                }
            }
        }
        Column {
            id: column2
            x: 546
            width: parent.width / 2
            height: parent.height
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            spacing: 10
            Rectangle {
                width: (column2.width) - (column2.width / 20)
                height: (column2.height / 7) - (column2.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    width: 451
                    height: 21
                    text: qsTr("A HŐKEZELÉS IDEJE az alábbiaktól függ:")
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    font.pointSize: 11
                }
            }
            Rectangle {
                width: (column2.width) - (column2.width / 20)
                height: (column2.height / 5) - (column2.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    width: 451
                    height: 87
                    text: qsTr("-> AZ ÉLELMISZER ÁLLAGA, SZERKEZETE: a kötőszövetben gazdag húsok hosszú elkészítési időt igényelnek, míg a halak húsának szerkezete jóval lazább, puhább, rövidebb idő is elegendő.")
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    font.pointSize: 11
                }
            }
            Rectangle {
                width: (column2.width) - (column2.width / 20)
                height: (column2.height / 7) - (column2.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    width: 451
                    height: 27
                    text: qsTr("-> AZ ÉLELMISZER MÉRETE, nagysága, térfogata.")
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    font.pointSize: 11
                }
            }
            Rectangle {
                width: (column2.width) - (column2.width / 20)
                height: (column2.height / 5) - (column2.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    width: 451
                    height: 52
                    text: qsTr("-> AZ ELKÉSZÍTÉSI MÓD - ennek megválasztása az elkészítendő élelmiszer jellegétől függ.")
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    font.pointSize: 11
                }
            }
            Rectangle {
                width: (column2.width) - (column2.width / 20)
                height: (column2.height / 3) - (column2.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    width: 451
                    height: 135
                    text: qsTr("-> A HŐMÉRSÉKLET: magasabb hőmérsékleten gyorsabban elkészülnek az ételek, azonban egyes esetekben a túl magas hőfok elronthatja az ízt. Lassú, kis tűz (four doux): 150-160°C. Mérsékelt láng (four modéré): 175-190○°C. Élénk láng (four chaud): 205-220°C. Nagy láng: (four tres chaud): 230-245°C.")
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    font.pointSize: 11
                }
            }
            Rectangle {
                width: (column2.width) - (column2.width / 20)
                height: (column2.height / 5) - (column2.height / 20)
                radius: 25
                border.color: "orange"
                border.width: 3
                Label {
                    width: 451
                    height: 88
                    text: qsTr("-> AZ ÍZ, ÁLLAG KIALAKULÁSA: egy bizonyos állag és egy kívánt íz elérése pontosan beállított elkészítési időt feltételez bizonyos esetekben (pl. a steak különböző változatai).")
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    font.pointSize: 11
                }
            }
        }
    }
}
