   M S B A M L   `   `   `  ����  TodoListClient    TodoListClient.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  To Do List Client��5   	   $	��400��6#   $	��400��60    � WindowStartupLocation$ CenterScreen=�6<   .��5      � $��12q�6    � 	Resources 5   
      TodoHint j� Stretch j� 
AlignmentX j� 
AlignmentY �� 	Transform T� X T� Y	 !� Visual
 �� TextAlignment��%  &	        !� 5      $
 None=�6+   $
 Left=�6:   $	 Top=�6L    5	      T� 5
      $ 4Q�6)   $ 7Q�6/   	 5      � 5      .+�5      �� $��Enter to do item��6$   $��Normal"�6<   
�������$��12(�5      $
 Justify=�6(   5      5      5      .+�5   
   �� $��0��6   $��5q�6"   $	��Top=�6-   $	��351��6E   .+�5      � $
��Left=�6   $	��346��6.   .+�5      �� -   5         ��Name$ UserName��5   S   $
��Left=�6   $��
Not Signed��63   $��0q�6H   $	��261��6e   $��30��6q   �� 5      -   5         ��Name$ SignInButton��5   a   $��Right=�6   $��Sign In��65   $��0q�6G   $��80��6w   $��30��6�   ��5      �� 5       �� 
TargetType" ��6    5      5      5      �� 5      $��0,0,0,0q�6   $��Create a To Do item��6(   .��5!      � $��0q�6   $
��Left=�6"   $	��388��6=    � ColumnDefinitions 5"      �� 5#      $
��130* �6+   �� 5$      $	��85* �6+   .+�5&      �� -   5         ��Name$ TodoText��5'      $��0��5&      $
��Left=�6.   $��34��6I   $��12(�6U    �� TextWrapping$
 Wrap=�6c   $	��Top=�6w   $	��199��6�   $��	10,10,0,0q�5'      $��1��62   $��3q�6?   .��6K   ��5(      �� 5)      " ��6$   .�5*   "   ��  �� Property � �� �� Value
 ���� 6?    �� Triggers 5+   "   �� 5,   &    �� Binding 62   �� *Text+ �� ElementName$ TodoText�� �� Value  6a   .a�5-   *   ��  � ��# [  6G   5.   '   50      .��51   )   52      �� 53      -   5        $��1��53      $��Add item��6-   $
��Left=�6@   $��0,10,0,0q�6[   $	��Top=�6m   $	��101��6�    J� RenderTransformOrigin$ -0.013,0.15&�6�   $��34��6�    �� 	IsDefault . $��2��6�   54      56      &   System.Windows.Controls.DataGrid  57      -   5          Name$ TodoList��57      $��0,0,0,0q�6)      AutoGenerateColumns .  ��. $��Disabled=�6|      
IsReadOnly . $	��350��58         CanUserAddRows .     CanUserDeleteRows .  $	��230��6^      GridLinesVisibility$
 None=�6k   ���	#FFFFFFFF   Columns 5:      0  *System.Windows.Controls.DataGridTextColumn  5;      ,  &System.Windows.Controls.DataGridColumn    Header$  To Do Items��6)   !   Width5  /System.Windows.Controls.DataGridLengthConverter$! * 6X   1  +System.Windows.Controls.DataGridBoundColumn"   Binding" 6>   �� *Title+6X   5>      5?      5@      5A      