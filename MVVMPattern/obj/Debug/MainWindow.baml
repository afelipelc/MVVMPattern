   M S B A M L   `   `   `  ����F  BMVVMPattern, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MVVMPatternMVVMPattern  5   	       MVVMPattern.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MVVMPattern     5   	     � Title$  Patrón MVVM - WPF��5   	   $��325.945��6#   $��775.172��64   $��16(�6D   .��5	      � $��15q�6    � ColumnDefinitions 5
   
   �� 5      $	��300 �6   �� 5      $
��317* �6   .+�5   
   �� $��Datos��6   $��0,0,15,0q�6"   .��5      �� .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�66   .+�5      �� $��Nombre: ��6   �� 5      -   5         ��Name$ 	nombreTxt��5   z   $	��150��6   ��6*   �� *PersonaActual.Nombre+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ Default=�6z   5      �� 5      $ 
Horizontal=�6   $��Right=�66   $��0,10,0,0q�6R   .+�5      �� $��	Apellidos��6   �� 5      $	��150��6   ��6*   �� *PersonaActual.Apellidos+$ TwoWay=�$ Default=�5      �� 5      $ 
Horizontal=�6   $��Right=�66   $��0,10,0,0q�6R   .+�5      �� $��Edad (años): ��6   �� 5      $��80��6   $��0,0,70,0q�6�   ��6)   �� *PersonaActual.Edad+$ TwoWay=�$ Default=� �� StringFormat$ {0:0}��6�   5      �� 5      $ 
Horizontal=�6   $
��0,20q�66   $��Center=�6D   .+�5      �� -   5         ��Name$ nuevoBtn��5   r   $��32��6   $��80��6)   $	��8,0q�64   $��Nuevo��6A   ��6Q   �� *NuevoCommand+6�   �� 5       $��32��6   $��80��6)   $	��8,0q�64   $��Guardar��6A   ��6S   �� *GuardarCommand+5!      5"      5#      &   System.Windows.Controls.DataGrid  5%   
   $��1��6   $��Stretch=�6#   $	��Top=�5&      $	��300��6+   $	��250��6;      SelectionMode$ Single=�5)   
   	   CanUserAddRows	 .  
   
IsReadOnly
 .    CanUserDeleteRows .  ��5'      �� *
Personas+ �� SelectedItem 5(      �� *PersonaActual+5)   J   5*      5+      