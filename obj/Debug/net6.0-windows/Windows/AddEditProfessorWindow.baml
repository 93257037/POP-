   M S B A M L   `   `   `  ????M  ISR_26_2021_POP2022, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:SR_26_2021_POP2022.WindowsSR_26_2021_POP2022.Windows  5   	   7    1SR_26_2021_POP2022.Windows.AddEditProfessorWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:SR_26_2021_POP2022.Windows     5   	     ? Title$  AddEditProfessorWindow??5   	   $	??450??6(   $	??800??65   .??5	      ?  ? ColumnDefinitions 5
   
   ?? 5      ?? 5       ? RowDefinitions 5   
   ?? 5      ?? 5      ?? 5      ?? 5      ?? 5      .+?5   
   ?? -   5        $??lblIme??5      $
??Ime:??6   $??0??6-   $??0??6=   6L   ?? 5   
   -   5        $??txtIme??5      $??1??6    $??0??60   ??6=   ??  ?? Path$	 Ime? ?? ValidatesOnDataErrors$
 True??.??6s   5      ?? 5   
   ??6   ?? $) #(Validation.Errors)[0].ErrorContent?6P   ?? 5   
   -   5        $??lblEmail??5      $??Email:??6    $??0??61   $??1??6A   6P   ?? 5   
   -   5        $??txtEmail??5      $??1??6"   $??1??62   .??6?   ??5      ?? 5      $ Email?6   5       .??5!       =? ErrorTemplate 5"      ?? 5#      .R?5$      ?? .+?5%      ?? ?? 5&      
???  ????6$   ?? *[0].ErrorContent+6Y   5'      5(      .??5)   (   5*      ?? 5,   
   -   5        $??lblJMBG??5,      $??0??6   $??2??6/   $
??JMBG??6<   6M   ?? 5-   
   -   5        $??txtJMBG??5-      $??1??6!   $??2??61   .??6>   ??5.      ?? 5/      $
 JMBG?6    ?? ValidatesOnExceptions$
 True??6&   .??50       51      ?? 52      .R?53      ?? .+?54      ?? ?? 55      
???  ????6$   ?? *[0].ErrorContent+6Y   56      57      .??58   (   59      ?? 5<   
   -   5        $??lblTip??5<      $??Tip korisnika:??6   $??0??67   $??3??6G   6V   ?? 5=   
   -   5        $??cmbTipKorisnika??5=      $??1??6*   $??3??6:    ?? SelectedItem 6G   ?? $ TipKorisnika?5>      ?? 5@   
   -	   5        $??btnOdustani??5@      $??Odustani??6$   $??0??67   $??4??6G   6T   ?? 5A   
   -
   5        $??
btnSacuvaj??5A      $??Sacuvaj??6#   $??1??65   $??4??6E   6R   5C      5D      