import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Popup {
        id: summaryModal
        width: parent.width / 3
        height: parent.height / 3
        anchors.centerIn: parent
        modal: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        Column {

            Row {
                Label {
                   id: frst
                }
                TextArea {
                    text: "First Name: " + frstNameText.text
                }
            }

            Row {
                Label {
                   id: lst
                }
                TextArea {
                    text: "Last Name: " + lstNameText.text
                }
            }

            Row {
                Label {
                   id: gender
                }
                TextArea {
                    text: "Gender: " + genderBox.currentText
                }
            }

            Row {
                Label {
                   id: age
                }
                TextArea {
                    text: "Age: " + ageSpinBox.displayText
                }
            }
        }
    }

    Column{
        id: myColumn
        anchors.fill: parent

        Grid {
            id: myGrid
            width: parent.width - (parent.width / 2)
            height: parent.height - (parent.height / 2)
            spacing: 10
            rows: 5
            columns: 2
            anchors.centerIn: parent

            Label {
                id: firstNameLbl
                text: qsTr("First Name")
            }

            TextField {
                id: frstNameText
                text: qsTr("")
            }

            Label {
                id: lastNameLbl
                text: qsTr("Last Name")
            }

            TextField {
                id: lstNameText
                text: qsTr("")
            }

            Label {
                id: genderLbl
                text: qsTr("Gender")
            }

            ComboBox {
                id: genderBox
                model: ['Male', 'Female', 'Other']
                //onCurrentTextChanged:
            }

            Label {
                id: ageLbl
                text: qsTr("Age")
            }

            SpinBox {
                id: ageSpinBox
                editable: true
            }
            Button {
                id: button
                text: qsTr("Click Me")
                x: parent.width / 2
                onClicked: summaryModal.open()
            }

        }

    }
}
