   M S B A M L   `   `   `  ���� I  ETSSChecker_GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:TSSChecker_GUITSSChecker_GUI      TSSChecker_GUI.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:TSSChecker_GUI       � Title$  TSSChecker GUI��$��266.197��$��241.549�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� .+��� .+��� -    ��Name$ BuildNumberLbl��$��Build Number��$��Center=�$
��Bold"��� -    ��Name$ BuildNumberTxtBox��$��23�� �� TextWrapping$
 Wrap=�$�� ��$��Center=�$��Center=�$
��15,0q�$	��180�� � ToolTip$N HUse only if looking for a specific build number of a version. (Optional)���� -   $ iOSModelLbl��$��
iOS Device��$��Center=�$
��Bold"��� -   $ iOSModelTxtBox��$��23��$
 Wrap=�$�� ��$��Center=�$��Center=�$
��15,0q�$	��180��$* $An iOS device model name. (Required)���� -   $ ECIDLbl��$
��ECID��$��Center=�$
��Bold"��� -   $ 
ECIDTxtBox��$��23��$
 Wrap=�$�� ��$��Center=�$��Center=�$
��15,0q�$	��180��$7 1The ECID can be retrieved from iTunes. (Required)���� -   $ iOSVersionLbl��$��iOS Version��$��Center=�$
��Bold"��� -   $ iOSVersionTxtBox��$��23��$
 Wrap=�$�� ��$��Center=�$��Center=�$
��15,0q�$	��180��$( "Specify an iOS version. (Required)���� -	    ��Name$ StartBtn��$��
Save blobs��$��0,10,0,0q�$��Center=�$��Center=�$��80��