object Form1: TForm1
  Left = 233
  Top = 136
  Caption = 'Form1'
  ClientHeight = 292
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClick = FormClick
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 128
    Width = 31
    Height = 13
    Caption = 'Label1'
    OnMouseDown = Label1MouseDown
  end
  object Memo1: TMemo
    Left = 8
    Top = 24
    Width = 201
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    OnMouseDown = Memo1MouseDown
  end
  object Button1: TButton
    Left = 215
    Top = 20
    Width = 89
    Height = 33
    Caption = 'Button1'
    TabOrder = 1
    OnMouseDown = Button1MouseDown
  end
  object Panel1: TPanel
    Left = 216
    Top = 88
    Width = 185
    Height = 113
    Caption = 'Panel1'
    TabOrder = 2
    OnMouseDown = Panel1MouseDown
    object Edit1: TEdit
      Left = 16
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
      OnMouseDown = Edit1MouseDown
    end
  end
  object Button2: TButton
    Left = 8
    Top = 264
    Width = 89
    Height = 33
    Caption = 'Front'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 112
    Top = 264
    Width = 89
    Height = 33
    Caption = 'Back'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 216
    Top = 264
    Width = 89
    Height = 33
    Caption = 'Lock'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 334
    Top = 264
    Width = 89
    Height = 33
    Caption = 'Quit'
    TabOrder = 6
    OnClick = Button5Click
  end
end
