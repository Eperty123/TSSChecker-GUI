   M S B A M L   `   `   `  ����I  ETSSChecker_GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:TSSChecker_GUITSSChecker_GUI  5   	       TSSChecker_GUI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:TSSChecker_GUI     5   	     � Title$  TSSChecker GUI��5   	   $��266.197��6    $��241.549��61    � 
ResizeMode$ NoResize=�6A    � WindowStartupLocation$ CenterScreen=�6W   .��5	      � .+�5
   
   �� .+�5      �� -   5         ��Name$ BuildNumberLbl��5      $��Build Number��6,   $��Center=�6C   $
��Bold"�6`   �� 5      -   5         ��Name$ BuildNumberTxtBox��5      $��23��61    �� TextWrapping$
 Wrap=�6=   $�� ��6Q   $��Center=�6Y   $��Center=�6t   $
��15,0q�6�   $	��180��6�    � ToolTip$N HUse only if looking for a specific build number of a version. (Optional)��6�   �� 5      -   5        $ iOSModelLbl��5      $��
iOS Device��6)   $��Center=�6>   $
��Bold"�6[   �� 5      -   5        $ iOSModelTxtBox��5      $��23��6.   $
 Wrap=�6:   $�� ��6N   $��Center=�6V   $��Center=�6q   $
��15,0q�6�   $	��180��6�   $* $An iOS device model name. (Required)��6�   �� 5      -   5        $ ECIDLbl��5      $
��ECID��6%   $��Center=�64   $
��Bold"�6Q   �� 5      -   5        $ 
ECIDTxtBox��5      $��23��6*   $
 Wrap=�66   $�� ��6J   $��Center=�6R   $��Center=�6m   $
��15,0q�6�   $	��180��6�   $7 1The ECID can be retrieved from iTunes. (Required)��6�   �� 5      -   5        $ iOSVersionLbl��5      $��iOS Version��6+   $��Center=�6A   $
��Bold"�6^   �� 5      -   5        $ iOSVersionTxtBox��5      $��23��60   $
 Wrap=�6<   $�� ��6P   $��Center=�6X   $��Center=�6s   $
��15,0q�6�   $	��180��6�   $( "Specify an iOS version. (Required)��6�   �� 5      -	   5         ��Name$ StartBtn��5      $��
Save blobs��6'   $��0,10,0,0q�6<   $��Center=�6N   $��Center=�6i   $��80��6�   5      5      5       