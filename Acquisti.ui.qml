import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("I miei acquisti")

    ScrollView {
        id: frame
        clip: true
        anchors.fill: parent

        Flickable {
            contentHeight: 600
            width: parent.width

            ListView {
                id: list
                y: 50
                interactive: false
                width: stackView.width
                height: stackView.height
                property string bgcolor: "#d9d9d9"
                model: [ ["27/9/2021", "16,00€"], ["25/9/2021", "170,00€"], ["12/11/2021", "11,00€"], ["29/08/2021", "120,00€"]]
                delegate: ItemDelegate {
                    width: stackView.width
                    height: 100
                    Rectangle {
                        color: "#ffffff"
                        anchors.fill: parent
                        Text {
                            x: 50
                            y: parent.height/2 - height/2
                            text: modelData[0]
                            font.pixelSize: 13
                        }
                        Text {
                            x: parent.width - 110
                            y: parent.height/2 - height/2
                            text: "<b>" + modelData[1] + "</b>"
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
}
