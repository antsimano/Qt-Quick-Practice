import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        x: 108
        y: 32
        width: 200
        height: 214
        anchors.verticalCenter: parent.verticalCenter
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: lblFood
            color: "#e02010"
            text: qsTr("Selected Item")
            font.pointSize: 10
            font.bold: true
        }

        ComboBox {
            id: cmbFood
            model: ["Pizza", "Steak", "Pasta"]
            onCurrentTextChanged: lblFood.text = cmbFood.currentText
        }

        Label {
            id: lblPeople
            color: "#e02010"
            text: qsTr("Selected Item")
            font.pointSize: 10
            font.bold: true
        }

        ComboBox {
            id: cmbPeople
            editable: true
            textRole: "text"

            model: ListModel {
                id: listmodel
                ListElement {text: "Bryian"; age: "45"}
                ListElement {text: "Tammy"; age: "49"}
                ListElement {text: "Rango"; age: "15"}
            }

            onCurrentIndexChanged: lblPeople.text = model.get(currentIndex).text + " = " + model.get(currentIndex).age
            onAccepted: {
                if(find(editText) === -1) {
                    model.append({"text": editText, "age": "0"})
                    currentIndex = find(editText)
                }
            }
        }
    }
}
