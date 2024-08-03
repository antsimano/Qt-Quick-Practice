import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 1200
    height: 800

    header: Label {
        text: qsTr("Zöldségek darabolása")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Grid {
        id: darabolasGrid
        width: 912
        height: 485
        anchors.centerIn: parent
        spacing: 10
        rows: 8
        columns: 2

        Rectangle {
            id: rectBatonnets
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Batonnets, small sticks"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectJulienne
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Julienne"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectBrunoise
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Brunoise"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectMirepoix
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Mirepoix"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectSalpicon
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Salpicon"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectChiffonade
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Chiffonade"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectPrintaniere
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Printaniére / Jardiniére"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectMacedonie
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Macédonie"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectPaysanne
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Paysanne"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectLosange
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Losange"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectGranite
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Graniture de marmite"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectRondelle
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Rondelle / Ovale"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectPariConcasse
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Paradicsom Concassé"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }

        Rectangle {
            id: rectBurgDar
            width: 450
            height: 60
            color: "#ffffff"
            radius: 15
            border.color: "#5b4df2"

            Label {
                text: "Burgonya darabolás"
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 20
                font.bold: true
            }
        }
    }
}
