; 左右 Alt キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Alt キーの空打ちで IME を「英数」に切り替え
; 右 Alt キーの空打ちで IME を「かな」に切り替え
; Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作
;
; Author:           Munetaka-O  https://github.com/Munetaka-O/alt-ime-ahk2
; Original author:  karakaram   https://github.com/karakaram/alt-ime-ahk

#Requires AutoHotkey v2.0

#Include IMEv2.ahk

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
A_MaxHotkeysPerInterval := 350

; 既存のインスタンスが存在する場合、終了して新たにインスタンスを開始
#SingleInstance Force

; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::

; 上部メニューがアクティブになるのを抑制
*~LAlt::Send "{Blind}{vk07}"
*~RAlt::Send "{Blind}{vk07}"

; 左 Alt 空打ちで IME を OFF
LAlt up::{
   if (A_PriorHotkey == "*~LAlt")
    {
        IME_SET(0)
    }
}

; 右 Alt 空打ちで IME を ON
RAlt up::{
    if (A_PriorHotkey == "*~RAlt")
    {
        IME_SET(1)
    }
}

; テンキー変更
;LCtrl & [::Send "{Enter}"
;LCtrl & '::Send "*"
;LCtrl & `;::Send "+"
;LCtrl & /::Send "/"
;LCtrl & .::Send "."
LCtrl & ,::Send "00"
LCtrl & m::Send "{Blind}{LCtrl}0"
LCtrl & j::Send "1"
LCtrl & k::Send "2"
LCtrl & l::Send "3"
LCtrl & u::Send "4"
LCtrl & i::Send "5"
LCtrl & o::Send "6"
LCtrl & 7::Send "7"
LCtrl & 8::Send "8"
LCtrl & 9::Send "9"
