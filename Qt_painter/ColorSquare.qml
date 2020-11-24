import QtQuick 2.0


Rectangle{
    id:root
    width:20
    height:20
    color:"green"
    signal clicked
    property bool active:false
    border.color:active? "#666666":"f0f0f0"

    MouseArea{
        id:area
        anchors.fill:parent
        onClicked:{
            root.clicked()
        }
    }
}
