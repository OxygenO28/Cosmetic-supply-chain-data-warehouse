USE [Supply Chain Data Warehouse]
GO

/****** Object:  View [dbo].[Snowflake_Diagram]    Script Date: 4/17/2025 7:26:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Snowflake_Diagram]
AS
SELECT        dbo.Inventory_Levels_fact_table.location_id, dbo.Location_dimension.location_id AS Expr1, dbo.Inventory_Levels_fact_table.supplier_code, dbo.Supplier_dimension.supplier_code AS Expr2, 
                         dbo.Shipping_dimension.shipping_id, dbo.Manufacturing_Information_fact_table.shipping_id AS Expr3, dbo.Inventory_Levels_fact_table.shipping_id AS Expr4, 
                         dbo.Shipping_Performance_accumulating_snapshot.shipping_id AS Expr5, dbo.Product_dimension.product_id, dbo.Sales_Transaction_fact_table.product_id AS Expr6, dbo.Manufacturing_dimension.manufacturer_code, 
                         dbo.Sales_Transaction_fact_table.manufacturer_code AS Expr7, dbo.Manufacturing_Information_fact_table.manufacturer_code AS Expr8, dbo.Product_Sales_aggregate_fact_table.product_id AS Expr9
FROM            dbo.Inventory_Levels_fact_table INNER JOIN
                         dbo.Location_dimension ON dbo.Inventory_Levels_fact_table.location_id = dbo.Location_dimension.location_id INNER JOIN
                         dbo.Shipping_dimension ON dbo.Inventory_Levels_fact_table.shipping_id = dbo.Shipping_dimension.shipping_id INNER JOIN
                         dbo.Manufacturing_Information_fact_table INNER JOIN
                         dbo.Manufacturing_dimension ON dbo.Manufacturing_Information_fact_table.manufacturer_code = dbo.Manufacturing_dimension.manufacturer_code INNER JOIN
                         dbo.Product_Sales_aggregate_fact_table INNER JOIN
                         dbo.Product_dimension ON dbo.Product_Sales_aggregate_fact_table.product_id = dbo.Product_dimension.product_id INNER JOIN
                         dbo.Sales_Transaction_fact_table ON dbo.Product_dimension.product_id = dbo.Sales_Transaction_fact_table.product_id ON 
                         dbo.Manufacturing_dimension.manufacturer_code = dbo.Sales_Transaction_fact_table.manufacturer_code ON dbo.Shipping_dimension.shipping_id = dbo.Manufacturing_Information_fact_table.shipping_id INNER JOIN
                         dbo.Shipping_Performance_accumulating_snapshot ON dbo.Shipping_dimension.shipping_id = dbo.Shipping_Performance_accumulating_snapshot.shipping_id INNER JOIN
                         dbo.Supplier_dimension ON dbo.Inventory_Levels_fact_table.supplier_code = dbo.Supplier_dimension.supplier_code
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[87] 4[3] 2[4] 3) )"
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
               Top = 3
               Left = 219
               Bottom = 133
               Right = 389
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Location_dimension"
            Begin Extent = 
               Top = 14
               Left = 0
               Bottom = 110
               Right = 170
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Manufacturing_dimension"
            Begin Extent = 
               Top = 384
               Left = 0
               Bottom = 470
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Manufacturing_Information_fact_table"
            Begin Extent = 
               Top = 55
               Left = 428
               Bottom = 185
               Right = 657
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Product_dimension"
            Begin Extent = 
               Top = 226
               Left = 454
               Bottom = 336
               Right = 674
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Product_Sales_aggregate_fact_table"
            Begin Extent = 
               Top = 188
               Left = 727
               Bottom = 311
               Right = 953
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sales_Transaction_fact_table"
            Begin Extent = 
               Top = 328
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Snowflake_Diagram'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'              Left = 704
               Bottom = 485
               Right = 930
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shipping_dimension"
            Begin Extent = 
               Top = 262
               Left = 0
               Bottom = 358
               Right = 178
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shipping_Performance_accumulating_snapshot"
            Begin Extent = 
               Top = 217
               Left = 231
               Bottom = 347
               Right = 431
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Supplier_dimension"
            Begin Extent = 
               Top = 125
               Left = 0
               Bottom = 236
               Right = 170
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Snowflake_Diagram'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Snowflake_Diagram'
GO

