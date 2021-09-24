import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 380
    height: 640

    title: qsTr("Tutorial")

    Connections {
        target: next
        onClicked: {
            stackView.tutorialIndex = stackView.tutorialIndex + 1
            if(stackView.tutorialIndex < 20)
                stackView.push("Tutorial.ui.qml")
            else
                stackView.pop(null)
        }
    }

    Image {
        id: tutorialImage
        x: 0
        y: (stackView.height/2) - height/2
        width: stackView.width
        height: width * 1.776
        source: "qrc:/images/tutorial/" + stackView.tutorialIndex + ".png"
    }

    MouseArea {
        id: next
        x: 0
        y: stackView.height - 100
        height: 100
        width: stackView.width
    }
}
