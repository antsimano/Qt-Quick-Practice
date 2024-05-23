import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string strDrink: ""
    property string strFood: ""

    Popup {
        id: popup
        anchors.centerIn: parent
        width: 200
        height: 150
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        Column {
            anchors.fill: parent
            spacing: 25
            Label {
                id: lblDetails
                text: strFood + " with " + strDrink
            }
            Button {
                id: closeButton
                text: "Close"
                onClicked: popup.close()
            }
        }
    }

    Row {
        id: row
        x: 17
        y: 56
        width: 466
        height: 181
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter

        GroupBox {
            id: groupBox
            width: 220
            height: parent.height
            title: qsTr("Food")

            property string strDrink: ""
            property string strFood: ""

            Column {
                id: colFood
                anchors.fill: parent
                spacing: 5

                RadioButton {
                    id: rdoFish
                    text: qsTr("Fish")
                }

                RadioButton {
                    id: rdoSteak
                    text: qsTr("Steak")
                }

                RadioButton {
                    id: rdoVegan
                    text: qsTr("Vegan")
                }
            }
        }

        GroupBox {
            id: groupBox1
            width: 220
            height: parent.height
            Column {
                id: colDrinks
                anchors.fill: parent
                spacing: 5
                RadioButton {
                    id: rdoWater
                    text: qsTr("Water")
                }

                RadioButton {
                    id: rdoWine
                    text: qsTr("Wine")
                }

                RadioButton {
                    id: rdoSoda
                    text: qsTr("Soda")
                }
            }
            title: qsTr("Drinks")
        }
    }

    Button {
        id: button
        x: 270
        y: 371
        text: qsTr("Click Me")
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Connections {
        target: button
        onClicked: {
            // get the food
            for (let i = 0; i < colFood.children.length; i++) {
                let rdo = colFood.children[i]
                if(rdo.checked) strFood = rdo.text
            }
            // get the drink
            for (let i = 0; i < colDrinks.children.length; i++) {
                let rdo = colDrinks.children[i]
                if(rdo.checked) strDrink = rdo.text
            }

            popup.open()
        }
    }
}












