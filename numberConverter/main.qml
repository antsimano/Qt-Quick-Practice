import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function convert() {
        let value = txtFrom.text
        let ret = 0
        switch(cmbType.currentIndex) {
        case 0: // inches to feet
            ret = inchToFeet(value)
            break;
        case 1: // feet to inches
            ret = feetToInch((value))
            break;
        }

        lblResult.text = ret
    }

    function inchToFeet(value) {
        return value / 12
    }

    function feetToInch(value) {
        return value * 12
    }

    Column {
        id: containerColumn
        width: parent.width / 2.4
        height: parent.height / 2
        anchors.centerIn: parent
        spacing: 10

        Grid {
            id: myGrid
            width: (parent.width) - (parent.width / 10)
            height: (parent.height) - (parent.height / 3)
            anchors.centerIn: parent
            columns: 2
            rows: 3
            spacing: 10

            Label {
                id: lblType
                text: "Type"
            }

            ComboBox {
                id: cmbType
                model: ListModel {
                    id: cbItems
                    ListElement {text: "Inches to feet"}
                    ListElement {text: "Feet to inches"}
                }
            }

            Label {
                id: lblFrom
                text: "From:"
            }
            TextField {
                id: txtFrom
            }

            Label {
                id:lblResLabel
                text: "Result:"
            }
            Label {
                id: lblResult
                text: "Nothing"
                font.pointSize: 15
                font.bold: true
            }
        }

        Button {
            id: btnConvert
            text: "Convert"
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height - height
            width: 100
            height: 40

            onClicked: convert()
        }
    }
}
