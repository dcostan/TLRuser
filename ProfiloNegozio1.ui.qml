import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("Moda Sport")

    ScrollView {
        id: frame
        clip: true
        anchors.fill: parent

        Flickable {
            contentHeight: 730
            width: parent.width

            Image {
                x: (stackView.width/2) - width/2
                y: 20
                width: 80
                height: 80
                source: "qrc:/images/shop1.png"
            }

            Text {
                y: 120
                width: stackView.width
                text: qsTr("TeLoRaccomandano")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 16
            }

            ProgressBar {
                x: stackView.width/2 - width/2
                y: 155
                width: 200
                value: 0.93
            }

            Text {
                y: 180
                width: stackView.width
                text: qsTr("il 93% degli utenti")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 14
            }



            Text {
                x: 20
                y: 255
                text: qsTr("Panoramica")
                color: "#9b9b9b"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            ListView {
                id: list
                y: 280
                interactive: false
                width: stackView.width
                height: stackView.height
                property string bgcolor: "#d9d9d9"
                model: [ ["posizione", "via della Resistenza 13, Padova, Italia"], ["time", "<font color='red'>Chiuso</font> - Apre alle ore 16"], ["telefono", "049 6643651"], ["internet", "www.modaesport.com"]]
                delegate: ItemDelegate {
                    width: stackView.width
                    Rectangle {
                        color: "#ffffff"
                        anchors.fill: parent
                        Image {
                            x: 30
                            y: parent.height/2 - height/2
                            width: 20
                            height: 20
                            source: "qrc:/images/" + modelData[0] + ".png"
                        }
                        Text {
                            x: 65
                            y: parent.height/2 - height/2
                            text: modelData[1]
                            font.pixelSize: 13
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


            Text {
                x: 20
                y: 505
                text: qsTr("Recensioni")
                color: "#9b9b9b"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            ListView {
                y: 530
                interactive: false
                width: stackView.width
                height: stackView.height
                property string bgcolor: "#d9d9d9"
                model: [ ["elisa", "Elisa Morini<br><i>Status platino</i><br><p>Negozio sportivo con qualità medio alta. Personale gentile e preparato. Puoi trovare un buon assortimento di scarpe da trekking. Ottimo e grande parcheggio riservato ai clienti. Il negozio è molto vicino alla Stanga, ma l'entrata è un po' scomoda.</p>"] ]
                delegate: ItemDelegate {
                    width: stackView.width
                    height: 180
                    Rectangle {
                        color: "#ffffff"
                        anchors.fill: parent
                        Image {
                            x: 25
                            y: parent.height/2 - height/2
                            width: 40
                            height: 40
                            source: "qrc:/images/" + modelData[0] + ".png"
                        }
                        Text {
                            x: 80
                            y: parent.height/2 - height/2
                            width: stackView.width - x - 20
                            text: modelData[1]
                            font.pixelSize: 13
                            wrapMode: Text.WordWrap
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
