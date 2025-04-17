USE [Supply Chain Data Warehouse]
GO

/****** Object:  View [dbo].[Inventory_Levels]    Script Date: 4/16/2025 9:02:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Inventory_Levels]
AS
SELECT        dbo.Inventory_Levels_fact_table.supplier_code, dbo.Supplier_dimension.supplier_code AS Expr1, dbo.Shipping_dimension.shipping_id, dbo.Inventory_Levels_fact_table.shipping_id AS Expr2, 
                         dbo.Inventory_Levels_fact_table.location_id, dbo.Location_dimension.location_id AS Expr3, dbo.Inventory_Levels_fact_table.lead_time, dbo.Inventory_Levels_fact_table.stock_levels, dbo.Supplier_dimension.supplier_name, 
                         dbo.Shipping_dimension.shipping_carriers, dbo.Location_dimension.location
FROM            dbo.Inventory_Levels_fact_table INNER JOIN
                         dbo.Supplier_dimension ON dbo.Inventory_Levels_fact_table.supplier_code = dbo.Supplier_dimension.supplier_code INNER JOIN
                         dbo.Shipping_dimension ON dbo.Inventory_Levels_fact_table.shipping_id = dbo.Shipping_dimension.shipping_id INNER JOIN
                         dbo.Location_dimension ON dbo.Inventory_Levels_fact_table.location_id = dbo.Location_dimension.location_id
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[63] 4[17] 2[8] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Inventory_Levels_fact_table"
            Begin Extent = 
               Top = 213
               Left = 380
               Bottom = 343
               Right = 550
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Supplier_dimension"
            Begin Extent = 
               Top = 225
               Left = 75
               Bottom = 321
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shipping_dimension"
            Begin Extent = 
               Top = 29
               Left = 378
               Bottom = 125
               Right = 556
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Location_dimension"
            Begin Extent = 
               Top = 223
               Left = 673
               Bottom = 319
               Right = 843
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Inventory_Levels'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Inventory_Levels'
GO

