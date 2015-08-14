/*
    This file is part of etherwall.
    etherwall is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    etherwall is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with etherwall. If not, see <http://www.gnu.org/licenses/>.
*/
/** @file PasswordDialog.qml
 * @author Ales Katona <almindor@gmail.com>
 * @date 2015
 *
 * Password dialog
 */

import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Dialogs 1.2

Dialog {
    title: qsTr("Confirm operation")
    width: Math.max(parent.width * 0.6, 500)
    property string password

    function openFocused() {
        open()
        accountPW.focus = true
    }

    Row {
        Keys.onEscapePressed: {
            close()
        }

        Label {
            text: qsTr("Password: ")
        }

        TextField {
            id: accountPW
            echoMode: TextInput.Password
            width: accountNewDialog.width * 0.7
            focus: true

            onTextChanged: {
                password = text
            }
        }
    }
}
