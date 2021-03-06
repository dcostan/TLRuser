import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("Inviti")

    ScrollView {
        id: frame
        clip: true
        width: stackView.width
        height: stackView.height - 140

        Flickable {
            contentHeight: 600
            width: parent.width


            Text {
                x: 20
                y: 25
                text: qsTr("Storico cashback amici invitati")
                color: "#9b9b9b"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            ListView {
                id: list
                y: 50
                interactive: false
                width: stackView.width
                height: stackView.height
                property string bgcolor: "#d9d9d9"
                model: ListModel {
                    ListElement { name: "Filippo"; date: "27/9/2021"; token: "65 token"}
                    ListElement { name: "Davide"; date: "25/9/2021"; token: "15 token"}
                }
                delegate: ItemDelegate {
                    width: stackView.width
                    height: 100
                    Rectangle {
                        color: "#ffffff"
                        anchors.fill: parent
                        Rectangle {
                            x: 25
                            y: parent.height/2 - height/2
                            width: 5
                            radius: 5
                            color: "#FF0000"
                            height: width
                            visible: index == 1 || index == 2
                        }
                        Text {
                            x: 80 - width/2
                            y: parent.height/2 - height/2 - 15
                            text: "<b>" + model.name + "</b>"
                            font.pixelSize: 17
                        }
                        Text {
                            x: 80 - width/2
                            y: parent.height/2 - height/2  + 15
                            text: model.date
                            font.pixelSize: 13
                        }
                        Text {
                            x: parent.width - 150
                            y: parent.height/2 - height/2
                            text: index == 2 ? "<u>" + model.token + "</u>" : "<b>" + model.token + "</b>"
                            font.pixelSize: 17
                        }
                        Rectangle {
                            x: stackView.width - width
                            y: parent.height - 2
                            width: index !== list.count-1 ? stackView.width-15 : stackView.width
                            border.color: list.bgcolor
                            height: 2
                            border.width: 1
                            Rectangle {
                                y: 0
                                width: parent.width
                                color: "#ffffff"
                                height: 1
                            }
                        }
                    }
                }
                Rectangle {
                    x: stackView.width - width
                    y: -2
                    width: stackView.width
                    border.color: list.bgcolor
                    height: 2
                    border.width: 1
                    Rectangle {
                        y: 1
                        width: parent.width
                        color: "#ffffff"
                        height: 1
                    }
                }
            }

        }
    }



    Image {
        x: stackView.width/2 - width/2
        y: stackView.height - 120
        width: 70
        height: 70
        source: "qrc:/images/add.png"
        MouseArea {
            id: add
            anchors.fill: parent
        }
    }


    Connections {
        target: add
        onClicked: {
            stackView.push("NuovoInvito.ui.qml")
            new Promise(resolve => setTimeout(resolve, (2000)))
            list.model.append({ name: "Vanessa", date: "12/11/2021", token: "Invitata" })
        }
    }
}
