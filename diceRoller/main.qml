import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function calc() {
        //go through each item in the listView

        let model = listView.model;
        let total = 0;

        //Check each Dice
        for(let i = 0; i < model.count; i++) {
            let item = model.get(i);

            if(item.value > 0) {
                console.log(`Name: ${item.name}`); //the model
                console.log(`Number: ${item.number}`);
                console.log(`Value: ${item.value}`);

                //roll each dice
                for(let roll = 0; roll < item.value; roll++) {
                    let min = 1;
                    let max = item.number;

                    //let subTotal = Math.floor(Math.random() * (max - min + 1) + min);
                    let subTotal = Math.floor(Math.random() * (max) + min); //because with 1 being the min value always, it makes no sense to keep "- min + 1" of the sample code
                    console.log(`Roll: ${subTotal}`);
                    total = total + subTotal;
                }

                console.log(`Total: ${total}`);
            }
            console.log(`Total: ${total}`);
        }
        lblTotal.text = `Total: ${total}`;
    }

    Column {
        id: column
        spacing: 10
        anchors.fill: parent

        ListView {
            id: listView
            width: parent.width
            focus: true
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 100
            model: DiceModel {}

            delegate: DiceDelegate {}
        }

        Row {
            id: row
            width: parent.width
            height: 50
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            Rectangle {
                anchors.fill: parent
                color: "grey"

                Label {
                    id: lblTotal
                    color: "white"
                    text: "Total: 0"
                    font.pointSize: 25
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                }

                Button {
                    id: button
                    text: "Calculate"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    onClicked: calc()
                }
            }
        }


    }
}
