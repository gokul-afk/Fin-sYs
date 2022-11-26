-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 07:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newfinsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `app1_accounts`
--

CREATE TABLE `app1_accounts` (
  `accountsid` int(11) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `detype` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `deftaxcode` varchar(100) NOT NULL,
  `balance` double DEFAULT NULL,
  `asof` date NOT NULL,
  `balfordisp` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `productid_id` int(11) NOT NULL,
  `proid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_accounts`
--

INSERT INTO `app1_accounts` (`accountsid`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `asof`, `balfordisp`, `cid_id`, `productid_id`, `proid_id`) VALUES
(17, '2', 'Inventory', 'Inventory', 'gfhf', '', '14.00% ST', 2000, '2022-11-14', 0, 16, 2, 2),
(18, '2', 'Inventory', 'Inventory', 'vbc', '', '14.0% VAT', 2000, '2022-11-14', 0, 16, 2, 2),
(19, '2', 'Inventory', 'Inventory', 'fdsff', 'fdgfgfd', '0% IGST', 1000, '2022-11-14', 0, 16, 2, 2),
(20, '2', 'Inventory', 'Inventory', 'hgfhsafhdfsah', '', '14.00% ST', 2000, '2022-11-14', 0, 16, 2, 2),
(21, '2', 'Inventory', 'Saijusss', 'hgdfgf', '', '0% IGST', 200, '2022-11-14', 0, 16, 2, 2),
(22, '2', 'Inventory', 'Inventory', 'sdffd', '', 'sdfd', 200, '2022-11-15', 0, 16, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `app1_accounts1`
--

CREATE TABLE `app1_accounts1` (
  `accounts1id` int(11) NOT NULL,
  `acctype` varchar(100) NOT NULL,
  `detype` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `gst` varchar(100) DEFAULT NULL,
  `deftaxcode` varchar(100) NOT NULL,
  `balance` double DEFAULT NULL,
  `asof` date DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_accounts1`
--

INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `asof`, `cid_id`) VALUES
(962, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', '', NULL, '', 5400, '2022-10-17', 16),
(963, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred CGST', '', NULL, '', 0, '2022-10-17', 28),
(964, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred GST Input Credit', '', NULL, '', 0, '2022-10-17', 28),
(965, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred IGST', '', NULL, '', 0, '2022-10-17', 28),
(966, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred Krishi Kalyan Cess Input Credit', '', NULL, '', 0, '2022-10-17', 28),
(967, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', '', NULL, '', 0, '2022-10-17', 28),
(968, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred Service Tax Input Credit', '', NULL, '', 0, '2022-10-17', 28),
(969, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred SGST', '', NULL, '', 0, '2022-10-17', 28),
(970, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred VAT Input Credit', '', NULL, '', 0, '2022-10-17', 28),
(971, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', NULL, '', 0, '2022-10-17', 28),
(972, 'Current Assets', 'Inventory', 'Inventory Asset', '', NULL, '', 0, '2022-10-17', 28),
(973, 'Current Assets', 'Service Tax Refund', 'Krishi Kalyan Cess Refund', '', NULL, '', 0, '2022-10-17', 28),
(974, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', NULL, '', 0, '2022-10-17', 28),
(975, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', NULL, '', 0, '2022-10-17', 28),
(976, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', NULL, '', 0, '2022-10-17', 28),
(977, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', NULL, '', 0, '2022-10-17', 28),
(978, 'Current Assets', 'Undeposited Fund', 'Undeposited Fund', '', NULL, '', 0, '2022-10-17', 28),
(979, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', NULL, '', 0, '2022-10-17', 28),
(980, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', NULL, '', 0, '2022-10-17', 28),
(981, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', '', NULL, '', 0, '2022-10-17', 28),
(982, 'Fixed Assets', 'Land', 'Land', '', NULL, '', 0, '2022-10-17', 28),
(983, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', NULL, '', 0, '2022-10-17', 28),
(984, 'Fixed Assets', 'Vehicles', 'Vehicles', '', NULL, '', 0, '2022-10-17', 28),
(985, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', '', NULL, '', 0, '2022-10-17', 28),
(986, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', NULL, '', 0, '2022-10-17', 28),
(987, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', NULL, '', 0, '2022-10-17', 28),
(988, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', NULL, '', 0, '2022-10-17', 28),
(989, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', NULL, '', 0, '2022-10-17', 28),
(990, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', NULL, '', 0, '2022-10-17', 28),
(991, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', NULL, '', 0, '2022-10-17', 28),
(992, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', NULL, '', 0, '2022-10-17', 28),
(993, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', NULL, '', 0, '2022-10-17', 28),
(994, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', NULL, '', 0, '2022-10-17', 28),
(995, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', NULL, '', 0, '2022-10-17', 28),
(996, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', NULL, '', 0, '2022-10-17', 28),
(997, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', NULL, '', 0, '2022-10-17', 28),
(998, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', NULL, '', 0, '2022-10-17', 28),
(999, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', NULL, '', 0, '2022-10-17', 28),
(1000, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', NULL, '', 0, '2022-10-17', 28),
(1001, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', NULL, '', 0, '2022-10-17', 28),
(1002, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', NULL, '', 0, '2022-10-17', 28),
(1003, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', NULL, '', 0, '2022-10-17', 28),
(1004, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', NULL, '', 0, '2022-10-17', 28),
(1005, 'Current Liabilities', 'Sales and Service Tax Payable', 'Krishi Kalyan Cess Payable', '', NULL, '', 0, '2022-10-17', 28),
(1006, 'Current Liabilities', 'Tax Suspense', 'Krishi Kalyan Cess Suspense', '', NULL, '', 0, '2022-10-17', 28),
(1007, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', NULL, '', 0, '2022-10-17', 28),
(1008, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', NULL, '', 0, '2022-10-17', 28),
(1009, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', NULL, '', 0, '2022-10-17', 28),
(1010, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', NULL, '', 0, '2022-10-17', 28),
(1011, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', NULL, '', 0, '2022-10-17', 28),
(1012, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', NULL, '', 0, '2022-10-17', 28),
(1013, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', NULL, '', 0, '2022-10-17', 28),
(1014, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', NULL, '', 0, '2022-10-17', 28),
(1015, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', NULL, '', 0, '2022-10-17', 28),
(1016, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', NULL, '', 0, '2022-10-17', 28),
(1017, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', NULL, '', 0, '2022-10-17', 28),
(1018, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', NULL, '', 0, '2022-10-17', 28),
(1019, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', NULL, '', 0, '2022-10-17', 28),
(1020, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', NULL, '', 0, '2022-10-17', 28),
(1021, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', NULL, '', 0, '2022-10-17', 28),
(1022, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', NULL, '', 0, '2022-10-17', 28),
(1023, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', NULL, '', 0, '2022-10-17', 28),
(1024, 'Current Liabilities', 'Sales and Service Tax Payable', 'Swachh Barath Cess Payable', '', NULL, '', 0, '2022-10-17', 28),
(1025, 'Current Liabilities', 'Tax Suspense', 'Swachh Barath Cess Suspense', '', NULL, '', 0, '2022-10-17', 28),
(1026, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', NULL, '', 0, '2022-10-17', 28),
(1027, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', NULL, '', 0, '2022-10-17', 28),
(1028, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', NULL, '', 0, '2022-10-17', 28),
(1029, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', NULL, '', 0, '2022-10-17', 28),
(1030, 'Equity', 'Retained Earnings', 'Retained Earnings', '', NULL, '', 0, '2022-10-17', 28),
(1031, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', NULL, '', 0, '2022-10-17', 28),
(1032, 'Income', 'Service/Fee Income', 'Consulting Income', '', NULL, '', 0, '2022-10-17', 28),
(1033, 'Income', 'Sales of Product Income', 'Product Sales', '', NULL, '', 0, '2022-10-17', 28),
(1034, 'Income', 'Sales of Product Income', 'Sales', '', NULL, '', 0, '2022-10-17', 28),
(1035, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', NULL, '', 0, '2022-10-17', 28),
(1036, 'Income', 'Sales of Product Income', 'Sales-Software', '', NULL, '', 0, '2022-10-17', 28),
(1037, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', NULL, '', 0, '2022-10-17', 28),
(1038, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', NULL, '', 0, '2022-10-17', 28),
(1039, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', NULL, '', 0, '2022-10-17', 28),
(1040, 'Income', 'Service/Fee Income', 'Services', '', NULL, '', 0, '2022-10-17', 28),
(1041, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', NULL, '', 0, '2022-10-17', 28),
(1042, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', NULL, '', 0, '2022-10-17', 28),
(1043, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', NULL, '', 0, '2022-10-17', 28),
(1044, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', NULL, '', 0, '2022-10-17', 28),
(1045, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', NULL, '', 0, '2022-10-17', 28),
(1046, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', NULL, '', 0, '2022-10-17', 28),
(1047, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', NULL, '', 0, '2022-10-17', 28),
(1048, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', NULL, '', 0, '2022-10-17', 28),
(1049, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', NULL, '', 0, '2022-10-17', 28),
(1050, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', NULL, '', 0, '2022-10-17', 28),
(1051, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', NULL, '', 0, '2022-10-17', 28),
(1052, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', '', NULL, '', 0, '2022-10-17', 28),
(1053, 'Expenses', 'Bank Charges', 'Bank Charges', '', NULL, '', 0, '2022-10-17', 28),
(1054, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', NULL, '', 0, '2022-10-17', 28),
(1055, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', NULL, '', 0, '2022-10-17', 28),
(1056, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', '', NULL, '', 0, '2022-10-17', 28),
(1057, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', NULL, '', 0, '2022-10-17', 28),
(1058, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', '', NULL, '', 0, '2022-10-17', 28),
(1059, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', NULL, '', 0, '2022-10-17', 28),
(1060, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', NULL, '', 0, '2022-10-17', 28),
(1061, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', NULL, '', 0, '2022-10-17', 28),
(1062, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', NULL, '', 0, '2022-10-17', 28),
(1063, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', NULL, '', 0, '2022-10-17', 28),
(1064, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', NULL, '', 0, '2022-10-17', 28),
(1065, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', NULL, '', 0, '2022-10-17', 28),
(1066, 'Expenses', 'Interest Paid', 'Interest Expenses', '', NULL, '', 0, '2022-10-17', 28),
(1067, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', '', NULL, '', 0, '2022-10-17', 28),
(1068, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', '', NULL, '', 0, '2022-10-17', 28),
(1069, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', NULL, '', 0, '2022-10-17', 28),
(1070, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', NULL, '', 0, '2022-10-17', 28),
(1071, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', NULL, '', 0, '2022-10-17', 28),
(1072, 'Expenses', 'Suppliers and Materials', 'Purchases', '', NULL, '', 0, '2022-10-17', 28),
(1073, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', '', NULL, '', 0, '2022-10-17', 28),
(1074, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', '', NULL, '', 0, '2022-10-17', 28),
(1075, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', NULL, '', 0, '2022-10-17', 28),
(1076, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', NULL, '', 0, '2022-10-17', 28),
(1077, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', NULL, '', 0, '2022-10-17', 28),
(1078, 'Expenses', 'Office/General Administrative Expenses', 'Telephone Expense', '', NULL, '', 0, '2022-10-17', 28),
(1079, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', '', NULL, '', 0, '2022-10-17', 28),
(1080, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', '', NULL, '', 0, '2022-10-17', 28),
(1081, 'Expenses', 'Utilities', 'Utilities', '', NULL, '', 0, '2022-10-17', 28),
(1082, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', NULL, '', 0, '2022-10-17', 28),
(1083, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', NULL, '', 0, '2022-10-17', 28),
(1084, 'Other Income', 'Interest Earned', 'Interest Income', '', NULL, '', 0, '2022-10-17', 28),
(1085, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', NULL, '', 0, '2022-10-17', 28),
(1086, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', '', NULL, '', 0, '2022-10-17', 28),
(1087, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', NULL, '', 0, '2022-10-17', 28),
(1088, 'Other Expenses', 'Other Expenses', 'CGST Write-Off', '', NULL, '', 0, '2022-10-17', 28),
(1089, 'Other Expense', 'Other Expense', 'GST Write-Off', '', NULL, '', 0, '2022-10-17', 28),
(1090, 'Other Expenses', 'Other Expenses', 'IGST Write-Off', '', NULL, '', 0, '2022-10-17', 28),
(1091, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', NULL, '', 0, '2022-10-17', 28),
(1092, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', NULL, '', 0, '2022-10-17', 28),
(1093, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', NULL, '', 0, '2022-10-17', 28),
(1094, 'Other Expenses', 'Other Expenses', 'SGST Write-Off', '', NULL, '', 0, '2022-10-17', 28),
(1095, 'Other Expenses', 'Other Expenses', 'Tax Write-Off', '', NULL, '', 0, '2022-10-17', 28),
(1096, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', NULL, '', 0, '2022-10-17', 28),
(1097, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', '', NULL, '', 0, '2022-10-17', 29),
(1098, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred CGST', '', NULL, '', 0, '2022-10-17', 29),
(1099, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred GST Input Credit', '', NULL, '', 0, '2022-10-17', 29),
(1100, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred IGST', '', NULL, '', 0, '2022-10-17', 29),
(1101, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred Krishi Kalyan Cess Input Credit', '', NULL, '', 0, '2022-10-17', 29),
(1102, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', '', NULL, '', 0, '2022-10-17', 29),
(1103, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred Service Tax Input Credit', '', NULL, '', 0, '2022-10-17', 29),
(1104, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred SGST', '', NULL, '', 0, '2022-10-17', 29),
(1105, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred VAT Input Credit', '', NULL, '', 0, '2022-10-17', 29),
(1106, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', NULL, '', 0, '2022-10-17', 29),
(1107, 'Current Assets', 'Inventory', 'Inventory Asset', '', NULL, '', 0, '2022-10-17', 29),
(1108, 'Current Assets', 'Service Tax Refund', 'Krishi Kalyan Cess Refund', '', NULL, '', 0, '2022-10-17', 29),
(1109, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', NULL, '', 0, '2022-10-17', 29),
(1110, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', NULL, '', 0, '2022-10-17', 29),
(1111, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', NULL, '', 0, '2022-10-17', 29),
(1112, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', NULL, '', 0, '2022-10-17', 29),
(1113, 'Current Assets', 'Undeposited Fund', 'Undeposited Fund', '', NULL, '', 0, '2022-10-17', 29),
(1114, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', NULL, '', 0, '2022-10-17', 29),
(1115, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', NULL, '', 0, '2022-10-17', 29),
(1116, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', '', NULL, '', 0, '2022-10-17', 29),
(1117, 'Fixed Assets', 'Land', 'Land', '', NULL, '', 0, '2022-10-17', 29),
(1118, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', NULL, '', 0, '2022-10-17', 29),
(1119, 'Fixed Assets', 'Vehicles', 'Vehicles', '', NULL, '', 0, '2022-10-17', 29),
(1120, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', '', NULL, '', 0, '2022-10-17', 29),
(1121, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', NULL, '', 0, '2022-10-17', 29),
(1122, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', NULL, '', 0, '2022-10-17', 29),
(1123, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', NULL, '', 0, '2022-10-17', 29),
(1124, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', NULL, '', 0, '2022-10-17', 29),
(1125, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', NULL, '', 0, '2022-10-17', 29),
(1126, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', NULL, '', 0, '2022-10-17', 29),
(1127, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', NULL, '', 0, '2022-10-17', 29),
(1128, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', NULL, '', 0, '2022-10-17', 29),
(1129, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', NULL, '', 0, '2022-10-17', 29),
(1130, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', NULL, '', 0, '2022-10-17', 29),
(1131, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', NULL, '', 0, '2022-10-17', 29),
(1132, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', NULL, '', 0, '2022-10-17', 29),
(1133, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', NULL, '', 0, '2022-10-17', 29),
(1134, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', NULL, '', 0, '2022-10-17', 29),
(1135, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', NULL, '', 0, '2022-10-17', 29),
(1136, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', NULL, '', 0, '2022-10-17', 29),
(1137, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', NULL, '', 0, '2022-10-17', 29),
(1138, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', NULL, '', 0, '2022-10-17', 29),
(1139, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', NULL, '', 0, '2022-10-17', 29),
(1140, 'Current Liabilities', 'Sales and Service Tax Payable', 'Krishi Kalyan Cess Payable', '', NULL, '', 0, '2022-10-17', 29),
(1141, 'Current Liabilities', 'Tax Suspense', 'Krishi Kalyan Cess Suspense', '', NULL, '', 0, '2022-10-17', 29),
(1142, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', NULL, '', 0, '2022-10-17', 29),
(1143, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', NULL, '', 0, '2022-10-17', 29),
(1144, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', NULL, '', 0, '2022-10-17', 29),
(1145, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', NULL, '', 0, '2022-10-17', 29),
(1146, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', NULL, '', 0, '2022-10-17', 29),
(1147, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', NULL, '', 0, '2022-10-17', 29),
(1148, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', NULL, '', 0, '2022-10-17', 29),
(1149, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', NULL, '', 0, '2022-10-17', 29),
(1150, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', NULL, '', 0, '2022-10-17', 29),
(1151, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', NULL, '', 0, '2022-10-17', 29),
(1152, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', NULL, '', 0, '2022-10-17', 29),
(1153, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', NULL, '', 0, '2022-10-17', 29),
(1154, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', NULL, '', 0, '2022-10-17', 29),
(1155, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', NULL, '', 0, '2022-10-17', 29),
(1156, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', NULL, '', 0, '2022-10-17', 29),
(1157, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', NULL, '', 0, '2022-10-17', 29),
(1158, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', NULL, '', 0, '2022-10-17', 29),
(1159, 'Current Liabilities', 'Sales and Service Tax Payable', 'Swachh Barath Cess Payable', '', NULL, '', 0, '2022-10-17', 29),
(1160, 'Current Liabilities', 'Tax Suspense', 'Swachh Barath Cess Suspense', '', NULL, '', 0, '2022-10-17', 29),
(1161, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', NULL, '', 0, '2022-10-17', 29),
(1162, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', NULL, '', 0, '2022-10-17', 29),
(1163, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', NULL, '', 0, '2022-10-17', 29),
(1164, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', NULL, '', 0, '2022-10-17', 29),
(1165, 'Equity', 'Retained Earnings', 'Retained Earnings', '', NULL, '', 0, '2022-10-17', 29),
(1166, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', NULL, '', 0, '2022-10-17', 29),
(1167, 'Income', 'Service/Fee Income', 'Consulting Income', '', NULL, '', 0, '2022-10-17', 29),
(1168, 'Income', 'Sales of Product Income', 'Product Sales', '', NULL, '', 0, '2022-10-17', 29),
(1169, 'Income', 'Sales of Product Income', 'Sales', '', NULL, '', 0, '2022-10-17', 29),
(1170, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', NULL, '', 0, '2022-10-17', 29),
(1171, 'Income', 'Sales of Product Income', 'Sales-Software', '', NULL, '', 0, '2022-10-17', 29),
(1172, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', NULL, '', 0, '2022-10-17', 29),
(1173, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', NULL, '', 0, '2022-10-17', 29),
(1174, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', NULL, '', 0, '2022-10-17', 29),
(1175, 'Income', 'Service/Fee Income', 'Services', '', NULL, '', 0, '2022-10-17', 29),
(1176, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', NULL, '', 0, '2022-10-17', 29),
(1177, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', NULL, '', 0, '2022-10-17', 29),
(1178, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', NULL, '', 0, '2022-10-17', 29),
(1179, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', NULL, '', 0, '2022-10-17', 29),
(1180, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', NULL, '', 0, '2022-10-17', 29),
(1181, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', NULL, '', 0, '2022-10-17', 29),
(1182, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', NULL, '', 0, '2022-10-17', 29),
(1183, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', NULL, '', 0, '2022-10-17', 29),
(1184, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', NULL, '', 0, '2022-10-17', 29),
(1185, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', NULL, '', 0, '2022-10-17', 29),
(1186, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', NULL, '', 0, '2022-10-17', 29),
(1187, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', '', NULL, '', 0, '2022-10-17', 29),
(1188, 'Expenses', 'Bank Charges', 'Bank Charges', '', NULL, '', 0, '2022-10-17', 29),
(1189, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', NULL, '', 0, '2022-10-17', 29),
(1190, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', NULL, '', 0, '2022-10-17', 29),
(1191, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', '', NULL, '', 0, '2022-10-17', 29),
(1192, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', NULL, '', 0, '2022-10-17', 29),
(1193, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', '', NULL, '', 0, '2022-10-17', 29),
(1194, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', NULL, '', 0, '2022-10-17', 29),
(1195, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', NULL, '', 0, '2022-10-17', 29),
(1196, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', NULL, '', 0, '2022-10-17', 29),
(1197, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', NULL, '', 0, '2022-10-17', 29),
(1198, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', NULL, '', 0, '2022-10-17', 29),
(1199, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', NULL, '', 0, '2022-10-17', 29),
(1200, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', NULL, '', 0, '2022-10-17', 29),
(1201, 'Expenses', 'Interest Paid', 'Interest Expenses', '', NULL, '', 0, '2022-10-17', 29),
(1202, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', '', NULL, '', 0, '2022-10-17', 29),
(1203, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', '', NULL, '', 0, '2022-10-17', 29),
(1204, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', NULL, '', 0, '2022-10-17', 29),
(1205, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', NULL, '', 0, '2022-10-17', 29),
(1206, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', NULL, '', 0, '2022-10-17', 29),
(1207, 'Expenses', 'Suppliers and Materials', 'Purchases', '', NULL, '', 0, '2022-10-17', 29),
(1208, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', '', NULL, '', 0, '2022-10-17', 29),
(1209, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', '', NULL, '', 0, '2022-10-17', 29),
(1210, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', NULL, '', 0, '2022-10-17', 29),
(1211, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', NULL, '', 0, '2022-10-17', 29),
(1212, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', NULL, '', 0, '2022-10-17', 29),
(1213, 'Expenses', 'Office/General Administrative Expenses', 'Telephone Expense', '', NULL, '', 0, '2022-10-17', 29),
(1214, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', '', NULL, '', 0, '2022-10-17', 29),
(1215, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', '', NULL, '', 0, '2022-10-17', 29),
(1216, 'Expenses', 'Utilities', 'Utilities', '', NULL, '', 0, '2022-10-17', 29),
(1217, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', NULL, '', 0, '2022-10-17', 29),
(1218, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', NULL, '', 0, '2022-10-17', 29),
(1219, 'Other Income', 'Interest Earned', 'Interest Income', '', NULL, '', 0, '2022-10-17', 29),
(1220, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', NULL, '', 0, '2022-10-17', 29),
(1221, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', '', NULL, '', 0, '2022-10-17', 29),
(1222, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', NULL, '', 0, '2022-10-17', 29),
(1223, 'Other Expenses', 'Other Expenses', 'CGST Write-Off', '', NULL, '', 0, '2022-10-17', 29),
(1224, 'Other Expense', 'Other Expense', 'GST Write-Off', '', NULL, '', 0, '2022-10-17', 29),
(1225, 'Other Expenses', 'Other Expenses', 'IGST Write-Off', '', NULL, '', 0, '2022-10-17', 29),
(1226, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', NULL, '', 0, '2022-10-17', 29),
(1227, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', NULL, '', 0, '2022-10-17', 29),
(1228, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', NULL, '', 0, '2022-10-17', 29),
(1229, 'Other Expenses', 'Other Expenses', 'SGST Write-Off', '', NULL, '', 0, '2022-10-17', 29),
(1230, 'Other Expenses', 'Other Expenses', 'Tax Write-Off', '', NULL, '', 0, '2022-10-17', 29),
(1231, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', NULL, '', 0, '2022-10-17', 29),
(1232, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', '', NULL, '', 0, '2022-10-20', 30),
(1233, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred CGST', '', NULL, '', 0, '2022-10-20', 30),
(1234, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred GST Input Credit', '', NULL, '', 0, '2022-10-20', 30),
(1235, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred IGST', '', NULL, '', 0, '2022-10-20', 30),
(1236, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred Krishi Kalyan Cess Input Credit', '', NULL, '', 0, '2022-10-20', 30),
(1237, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', '', NULL, '', 0, '2022-10-20', 30),
(1238, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred Service Tax Input Credit', '', NULL, '', 0, '2022-10-20', 30),
(1239, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred SGST', '', NULL, '', 0, '2022-10-20', 30),
(1240, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred VAT Input Credit', '', NULL, '', 0, '2022-10-20', 30),
(1241, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', NULL, '', 0, '2022-10-20', 30),
(1242, 'Current Assets', 'Inventory', 'Inventory Asset', '', NULL, '', 0, '2022-10-20', 30),
(1243, 'Current Assets', 'Service Tax Refund', 'Krishi Kalyan Cess Refund', '', NULL, '', 0, '2022-10-20', 30),
(1244, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', NULL, '', 0, '2022-10-20', 30),
(1245, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', NULL, '', 0, '2022-10-20', 30),
(1246, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', NULL, '', 0, '2022-10-20', 30),
(1247, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', NULL, '', 0, '2022-10-20', 30),
(1248, 'Current Assets', 'Undeposited Fund', 'Undeposited Fund', '', NULL, '', 0, '2022-10-20', 30),
(1249, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', NULL, '', 0, '2022-10-20', 30),
(1250, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', NULL, '', 0, '2022-10-20', 30),
(1251, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', '', NULL, '', 0, '2022-10-20', 30),
(1252, 'Fixed Assets', 'Land', 'Land', '', NULL, '', 0, '2022-10-20', 30),
(1253, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', NULL, '', 0, '2022-10-20', 30),
(1254, 'Fixed Assets', 'Vehicles', 'Vehicles', '', NULL, '', 0, '2022-10-20', 30),
(1255, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', '', NULL, '', 0, '2022-10-20', 30),
(1256, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', NULL, '', 0, '2022-10-20', 30),
(1257, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', NULL, '', 0, '2022-10-20', 30),
(1258, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', NULL, '', 0, '2022-10-20', 30),
(1259, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', NULL, '', 0, '2022-10-20', 30),
(1260, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', NULL, '', 0, '2022-10-20', 30),
(1261, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', NULL, '', 0, '2022-10-20', 30),
(1262, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', NULL, '', 0, '2022-10-20', 30),
(1263, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', NULL, '', 0, '2022-10-20', 30),
(1264, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', NULL, '', 0, '2022-10-20', 30),
(1265, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', NULL, '', 0, '2022-10-20', 30),
(1266, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', NULL, '', 0, '2022-10-20', 30),
(1267, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', NULL, '', 0, '2022-10-20', 30),
(1268, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', NULL, '', 0, '2022-10-20', 30),
(1269, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', NULL, '', 0, '2022-10-20', 30),
(1270, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', NULL, '', 0, '2022-10-20', 30),
(1271, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', NULL, '', 0, '2022-10-20', 30),
(1272, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', NULL, '', 0, '2022-10-20', 30),
(1273, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', NULL, '', 0, '2022-10-20', 30),
(1274, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', NULL, '', 0, '2022-10-20', 30),
(1275, 'Current Liabilities', 'Sales and Service Tax Payable', 'Krishi Kalyan Cess Payable', '', NULL, '', 0, '2022-10-20', 30),
(1276, 'Current Liabilities', 'Tax Suspense', 'Krishi Kalyan Cess Suspense', '', NULL, '', 0, '2022-10-20', 30),
(1277, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', NULL, '', 0, '2022-10-20', 30),
(1278, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', NULL, '', 0, '2022-10-20', 30),
(1279, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', NULL, '', 0, '2022-10-20', 30),
(1280, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', NULL, '', 0, '2022-10-20', 30),
(1281, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', NULL, '', 0, '2022-10-20', 30),
(1282, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', NULL, '', 0, '2022-10-20', 30),
(1283, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', NULL, '', 0, '2022-10-20', 30),
(1284, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', NULL, '', 0, '2022-10-20', 30),
(1285, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', NULL, '', 0, '2022-10-20', 30),
(1286, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', NULL, '', 0, '2022-10-20', 30),
(1287, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', NULL, '', 0, '2022-10-20', 30),
(1288, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', NULL, '', 0, '2022-10-20', 30),
(1289, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', NULL, '', 0, '2022-10-20', 30),
(1290, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', NULL, '', 0, '2022-10-20', 30),
(1291, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', NULL, '', 0, '2022-10-20', 30),
(1292, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', NULL, '', 0, '2022-10-20', 30),
(1293, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', NULL, '', 0, '2022-10-20', 30),
(1294, 'Current Liabilities', 'Sales and Service Tax Payable', 'Swachh Barath Cess Payable', '', NULL, '', 0, '2022-10-20', 30),
(1295, 'Current Liabilities', 'Tax Suspense', 'Swachh Barath Cess Suspense', '', NULL, '', 0, '2022-10-20', 30),
(1296, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', NULL, '', 0, '2022-10-20', 30),
(1297, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', NULL, '', 0, '2022-10-20', 30),
(1298, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', NULL, '', 0, '2022-10-20', 30),
(1299, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', NULL, '', 0, '2022-10-20', 30),
(1300, 'Equity', 'Retained Earnings', 'Retained Earnings', '', NULL, '', 0, '2022-10-20', 30),
(1301, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', NULL, '', 0, '2022-10-20', 30),
(1302, 'Income', 'Service/Fee Income', 'Consulting Income', '', NULL, '', 0, '2022-10-20', 30),
(1303, 'Income', 'Sales of Product Income', 'Product Sales', '', NULL, '', 0, '2022-10-20', 30),
(1304, 'Income', 'Sales of Product Income', 'Sales', '', NULL, '', 0, '2022-10-20', 30),
(1305, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', NULL, '', 0, '2022-10-20', 30),
(1306, 'Income', 'Sales of Product Income', 'Sales-Software', '', NULL, '', 0, '2022-10-20', 30),
(1307, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', NULL, '', 0, '2022-10-20', 30),
(1308, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', NULL, '', 0, '2022-10-20', 30),
(1309, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', NULL, '', 0, '2022-10-20', 30),
(1310, 'Income', 'Service/Fee Income', 'Services', '', NULL, '', 0, '2022-10-20', 30),
(1311, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', NULL, '', 0, '2022-10-20', 30),
(1312, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', NULL, '', 0, '2022-10-20', 30),
(1313, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', NULL, '', 0, '2022-10-20', 30),
(1314, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', NULL, '', 0, '2022-10-20', 30),
(1315, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', NULL, '', 0, '2022-10-20', 30),
(1316, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', NULL, '', 0, '2022-10-20', 30),
(1317, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', NULL, '', 0, '2022-10-20', 30),
(1318, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', NULL, '', 0, '2022-10-20', 30),
(1319, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', NULL, '', 0, '2022-10-20', 30),
(1320, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', NULL, '', 0, '2022-10-20', 30),
(1321, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', NULL, '', 0, '2022-10-20', 30),
(1322, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', '', NULL, '', 0, '2022-10-20', 30),
(1323, 'Expenses', 'Bank Charges', 'Bank Charges', '', NULL, '', 0, '2022-10-20', 30),
(1324, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', NULL, '', 0, '2022-10-20', 30),
(1325, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', NULL, '', 0, '2022-10-20', 30),
(1326, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', '', NULL, '', 0, '2022-10-20', 30),
(1327, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', NULL, '', 0, '2022-10-20', 30),
(1328, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', '', NULL, '', 0, '2022-10-20', 30),
(1329, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', NULL, '', 0, '2022-10-20', 30),
(1330, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', NULL, '', 0, '2022-10-20', 30),
(1331, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', NULL, '', 0, '2022-10-20', 30),
(1332, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', NULL, '', 0, '2022-10-20', 30),
(1333, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', NULL, '', 0, '2022-10-20', 30),
(1334, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', NULL, '', 0, '2022-10-20', 30),
(1335, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', NULL, '', 0, '2022-10-20', 30),
(1336, 'Expenses', 'Interest Paid', 'Interest Expenses', '', NULL, '', 0, '2022-10-20', 30),
(1337, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', '', NULL, '', 0, '2022-10-20', 30),
(1338, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', '', NULL, '', 0, '2022-10-20', 30),
(1339, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', NULL, '', 0, '2022-10-20', 30),
(1340, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', NULL, '', 0, '2022-10-20', 30),
(1341, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', NULL, '', 0, '2022-10-20', 30),
(1342, 'Expenses', 'Suppliers and Materials', 'Purchases', '', NULL, '', 0, '2022-10-20', 30),
(1343, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', '', NULL, '', 0, '2022-10-20', 30),
(1344, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', '', NULL, '', 0, '2022-10-20', 30),
(1345, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', NULL, '', 0, '2022-10-20', 30),
(1346, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', NULL, '', 0, '2022-10-20', 30),
(1347, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', NULL, '', 0, '2022-10-20', 30),
(1348, 'Expenses', 'Office/General Administrative Expenses', 'Telephone Expense', '', NULL, '', 0, '2022-10-20', 30),
(1349, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', '', NULL, '', 0, '2022-10-20', 30),
(1350, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', '', NULL, '', 0, '2022-10-20', 30),
(1351, 'Expenses', 'Utilities', 'Utilities', '', NULL, '', 0, '2022-10-20', 30),
(1352, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', NULL, '', 0, '2022-10-20', 30),
(1353, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', NULL, '', 0, '2022-10-20', 30),
(1354, 'Other Income', 'Interest Earned', 'Interest Income', '', NULL, '', 0, '2022-10-20', 30),
(1355, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', NULL, '', 0, '2022-10-20', 30),
(1356, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', '', NULL, '', 0, '2022-10-20', 30),
(1357, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', NULL, '', 0, '2022-10-20', 30),
(1358, 'Other Expenses', 'Other Expenses', 'CGST Write-Off', '', NULL, '', 0, '2022-10-20', 30),
(1359, 'Other Expense', 'Other Expense', 'GST Write-Off', '', NULL, '', 0, '2022-10-20', 30),
(1360, 'Other Expenses', 'Other Expenses', 'IGST Write-Off', '', NULL, '', 0, '2022-10-20', 30),
(1361, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', NULL, '', 0, '2022-10-20', 30),
(1362, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', NULL, '', 0, '2022-10-20', 30),
(1363, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', NULL, '', 0, '2022-10-20', 30),
(1364, 'Other Expenses', 'Other Expenses', 'SGST Write-Off', '', NULL, '', 0, '2022-10-20', 30),
(1365, 'Other Expenses', 'Other Expenses', 'Tax Write-Off', '', NULL, '', 0, '2022-10-20', 30),
(1366, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', NULL, '', 0, '2022-10-20', 30),
(1367, 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', 'Account Receivable(Debtors)', '', NULL, '', 0, '2022-11-16', 31),
(1368, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred CGST', '', NULL, '', 0, '2022-11-16', 31),
(1369, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred GST Input Credit', '', NULL, '', 0, '2022-11-16', 31),
(1370, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred IGST', '', NULL, '', 0, '2022-11-16', 31),
(1371, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred Krishi Kalyan Cess Input Credit', '', NULL, '', 0, '2022-11-16', 31),
(1372, 'Current Assets', 'Prepaid Expenses', 'Prepaid Expenses', '', NULL, '', 0, '2022-11-16', 31),
(1373, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred Service Tax Input Credit', '', NULL, '', 0, '2022-11-16', 31),
(1374, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred SGST', '', NULL, '', 0, '2022-11-16', 31),
(1375, 'Current Assets', 'Deferred Service Tax Input Credit', 'Deferred VAT Input Credit', '', NULL, '', 0, '2022-11-16', 31),
(1376, 'Current Assets', 'Service Tax Refund', 'GST Refund', '', NULL, '', 0, '2022-11-16', 31),
(1377, 'Current Assets', 'Inventory', 'Inventory Asset', '', NULL, '', 0, '2022-11-16', 31),
(1378, 'Current Assets', 'Service Tax Refund', 'Krishi Kalyan Cess Refund', '', NULL, '', 0, '2022-11-16', 31),
(1379, 'Current Assets', 'Prepaid Expenses', 'Prepaid Insurance', '', NULL, '', 0, '2022-11-16', 31),
(1380, 'Current Assets', 'Service Tax Refund', 'Service Tax Refund', '', NULL, '', 0, '2022-11-16', 31),
(1381, 'Current Assets', 'Other Current Assets', 'TDS Receivable', '', NULL, '', 0, '2022-11-16', 31),
(1382, 'Current Assets', 'Other Current Assets', 'Uncategorised Asset', '', NULL, '', 0, '2022-11-16', 31),
(1383, 'Current Assets', 'Undeposited Fund', 'Undeposited Fund', '', NULL, '', 0, '2022-11-16', 31),
(1384, 'Fixed Assets', 'Accumulated Depreciation', 'Accumulated Depreciation', '', NULL, '', 0, '2022-11-16', 31),
(1385, 'Fixed Assets', 'Buildings', 'Buildings and Improvements', '', NULL, '', 0, '2022-11-16', 31),
(1386, 'Fixed Assets', 'Furniture and fixtures', 'Furniture and Equipment', '', NULL, '', 0, '2022-11-16', 31),
(1387, 'Fixed Assets', 'Land', 'Land', '', NULL, '', 0, '2022-11-16', 31),
(1388, 'Fixed Assets', 'Leasehold Improvements', 'Leasehold Improvements', '', NULL, '', 0, '2022-11-16', 31),
(1389, 'Fixed Assets', 'Vehicles', 'Vehicles', '', NULL, '', 0, '2022-11-16', 31),
(1390, 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', 'Accounts Payable(Creditors)', '', NULL, '', 0, '2022-11-16', 31),
(1391, 'Current Liabilities', 'Sales and Service Tax Payable', 'CGST Payable', '', NULL, '', 0, '2022-11-16', 31),
(1392, 'Current Liabilities', 'Sales and Service Tax Payable', 'CST Payable', '', NULL, '', 0, '2022-11-16', 31),
(1393, 'Current Liabilities', 'Tax Suspense', 'CST Suspense', '', NULL, '', 0, '2022-11-16', 31),
(1394, 'Current Liabilities', 'Sales And Service Tax Payable', 'GST Payable', '', NULL, '', 0, '2022-11-16', 31),
(1395, 'Current Liabilities', 'Tax Suspense', 'GST Suspense', '', NULL, '', 0, '2022-11-16', 31),
(1396, 'Current Liabilities', 'Sales and Service Tax Payable', 'IGST Payable', '', NULL, '', 0, '2022-11-16', 31),
(1397, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST', '', NULL, '', 0, '2022-11-16', 31),
(1398, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input CGST Tax RCM', '', NULL, '', 0, '2022-11-16', 31),
(1399, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST', '', NULL, '', 0, '2022-11-16', 31),
(1400, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input IGST Tax RCM', '', NULL, '', 0, '2022-11-16', 31),
(1401, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess', '', NULL, '', 0, '2022-11-16', 31),
(1402, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Krishi Kalyan Cess RCM', '', NULL, '', 0, '2022-11-16', 31),
(1403, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax', '', NULL, '', 0, '2022-11-16', 31),
(1404, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input Service Tax RCM', '', NULL, '', 0, '2022-11-16', 31),
(1405, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input SGST', '', NULL, '', 0, '2022-11-16', 31),
(1406, 'Current Liabilities', 'Sales asnd Service Tax Payable', 'Input SGST Tax RCM', '', NULL, '', 0, '2022-11-16', 31),
(1407, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 14%', '', NULL, '', 0, '2022-11-16', 31),
(1408, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 4%', '', NULL, '', 0, '2022-11-16', 31),
(1409, 'Current Liabilities', 'Sales and Service Tax Payable', 'Input VAT 5%', '', NULL, '', 0, '2022-11-16', 31),
(1410, 'Current Liabilities', 'Sales and Service Tax Payable', 'Krishi Kalyan Cess Payable', '', NULL, '', 0, '2022-11-16', 31);
INSERT INTO `app1_accounts1` (`accounts1id`, `acctype`, `detype`, `name`, `description`, `gst`, `deftaxcode`, `balance`, `asof`, `cid_id`) VALUES
(1411, 'Current Liabilities', 'Tax Suspense', 'Krishi Kalyan Cess Suspense', '', NULL, '', 0, '2022-11-16', 31),
(1412, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST', '', NULL, '', 0, '2022-11-16', 31),
(1413, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CGST Tax RCM', '', NULL, '', 0, '2022-11-16', 31),
(1414, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output CST 2%', '', NULL, '', 0, '2022-11-16', 31),
(1415, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST', '', NULL, '', 0, '2022-11-16', 31),
(1416, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output IGST Tax RCM', '', NULL, '', 0, '2022-11-16', 31),
(1417, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Krishi Kaylan Cess', '', NULL, '', 0, '2022-11-16', 31),
(1418, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Krishi Kalyan Cess RCM', '', NULL, '', 0, '2022-11-16', 31),
(1419, 'Current Liabilties', 'Sales and Service Tax Payable', 'Output Service Tax', '', NULL, '', 0, '2022-11-16', 31),
(1420, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output Service Tax RCM', '', NULL, '', 0, '2022-11-16', 31),
(1421, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST', '', NULL, '', 0, '2022-11-16', 31),
(1422, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output SGST Tax RCM', '', NULL, '', 0, '2022-11-16', 31),
(1423, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 14%', '', NULL, '', 0, '2022-11-16', 31),
(1424, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 4%', '', NULL, '', 0, '2022-11-16', 31),
(1425, 'Current Liabilities', 'Sales and Service Tax Payable', 'Output VAT 5%', '', NULL, '', 0, '2022-11-16', 31),
(1426, 'Current Liabilties', 'Sales and Service Tax Payable', 'Service Tax Payable', '', NULL, '', 0, '2022-11-16', 31),
(1427, 'Current Liabilities', 'Tax Suspense', 'Service Tax Suspense', '', NULL, '', 0, '2022-11-16', 31),
(1428, 'Current Liabilities', 'Sales and Service Tax Payable', 'SGST Payable', '', NULL, '', 0, '2022-11-16', 31),
(1429, 'Current Liabilities', 'Sales and Service Tax Payable', 'Swachh Barath Cess Payable', '', NULL, '', 0, '2022-11-16', 31),
(1430, 'Current Liabilities', 'Tax Suspense', 'Swachh Barath Cess Suspense', '', NULL, '', 0, '2022-11-16', 31),
(1431, 'Current Liabilities', 'Current Liabilities', 'TDS Payable', '', NULL, '', 0, '2022-11-16', 31),
(1432, 'Current Liabilities', 'Sales and Service Tax Payable', 'VAT Payable', '', NULL, '', 0, '2022-11-16', 31),
(1433, 'Current Liabilities', 'Tax Suspense', 'VAT Suspense', '', NULL, '', 0, '2022-11-16', 31),
(1434, 'Equity', 'Opening Balance Equity', 'Opening Balance Equity', '', NULL, '', 0, '2022-11-16', 31),
(1435, 'Equity', 'Retained Earnings', 'Retained Earnings', '', NULL, '', 0, '2022-11-16', 31),
(1436, 'Income', 'Service/Fee Income', 'Billable Expense Income', '', NULL, '', 0, '2022-11-16', 31),
(1437, 'Income', 'Service/Fee Income', 'Consulting Income', '', NULL, '', 0, '2022-11-16', 31),
(1438, 'Income', 'Sales of Product Income', 'Product Sales', '', NULL, '', 0, '2022-11-16', 31),
(1439, 'Income', 'Sales of Product Income', 'Sales', '', NULL, '', 0, '2022-11-16', 31),
(1440, 'Income', 'Sales of Product Income', 'Sales-Hardware', '', NULL, '', 0, '2022-11-16', 31),
(1441, 'Income', 'Sales of Product Income', 'Sales-Software', '', NULL, '', 0, '2022-11-16', 31),
(1442, 'Income', 'Sales of Product Income', 'Sales-Support and Maintanance', '', NULL, '', 0, '2022-11-16', 31),
(1443, 'Income', 'Discount/Refund Given', 'Sales Discounts', '', NULL, '', 0, '2022-11-16', 31),
(1444, 'Income', 'Sales of Product Income', 'Sales of Product Income', '', NULL, '', 0, '2022-11-16', 31),
(1445, 'Income', 'Service/Fee Income', 'Services', '', NULL, '', 0, '2022-11-16', 31),
(1446, 'Income', 'Unapplied Cash Payment Income', 'Unapplied Cash Payment Income', '', NULL, '', 0, '2022-11-16', 31),
(1447, 'Income', 'Service/Fee Income', 'Uncategorised Income', '', NULL, '', 0, '2022-11-16', 31),
(1448, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Cost of Sales', '', NULL, '', 0, '2022-11-16', 31),
(1449, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Equipment Rental for Jobs', '', NULL, '', 0, '2022-11-16', 31),
(1450, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Freight and Shipping Cost', '', NULL, '', 0, '2022-11-16', 31),
(1451, 'Cost of Goods Sold', 'Suppliers and Materials-COS', 'Inventory Shrinkage', '', NULL, '', 0, '2022-11-16', 31),
(1452, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Merchant Account Fees', '', NULL, '', 0, '2022-11-16', 31),
(1453, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Hardware for Resale', '', NULL, '', 0, '2022-11-16', 31),
(1454, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Purchases-Software for Resale', '', NULL, '', 0, '2022-11-16', 31),
(1455, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Subcontracted Services', '', NULL, '', 0, '2022-11-16', 31),
(1456, 'Cost of Goods Sold', 'Cost of Goods Sold', 'Tools and Craft Suppliers', '', NULL, '', 0, '2022-11-16', 31),
(1457, 'Expenses', 'Advertising/Promotional', 'Advertising/Promotional', '', NULL, '', 0, '2022-11-16', 31),
(1458, 'Expenses', 'Bank Charges', 'Bank Charges', '', NULL, '', 0, '2022-11-16', 31),
(1459, 'Expenses', 'Office/General Administrative Expenses', 'Business Licenses and Permitts', '', NULL, '', 0, '2022-11-16', 31),
(1460, 'Expenses', 'Charitable Contributions', 'Charitable Contributions', '', NULL, '', 0, '2022-11-16', 31),
(1461, 'Expenses', 'Office/General Administrative Expenses', 'Computer and Internet Expense', '', NULL, '', 0, '2022-11-16', 31),
(1462, 'Expenses', 'Office/General Administrative Expenses', 'Continuing Education', '', NULL, '', 0, '2022-11-16', 31),
(1463, 'Expenses', 'Office/General Administrative Expenses', 'Depreciation Expense', '', NULL, '', 0, '2022-11-16', 31),
(1464, 'Expenses', 'Dues and Subscriptions', 'Dues and Subscriptions', '', NULL, '', 0, '2022-11-16', 31),
(1465, 'Expenses', 'Office/General Administrative Expenses', 'Housekeeping Charges', '', NULL, '', 0, '2022-11-16', 31),
(1466, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses', '', NULL, '', 0, '2022-11-16', 31),
(1467, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-General Liability Insurance', '', NULL, '', 0, '2022-11-16', 31),
(1468, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Health Insurance', '', NULL, '', 0, '2022-11-16', 31),
(1469, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Life and Disability Insurance', '', NULL, '', 0, '2022-11-16', 31),
(1470, 'Expenses', 'Office/General Administrative Expenses', 'Insurance Expenses-Professional Liability', '', NULL, '', 0, '2022-11-16', 31),
(1471, 'Expenses', 'Interest Paid', 'Interest Expenses', '', NULL, '', 0, '2022-11-16', 31),
(1472, 'Expenses', 'Meals and Entertainment', 'Meals and Entertainment', '', NULL, '', 0, '2022-11-16', 31),
(1473, 'Expenses', 'Office/General Administrative Expenses', 'Office Supplies', '', NULL, '', 0, '2022-11-16', 31),
(1474, 'Expenses', 'Office/General Administrative Expenses', 'Postage and Delivery', '', NULL, '', 0, '2022-11-16', 31),
(1475, 'Expenses', 'Office/General Administrative Expenses', 'Printing and Reproduction', '', NULL, '', 0, '2022-11-16', 31),
(1476, 'Expenses', 'Office/General Administrative Expenses', 'Professional Fees', '', NULL, '', 0, '2022-11-16', 31),
(1477, 'Expenses', 'Suppliers and Materials', 'Purchases', '', NULL, '', 0, '2022-11-16', 31),
(1478, 'Expenses', 'Office/General Administrative Expenses', 'Rent Expense', '', NULL, '', 0, '2022-11-16', 31),
(1479, 'Expenses', 'Office/General Administrative Expenses', 'Repair and Maintanance', '', NULL, '', 0, '2022-11-16', 31),
(1480, 'Expenses', 'Office/General Administrative Expenses', 'Small Tools and Equipments', '', NULL, '', 0, '2022-11-16', 31),
(1481, 'Expenses', 'Tax Expense', 'Swachh Barath Cess Expense', '', NULL, '', 0, '2022-11-16', 31),
(1482, 'Expense', 'Office/General Administrative Expenses', 'Taxes-Property', '', NULL, '', 0, '2022-11-16', 31),
(1483, 'Expenses', 'Office/General Administrative Expenses', 'Telephone Expense', '', NULL, '', 0, '2022-11-16', 31),
(1484, 'Expenses', 'Office/General Administrative Expenses', 'Travel Expense', '', NULL, '', 0, '2022-11-16', 31),
(1485, 'Expenses', 'Other Miscellaneous Service Cost', 'Uncategorised Expense', '', NULL, '', 0, '2022-11-16', 31),
(1486, 'Expenses', 'Utilities', 'Utilities', '', NULL, '', 0, '2022-11-16', 31),
(1487, 'Other Income', 'Other Miscellaneous Income', 'Finance Charge Income', '', NULL, '', 0, '2022-11-16', 31),
(1488, 'Other Income', 'Other Miscellaneous Income', 'Insurance Proceeds Received', '', NULL, '', 0, '2022-11-16', 31),
(1489, 'Other Income', 'Interest Earned', 'Interest Income', '', NULL, '', 0, '2022-11-16', 31),
(1490, 'Other Income', 'Other Miscellaneous Income', 'Proceeds From Sale of Assets', '', NULL, '', 0, '2022-11-16', 31),
(1491, 'Other Income', 'Other Miscellaneous Income', 'Shipping and Delivery Income', '', NULL, '', 0, '2022-11-16', 31),
(1492, 'Other Expenses', 'Other Expenses', 'Ask My Accountant', '', NULL, '', 0, '2022-11-16', 31),
(1493, 'Other Expenses', 'Other Expenses', 'CGST Write-Off', '', NULL, '', 0, '2022-11-16', 31),
(1494, 'Other Expense', 'Other Expense', 'GST Write-Off', '', NULL, '', 0, '2022-11-16', 31),
(1495, 'Other Expenses', 'Other Expenses', 'IGST Write-Off', '', NULL, '', 0, '2022-11-16', 31),
(1496, 'Other Expenses', 'Other Expenses', 'Miscellaneous Expense', '', NULL, '', 0, '2022-11-16', 31),
(1497, 'Other Expenses', 'Other Expenses', 'Political Contributions', '', NULL, '', 0, '2022-11-16', 31),
(1498, 'Other Expenses', 'Other Expenses', 'Reconciliation Discrepancies', '', NULL, '', 0, '2022-11-16', 31),
(1499, 'Other Expenses', 'Other Expenses', 'SGST Write-Off', '', NULL, '', 0, '2022-11-16', 31),
(1500, 'Other Expenses', 'Other Expenses', 'Tax Write-Off', '', NULL, '', 0, '2022-11-16', 31),
(1501, 'Other Expenses', 'Other Expenses', 'Vehicle Expenses', '', NULL, '', 0, '2022-11-16', 31);

-- --------------------------------------------------------

--
-- Table structure for table `app1_accountype`
--

CREATE TABLE `app1_accountype` (
  `accountypeid` int(11) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `accountbal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_accountype`
--

INSERT INTO `app1_accountype` (`accountypeid`, `accountname`, `accountbal`, `cid_id`) VALUES
(1, 'Inventory', '0', 16),
(2, 'Deferred GST Input Credit', '1200', 16),
(24, 'Inventory', '2000', 16),
(25, 'Inventory', '2000', 16),
(26, 'Inventory', '1000', 16),
(27, 'Inventory', '2000', 16),
(28, 'Inventory', '200', 16),
(29, 'Inventory', '200', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_addac`
--

CREATE TABLE `app1_addac` (
  `id` bigint(20) NOT NULL,
  `acname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `dateadded` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_addtax1`
--

CREATE TABLE `app1_addtax1` (
  `addtax1id` int(11) NOT NULL,
  `taxname` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_advancepayment`
--

CREATE TABLE `app1_advancepayment` (
  `advancepaymentid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `paymentdate` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `memo` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_bankstatement`
--

CREATE TABLE `app1_bankstatement` (
  `bankstatementid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_bankstatement`
--

INSERT INTO `app1_bankstatement` (`bankstatementid`, `name`, `date`, `description`, `debit`, `credit`, `cid_id`) VALUES
(1, 'bank_1', '', 'ahsgu', 20, 20, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_bills`
--

CREATE TABLE `app1_bills` (
  `billid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `paymacnt` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `paymmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `totamt` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `payornot` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_bundle`
--

CREATE TABLE `app1_bundle` (
  `bundleid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `product1` varchar(100) DEFAULT NULL,
  `product2` varchar(100) DEFAULT NULL,
  `product3` varchar(100) DEFAULT NULL,
  `product4` varchar(100) DEFAULT NULL,
  `hsn1` varchar(100) DEFAULT NULL,
  `hsn2` varchar(100) DEFAULT NULL,
  `hsn3` varchar(100) DEFAULT NULL,
  `hsn4` varchar(100) DEFAULT NULL,
  `description1` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `description4` varchar(255) DEFAULT NULL,
  `qty1` int(11) DEFAULT NULL,
  `qty2` int(11) DEFAULT NULL,
  `qty3` int(11) DEFAULT NULL,
  `qty4` int(11) DEFAULT NULL,
  `price1` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `price3` double DEFAULT NULL,
  `price4` double DEFAULT NULL,
  `total1` double DEFAULT NULL,
  `total2` double DEFAULT NULL,
  `total3` double DEFAULT NULL,
  `total4` double DEFAULT NULL,
  `tax1` varchar(100) DEFAULT NULL,
  `tax2` varchar(100) DEFAULT NULL,
  `tax3` varchar(100) DEFAULT NULL,
  `tax4` varchar(100) DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_bundle`
--

INSERT INTO `app1_bundle` (`bundleid`, `image`, `name`, `sku`, `description`, `product1`, `product2`, `product3`, `product4`, `hsn1`, `hsn2`, `hsn3`, `hsn4`, `description1`, `description2`, `description3`, `description4`, `qty1`, `qty2`, `qty3`, `qty4`, `price1`, `price2`, `price3`, `price4`, `total1`, `total2`, `total3`, `total4`, `tax1`, `tax2`, `tax3`, `tax4`, `grandtotal`, `cid_id`) VALUES
(3, '', 'Bun_1', 'N41554', 'des1', 'Inv_1', 'Non_1', '', '', '1001', '1002', '', '', 'des', 'des1', '', '', 1, 1, 0, 0, 78.125, 44.642857142857146, 0, 0, 78, 45, 0, 0, '28.0% GST (28%)', '12.0% GST (12%)', '0', '0', NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_cheqs`
--

CREATE TABLE `app1_cheqs` (
  `chequeid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `bankacc` varchar(100) NOT NULL,
  `mailaddr` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `chequeno` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_company`
--

CREATE TABLE `app1_company` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `caddress` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `cimg` varchar(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `industry` varchar(100) NOT NULL,
  `ctype` varchar(100) NOT NULL,
  `abt` varchar(100) NOT NULL,
  `paid` varchar(100) NOT NULL,
  `id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_company`
--

INSERT INTO `app1_company` (`cid`, `cname`, `caddress`, `city`, `state`, `pincode`, `cemail`, `phone`, `cimg`, `bname`, `industry`, `ctype`, `abt`, `paid`, `id_id`) VALUES
(16, 'HCL', 'Kochi', 'Kochi', 'Kerala', '680300', 'hcl@gmail.com', '8887776655', 'inventory.png', 'HCL', 'Accounting Services', 'Public Limited Company', 'No', 'Cash', 44),
(17, 'TCS', 'Banglore', 'Banglore', 'India', '680404', 'tcs@gmail.com', '8889997776', 'finsys_as_2.png', 'tcs business', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 45),
(18, 'BOSCH', 'Kochi', 'Kochi', 'India', '690202', 'bosch@gmail.com', '9988776655', 'TAX.png', 'Bosch', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 46),
(19, 'INFOX', 'Kochi', 'Kochi', 'India', '680035', 'infox@gmail.com', '9988773322', 'on.png', 'infox', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 47),
(20, 'Cognizant', 'Banglore', 'Banglore', 'India', '680397', 'cognizant@gmail.com', '7766554433', 'icon.png', 'cognizant_bn', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 48),
(21, 'S Pvt Ltd', 'kochi', 'Kochi', 'India', '680303', 'sam@gmail.com', '7766554488', 'avatar-2.png', 'S Company', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 49),
(22, 'Sam Co.', 'Kochi', 'Kochi', 'India', '680404', 'samco@gmail.com', '9988775544', 'banking.PNG', 'sambus', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 50),
(23, 'AD Co.', 'Kochi', 'Kochi', 'India', '680780', 'ad@gmail.com', '9988773322', 'bundle.png', 'adco', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 51),
(24, 'Am Co.', 'Kochi', 'Kochi', 'India', '680305', 'amco@gmail.com', '9966554433', 'avatar-2.png', 'amco', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 52),
(25, 'S Co.', 'Thrissur', 'Thrissur', 'India', '680203', 'sco@gmail.com', '9988770055', 'banking.PNG', 'sco', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 53),
(26, 'R Co.', 'Kochi', 'Kochi', 'India', '680709', 'rco@gmil.com', '9977665544', 'Screenshot (526).png', 'rco', 'Manufacturing', 'Private Limited Company', 'No', 'Cash', 54),
(27, 'A Co. Pvt', 'Trivandrum', 'Trivandrum', 'India', '680754', 'aco@gmail.com', '6655443322', 'Screenshot (540).png', 'aco', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 55),
(28, 'Anjana Co.', 'Thrissur', 'Thrissur', 'India', '680302', 'acol@gmail.com', '9898989898', 'Screenshot (541).png', 'acoll', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 56),
(29, 'Rose Corp.', 'Trivandrum', 'Trivandrum', 'India', '680456', 'rosecorp@gmail.com', '9977665544', 'icon.png', 'rosecorp', 'Information Tecnology', 'Private Limited Company', 'No', 'Cash', 57),
(30, 'Athu Co.', 'Thrissur', 'Thrissur', 'India', '680394', 'athuco@gmail.com', '9977665544', 'time.png', 'athuco', 'Manufacturing', 'Private Limited Company', 'No', 'Cash', 58),
(31, 'Anus', 'asd', 'sads', 'India', '682312', 'anus@gmail.com', '8798563221', '386infox.png', 'Anus', 'Information Tecnology', 'Private Limited Company', 'Yes', 'Credit card/Debit card', 59);

-- --------------------------------------------------------

--
-- Table structure for table `app1_credit`
--

CREATE TABLE `app1_credit` (
  `creditnoteid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `biladdr` varchar(100) NOT NULL,
  `creditdate` varchar(100) NOT NULL,
  `creditno` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `invnum` varchar(100) NOT NULL,
  `invperiod` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `descrip` varchar(100) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `subtot` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `grndtot` int(11) DEFAULT NULL,
  `taxamnt` int(11) DEFAULT NULL,
  `product1` varchar(100) NOT NULL,
  `descrip1` varchar(100) NOT NULL,
  `qty1` int(11) DEFAULT NULL,
  `price1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `total1` int(11) DEFAULT NULL,
  `product2` varchar(100) NOT NULL,
  `descrip2` varchar(100) NOT NULL,
  `qty2` int(11) DEFAULT NULL,
  `price2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `total2` int(11) DEFAULT NULL,
  `product3` varchar(100) NOT NULL,
  `descrip3` varchar(100) NOT NULL,
  `qty3` int(11) DEFAULT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` int(11) DEFAULT NULL,
  `tax3` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_credit`
--

INSERT INTO `app1_credit` (`creditnoteid`, `customer`, `mail`, `biladdr`, `creditdate`, `creditno`, `place`, `invnum`, `invperiod`, `product`, `descrip`, `qty`, `price`, `tax`, `subtot`, `total`, `grndtot`, `taxamnt`, `product1`, `descrip1`, `qty1`, `price1`, `tax1`, `total1`, `product2`, `descrip2`, `qty2`, `price2`, `tax2`, `total2`, `product3`, `descrip3`, `qty3`, `price3`, `total3`, `tax3`, `cid_id`) VALUES
(3, 'Jineesh N N', 'fdgf', 'fghdf', '2022-11-12', '1003', 'Assam', '33', '', 'Non_1', 'des1', 1, '44.64', '28', 279, 45, 357, 78, 'Inv_2', 'Inv_des', 1, '78.12', '28', 78, 'Inv_1', 'des', 1, '78.12', '28', 78, 'Inv_1', 'des', 1, '78.12', 78, '28', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_currency`
--

CREATE TABLE `app1_currency` (
  `currencyid` int(11) NOT NULL,
  `currencycode` varchar(255) DEFAULT NULL,
  `currencysymbol` varchar(255) DEFAULT NULL,
  `currencyname` varchar(255) DEFAULT NULL,
  `currencyplaces` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_currency`
--

INSERT INTO `app1_currency` (`currencyid`, `currencycode`, `currencysymbol`, `currencyname`, `currencyplaces`, `format`, `cid_id`) VALUES
(1, 'Australian Dollar', ' AU$', 'AUD-Australian Dollar', 'Australia', 'AUD', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_customer`
--

CREATE TABLE `app1_customer` (
  `customerid` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gsttype` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) NOT NULL,
  `panno` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `shipstreet` varchar(100) DEFAULT NULL,
  `shipcity` varchar(100) DEFAULT NULL,
  `shipstate` varchar(100) DEFAULT NULL,
  `shippincode` varchar(100) DEFAULT NULL,
  `shipcountry` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_customer`
--

INSERT INTO `app1_customer` (`customerid`, `title`, `firstname`, `lastname`, `company`, `location`, `gsttype`, `gstin`, `panno`, `email`, `website`, `mobile`, `street`, `city`, `state`, `pincode`, `country`, `shipstreet`, `shipcity`, `shipstate`, `shippincode`, `shipcountry`, `cid_id`) VALUES
(15, 'Miss', 'Sagma', 'N G', 'BOSCH', 'Chennai', 'GST registered Regular', '29ACKFFGH21', 'AJEPS09L', 'sagma@gmail.com', 'www.google.com', '9998887776', 'XYZ Street', 'Chennai', 'Tamilnadu', '680400', 'India', 'XYZ Street', 'Chennai', 'Tamilnadu', '680400', 'India', 16),
(16, 'Miss', 'Silpa', 'N S', 'IBM', 'Banglore', 'GST registered Regular', 'APFGTDR546', 'APPCK60L', 'silpa@gmail.com', 'www.google.com', '998877665', 'z street', 'Banglore', 'Karnataka', '680717', 'India', 'z street', 'Banglore', 'Karnataka', '680717', 'India', 16),
(17, 'Mr', 'Vishnu', 'D', 'Amazon', 'Banglore', 'GST registered Regular', '29ABCDEF56', 'AJEPS87H', 'vishnu@gmail.com', 'www.google.com', '9998887775', 'XYZ Street', 'Banglore', 'Karnataka', '680400', 'India', 'XYZ Street', 'Banglore', 'Karnataka', '680400', 'India', 16),
(18, 'Miss', 'Sonia', 'Johny', 'Aspire', 'Kochi', 'GST registered Regular', '29ACFDER56', 'AJETS78K', 'sonia@gmail.com', 'www.google.com', '8889996664', 'Street1', 'Kochi', 'Kerala', '680303', 'India', 'Street1', 'Kochi', 'Kerala', '680303', 'India', 16),
(19, 'Mr', 'Jineesh', 'N N', 'Cognizant', 'Banglore', 'GST registered Regular', '29APPCK7465F1Z1', 'APPCK7465F', 'jineesh@gmail.com', 'www.google.com', '9988776632', 'Banglore1', 'Banglore', 'Karnataka', '680987', 'India', 'Banglore1', 'Banglore', 'Karnataka', '680987', 'India', 16),
(21, 'Mr', 'Sonia', 'Johny', 'HCL', 'Kochi', 'GST registered Regular', '29APPCK7465F1Z1', 'APPCK7465F', 'sonia@gmail.com', 'www.google.com', '8877665544', 'Street_1', 'Kochi', 'Kerala', '680203', 'India', 'Street_1', 'Kochi', 'Kerala', '680203', 'India', 18),
(22, 'Mr', 'Adi', 'N S', 'ACo.', 'Kochi', 'GST registered Regular', '29APPCK7465F1Z1', 'APPCK7465F', 'adi@gmail.com', 'www.google.com', '9988221100', 'Street_1', 'Kochi', 'Kerala', '680405', 'India', 'Street_1', 'Kochi', 'Kerala', '680405', 'India', 25),
(23, 'Mr', 'Chandu', 'rag', 'dfgfd', 'dfgfdgfd', 'GST registered Regular', '29APPCK7465F1Z1', 'APPCK7465F', 'fgfdgfd@gmail.com', '', '8754213265', 'sdfsfsd', 'sdfsd', 'dfsds', 'dfsd', 'fdfsd', 'sdfsfsd', 'sdfsd', 'dfsds', 'dfsd', 'fdfsd', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_customercompliant`
--

CREATE TABLE `app1_customercompliant` (
  `compliantid` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `customername` varchar(255) DEFAULT NULL,
  `invoiceno` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `soldqty` int(11) DEFAULT NULL,
  `compliantqty` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_customercompliant`
--

INSERT INTO `app1_customercompliant` (`compliantid`, `date`, `customername`, `invoiceno`, `productname`, `soldqty`, `compliantqty`, `description`, `cid_id`) VALUES
(1, '2022-09-27', 'Vishnu D', '30', 'Inv_1', 10, 2, 'des', 16),
(2, '2022-09-27', 'Vishnu D', '30', 'Inv_1', 10, 2, 'des', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_customize`
--

CREATE TABLE `app1_customize` (
  `customizeid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `pcolour` varchar(255) NOT NULL,
  `scolour` varchar(255) NOT NULL,
  `fonts` varchar(255) NOT NULL,
  `lastedited` varchar(255) NOT NULL,
  `selected` varchar(255) NOT NULL,
  `label1` varchar(255) DEFAULT NULL,
  `label2` varchar(255) DEFAULT NULL,
  `label3` varchar(255) DEFAULT NULL,
  `label4` varchar(255) DEFAULT NULL,
  `label5` varchar(255) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_customize`
--

INSERT INTO `app1_customize` (`customizeid`, `name`, `template`, `pcolour`, `scolour`, `fonts`, `lastedited`, `selected`, `label1`, `label2`, `label3`, `label4`, `label5`, `cid_id`) VALUES
(1, 'Form_1', 'Classic', '#E9967A', '#DDA0DD', 'Serif Serif font', '2022-10-20', '0', NULL, NULL, NULL, NULL, NULL, 16),
(4, 'Form_2', '', '#E9967A', '#DB7093', 'Serif Serif font', '2022-09-19', '1', NULL, NULL, NULL, NULL, NULL, 16),
(9, '', '', '#DB7093', '', '', '2022-10-17', '0', NULL, NULL, NULL, NULL, NULL, 25),
(10, 'Form', '', '#F0E68C', '#2F4F4F', '', '2022-10-17', '1', NULL, NULL, NULL, NULL, NULL, 25),
(11, 'F_1', '', '#8FBC8F', '#D2B48C', 'Serif Serif font', '2022-10-17', '1', NULL, NULL, NULL, NULL, NULL, 25),
(12, 'F_2', '', '#E9967A', '#DB7093', 'Serif Serif font', '2022-10-17', '0', NULL, NULL, NULL, NULL, NULL, 25),
(13, '', '', '', '', 'Serif Serif font', '2022-10-20', '0', NULL, NULL, NULL, NULL, NULL, 30),
(14, 'F-1', '', '', '', '', '2022-10-20', '0', NULL, NULL, NULL, NULL, NULL, 30),
(15, 'Form_3', '', '#E9967A', '#2F4F4F', 'Serif Serif font', '2022-10-20', '1', 'TAX INVOICE1', 'Invoice No1', 'Invoice Date1', 'Due Date1', 'Terms1', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_delayedcharge`
--

CREATE TABLE `app1_delayedcharge` (
  `delayedchargeid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `delayedchargedate` varchar(100) NOT NULL,
  `delayedchargeno` varchar(100) NOT NULL,
  `prodorser` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `prodorser1` varchar(100) NOT NULL,
  `description1` varchar(100) NOT NULL,
  `qty1` varchar(100) NOT NULL,
  `rate1` varchar(100) NOT NULL,
  `total1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `prodorser2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `rate2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `prodorser3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `rate3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_delayedcharge`
--

INSERT INTO `app1_delayedcharge` (`delayedchargeid`, `customer`, `delayedchargedate`, `delayedchargeno`, `prodorser`, `description`, `qty`, `rate`, `tax`, `total`, `subtotal`, `grandtotal`, `prodorser1`, `description1`, `qty1`, `rate1`, `total1`, `tax1`, `prodorser2`, `description2`, `qty2`, `rate2`, `total2`, `tax2`, `prodorser3`, `description3`, `qty3`, `rate3`, `total3`, `tax3`, `taxamount`, `cid_id`) VALUES
(1, 'Sagma N G', '2022-11-14', '1001', 'Inv_1', 'des', '2', '78.20', '28', '156.4', '312.8', '400.384', 'Inv_1', 'des', '2', '78.20', '156.4', '28', '', '', '0', '', '0', '0', '', '', '0', '', '0', '0', '87.584', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_employee`
--

CREATE TABLE `app1_employee` (
  `employeeid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `joiningdate` varchar(100) NOT NULL,
  `employeenumber` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `providebankdetails` varchar(20) NOT NULL,
  `bankaccountnumber` varchar(100) NOT NULL,
  `ifsccode` varchar(100) NOT NULL,
  `hrareceived` int(11) NOT NULL,
  `totalrentpaid` int(11) NOT NULL,
  `livein` varchar(100) NOT NULL,
  `applicabletaxregime` varchar(100) NOT NULL,
  `pannumber` varchar(100) NOT NULL,
  `aadhaarnumber` varchar(100) NOT NULL,
  `universalaccountnumber` varchar(100) NOT NULL,
  `pfaccountnumber` varchar(100) NOT NULL,
  `epsaccountnumber` varchar(100) NOT NULL,
  `praccountnumber` varchar(100) NOT NULL,
  `esinumber` varchar(100) NOT NULL,
  `esidispensaryname` varchar(100) NOT NULL,
  `basic` int(11) NOT NULL,
  `da` int(11) NOT NULL,
  `othincome1` varchar(100) NOT NULL,
  `othincome2` varchar(100) NOT NULL,
  `othincome3` varchar(100) NOT NULL,
  `othincome4` varchar(100) NOT NULL,
  `othincome5` varchar(100) NOT NULL,
  `othamount1` int(11) NOT NULL,
  `othamount2` int(11) NOT NULL,
  `othamount3` int(11) NOT NULL,
  `othamount4` int(11) NOT NULL,
  `othamount5` int(11) NOT NULL,
  `provifund` int(11) NOT NULL,
  `proftax` int(11) NOT NULL,
  `esi` int(11) NOT NULL,
  `deduc1` varchar(100) NOT NULL,
  `deduc2` varchar(100) NOT NULL,
  `deduc3` varchar(100) NOT NULL,
  `deduc4` varchar(100) NOT NULL,
  `deducamt1` int(11) NOT NULL,
  `deducamt2` int(11) NOT NULL,
  `deducamt3` int(11) NOT NULL,
  `deducamt4` int(11) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_employee`
--

INSERT INTO `app1_employee` (`employeeid`, `name`, `joiningdate`, `employeenumber`, `designation`, `department`, `branch`, `location`, `gender`, `age`, `mobile`, `gmail`, `address`, `providebankdetails`, `bankaccountnumber`, `ifsccode`, `hrareceived`, `totalrentpaid`, `livein`, `applicabletaxregime`, `pannumber`, `aadhaarnumber`, `universalaccountnumber`, `pfaccountnumber`, `epsaccountnumber`, `praccountnumber`, `esinumber`, `esidispensaryname`, `basic`, `da`, `othincome1`, `othincome2`, `othincome3`, `othincome4`, `othincome5`, `othamount1`, `othamount2`, `othamount3`, `othamount4`, `othamount5`, `provifund`, `proftax`, `esi`, `deduc1`, `deduc2`, `deduc3`, `deduc4`, `deducamt1`, `deducamt2`, `deducamt3`, `deducamt4`, `cid_id`) VALUES
(1, 'Chinju Paul', '', '1', 'Developer', 'IT Department', 'Python', 'kochi', 'Female', 25, '', 'chinju@gmail.com', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', 100, 20, '40', '50', '30', '60', '60', 25, 15, 35, 45, 55, 75, 5, 30, '5', '6', '7', '8', 9, 11, 12, 13, 16),
(2, 'Ann', '10/12/22', '1001', 'Developer', 'IT', '', '', 'Female', 0, '', 'ann@gmail.com', '', '', '124628239299', 'SBIN001123', 2500, 1600, 'No', '15', 'AJEPS5464L', '123412341234', '12346789062', '173283993347', '1625615271', '27368268812', '82.5', 'ESI', 9350, 935, '', 'Conveyance', 'Child Education Allowance', 'Conveyance', '0', 0, 0, 0, 0, 10, 1320, 0, 82, '', '', '', '', 0, 0, 0, 0, 18),
(3, 'Anu', '10/12/22', '1002', 'Developer', 'IT', 'EKM', 'Kochi', 'Female', 25, '8877665544', 'anu@gmail.com', 'fghagsja', '', '1538263239720', 'SBIN98381', 2000, 250, 'No', '15', 'AJEPS3674L', '123412341234', '41761562719', '4261427172', '8721872197291', '52471427125', '82.5', '15637152815', 9350, 1000, '', 'Conveyance', 'Child Education Allowance', 'Conveyance', 'Conveyance', 250, 0, 0, 0, 0, 1320, 0, 82, '', '', '', '', 0, 0, 0, 0, 18),
(4, 'anusree', '10/15/22', '001', 'developer', 'python', 'ekm', 'tcr', 'Female', 25, '9878678908', 'anu@gmail.com', 'puthumanassery,pavaratty', '', '98765432112', 'FDRL00123', 1500, 2500, 'Yes', '1000', 'ABCDE1234K', '987656787865', '1', '3', '2', '4', '165', '6', 18700, 2000, 'HRA', 'Conveyance', 'Medical Allowance', 'Conveyance', 'Conveyance', -700, 100, 200, 300, 400, 2640, 1100, 165, '', '', '', '', 10, 20, 30, 40, 21);

-- --------------------------------------------------------

--
-- Table structure for table `app1_estimate`
--

CREATE TABLE `app1_estimate` (
  `estimateid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `billingaddress` varchar(100) NOT NULL,
  `estimatedate` varchar(100) NOT NULL,
  `expirationdate` varchar(100) NOT NULL,
  `estimateno` varchar(100) NOT NULL,
  `placeofsupply` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `estimatetotal` varchar(100) NOT NULL,
  `product1` varchar(100) NOT NULL,
  `hsn1` varchar(100) NOT NULL,
  `description1` varchar(100) NOT NULL,
  `qty1` varchar(100) NOT NULL,
  `rate1` varchar(100) NOT NULL,
  `total1` varchar(100) NOT NULL,
  `tax1` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `rate2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `rate3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_estimate`
--

INSERT INTO `app1_estimate` (`estimateid`, `customer`, `email`, `billingaddress`, `estimatedate`, `expirationdate`, `estimateno`, `placeofsupply`, `product`, `hsn`, `description`, `qty`, `rate`, `total`, `tax`, `subtotal`, `estimatetotal`, `product1`, `hsn1`, `description1`, `qty1`, `rate1`, `total1`, `tax1`, `product2`, `hsn2`, `description2`, `qty2`, `rate2`, `total2`, `tax2`, `product3`, `hsn3`, `description3`, `qty3`, `rate3`, `total3`, `tax3`, `taxamount`, `cid_id`) VALUES
(1, 'Jineesh N N', '', '', '2022-11-12', '2022-11-12', '1001', 'Kochi', 'Inv_1', '1001', 'des', '1', '78.125', '78.125', '28', '78.125', '100.0', '', '', '', '0', '', '0', '0', '', '', '', '0', '', '0', '0', '', '', '', '0', '', '0', '0', '21.875', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_expences`
--

CREATE TABLE `app1_expences` (
  `expencesid` int(11) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `paymmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `totamt` varchar(100) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `descrptin1` varchar(100) NOT NULL,
  `catqty1` varchar(100) NOT NULL,
  `catprice1` varchar(100) NOT NULL,
  `cattotal1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `category3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `category4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_expences`
--

INSERT INTO `app1_expences` (`expencesid`, `payee`, `paymdate`, `paymmethod`, `refno`, `totamt`, `category1`, `descrptin1`, `catqty1`, `catprice1`, `cattotal1`, `category2`, `descrptin2`, `catqty2`, `catprice2`, `cattotal2`, `category3`, `descrptin3`, `catqty3`, `catprice3`, `cattotal3`, `category4`, `descrptin4`, `catqty4`, `catprice4`, `cattotal4`, `product`, `hsn`, `description`, `qty`, `price`, `total`, `product2`, `hsn2`, `description2`, `qty2`, `price2`, `total2`, `product3`, `hsn3`, `description3`, `qty3`, `price3`, `total3`, `product4`, `hsn4`, `description4`, `qty4`, `price4`, `total4`, `subtotal`, `tax`, `tax2`, `tax3`, `tax4`, `taxamount`, `grandtotal`, `cid_id`) VALUES
(1, 'Sneha S', '2022-09-29', 'Cash', '', '', 'Inventory Asset', 'des', '1', '300', '300', 'Retained Earnings', 'des', '1', '600', '600', 'Output CGST', 'des', '1', '25', '25', 'Sales', 'des', '1', '75', '75', 'Inv_1', '1001', 'des\n\n\n\n\n\n\n', '3', '78.12', '234.36', 'Non_1', '1002', 'des1\n\n\n\n\n\n\n', '4', '44.64', '178.56', 'Inv_2', '01234567', 'Inv_des\n\n\n\n\n', '8', '78.2', '625.6', '', '', '\n\n\n\n\n\n\n', '0', '0', '', '2038.52', '28.0% GST(28%)', '28.0% GST(28%)', '28.0% GST(28%)', 'Choose', '137.51', '2176.03', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_expenseaccount`
--

CREATE TABLE `app1_expenseaccount` (
  `expenseid` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `begbal` varchar(100) NOT NULL,
  `endbal` varchar(100) NOT NULL,
  `enddate` varchar(100) DEFAULT NULL,
  `dat` varchar(100) DEFAULT NULL,
  `serchar` varchar(100) NOT NULL,
  `expacc` varchar(100) DEFAULT NULL,
  `type1` varchar(100) DEFAULT NULL,
  `memo1` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `expaccountypid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_incomeaccount`
--

CREATE TABLE `app1_incomeaccount` (
  `incomeid` int(11) NOT NULL,
  `dat1` varchar(100) DEFAULT NULL,
  `intear` varchar(100) NOT NULL,
  `incacc` varchar(100) DEFAULT NULL,
  `type2` varchar(100) DEFAULT NULL,
  `memo2` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL,
  `expenceincomeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_inventory`
--

CREATE TABLE `app1_inventory` (
  `inventoryid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `initialqty` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `stockalrt` varchar(100) NOT NULL,
  `invacnt` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `salesprice` varchar(10) NOT NULL,
  `incomeacnt` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `purchaseinfo` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expacnt` varchar(100) NOT NULL,
  `purtax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `cxq` double DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_inventory`
--

INSERT INTO `app1_inventory` (`inventoryid`, `image`, `name`, `sku`, `hsn`, `unit`, `category`, `initialqty`, `date`, `stockalrt`, `invacnt`, `description`, `salesprice`, `incomeacnt`, `tax`, `purchaseinfo`, `cost`, `expacnt`, `purtax`, `revcharge`, `presupplier`, `cxq`, `cid_id`) VALUES
(8, '', 'Inv_1', 'N41554', '1001', 'BAG Bags', 'Inventory', '-11', '2022-08-25', '5', 'Inventory Asset', 'des', '78.20', 'Billable Expense Income', '28.0% GST (28%)', 'des', '78.125', 'Cost of sales', '28.0% GST (28%)', '5', 'Select Supplier', NULL, 16),
(9, '', 'Inv_2', 'N66551', '01234567', 'BAG Bags', 'Default', '22', '2022-10-4', '20', 'Inventory Asset', 'Inv_des', '78.20', 'Billable Expense Income', '28.0% GST (28%)', 'pur_des', '84.7457627118644', 'Cost of sales', '18.0% IGST (18%)', '5', 'Neena C', NULL, 16),
(10, '', 'INV_1', 'N41554', '99998888', 'BAG Bags', 'Product', '10', '2022-10-12', '8', 'Inventory Asset', 'des_1', '78.125', 'Billable Expense Income', '28.0% GST (28%)', 'des_2', '78.125', 'Cost of sales', '28.0% GST (28%)', '5', '', NULL, 18),
(11, '', 'Inv_1', 'N41554', '00000001', 'BAG Bags', 'Product', '9', '2022-10-16', '5', 'Inventory Asset', 'des', '78.125', 'Choose...', '28.0% GST (28%)', '', '', 'Cost of sales', 'Choose...', '0', '', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `app1_invoice`
--

CREATE TABLE `app1_invoice` (
  `invoiceid` int(11) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `invoicedate` varchar(100) NOT NULL,
  `duedate` varchar(100) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `placosupply` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `tax` varchar(100) NOT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `grandtotal` int(11) DEFAULT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` int(11) DEFAULT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` int(11) DEFAULT NULL,
  `tax2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` int(11) DEFAULT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` int(11) DEFAULT NULL,
  `tax3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` int(11) DEFAULT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` int(11) DEFAULT NULL,
  `tax4` varchar(100) NOT NULL,
  `amtrecvd` int(11) DEFAULT NULL,
  `taxamount` int(11) DEFAULT NULL,
  `baldue` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_invoice`
--

INSERT INTO `app1_invoice` (`invoiceid`, `customername`, `email`, `invoiceno`, `terms`, `invoicedate`, `duedate`, `bname`, `placosupply`, `product`, `hsn`, `description`, `qty`, `price`, `total`, `tax`, `subtotal`, `grandtotal`, `product2`, `hsn2`, `description2`, `qty2`, `price2`, `total2`, `tax2`, `product3`, `hsn3`, `description3`, `qty3`, `price3`, `total3`, `tax3`, `product4`, `hsn4`, `description4`, `qty4`, `price4`, `total4`, `tax4`, `amtrecvd`, `taxamount`, `baldue`, `cid_id`) VALUES
(30, 'Vishnu D', 'vishnu@gmail.com', 30, 'NET 15', '2022-09-23', '2022-10-08', 'Vishnu D\nAmazon\nXYZ Street\nBanglore\nKarnataka\n680400\nIndia', 'Kerala', 'Inv_1', '1001', 'des', 1, '78.12', 78, '28.0% GST (28%)', 246, 300, 'Non_1', '1002', 'des1', 1, '44.64', 45, '12.0% GST (12%)', 'Bun_1', 'N41554', 'des1', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', 100, 54, '200.23000000000002', 16),
(31, 'Silpa N S', 'silpa@gmail.com', 31, 'NET 30', '2022-09-23', '2022-09-23', 'Silpa N S\nIBM\nz street\nBanglore\nKarnataka\n680717\nIndia', 'Kerala', 'Inv_1', '1001', 'des', 1, '78.12', 78, '28.0% GST (28%)', 123, 300, 'Non_1', '1002', 'des1', 1, '44.64', 45, '12.0% GST (12%)', 'Bun_1', 'N41554', 'des1', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', 0, 54, '300.23', 16),
(33, 'Sonia Johny', 'sonia@gmail.com', 0, 'NET 15', '2022-10-12', '2022-10-27', 'Sonia Johny\nHCL\nStreet_1\nKochi\nKerala\n680203\nIndia', 'Kerala', 'INV_1', '99998888', 'des_1', 1, '78.12', 78, '28.0% GST (28%)', 256, 328, 'Non_inv_1', '11112222', 'n_des_1', 1, '78.12', 78, '28.0% GST (28%)', 'INV_1', '99998888', 'des_1', 1, '100', 100, '28.0% GST (28%)', '', '', '', 0, '0', 0, 'Choose', 300, 72, '27.99000000000001', 18),
(34, 'Adi N S', 'adi@gmail.com', 1000, 'NET 15', '2022-10-16', '2022-10-31', 'Adi N S\nACo.\nStreet_1\nKochi\nKerala\n680405\nIndia', 'Kerala', 'Inv_1', '00000001', 'des', 1, '78.12', 78, '28.0% GST (28%)', 78, 100, '', '', '', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', 70, 22, '29.989999999999995', 25),
(35, 'Jineesh N N', 'jineesh@gmail.com', 32, 'NET 30', '2022-11-12', '2022-12-12', 'Jineesh N N\nCognizant\nBanglore1\nBanglore\nKarnataka\n680987\nIndia', 'Kerala', 'Non_1', '1002', 'des1', 1, '44.64', 45, '28.0% GST (28%)', 279, 357, 'Inv_2', '01234567', 'Inv_des', 1, '78.12', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78.12', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78.12', 78, '28.0% GST (28%)', 0, 78, '335.25', 16),
(36, 'Jineesh N N', 'jineesh@gmail.com', 33, 'NET 30', '2022-11-12', '2022-12-12', 'Jineesh N N\nCognizant\nBanglore1\nBanglore\nKarnataka\n680987\nIndia', 'Kerala', 'Non_1', '1002', 'des1', 1, '44.64', 45, '28.0% GST (28%)', 279, 357, 'Inv_2', '01234567', 'Inv_des', 1, '78.12', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78.12', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78.12', 78, '28.0% GST (28%)', 0, 78, '335.25', 16),
(37, 'Jineesh N N', 'jineesh@gmail.com', 34, 'NET 30', '2022-11-12', '2022-12-12', 'Jineesh N N\nCognizant\nBanglore1\nBanglore\nKarnataka\n680987\nIndia', 'Kerala', 'Non_1', '1002', 'des1', 1, '44', 44, '28.0% GST (28%)', 278, 356, 'Inv_2', '01234567', 'Inv_des', 1, '78', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78', 78, '28.0% GST (28%)', 0, 78, '334.0', 16),
(38, 'Jineesh N N', 'jineesh@gmail.com', 35, 'NET 30', '2022-11-12', '2022-12-12', 'Jineesh N N\nCognizant\nBanglore1\nBanglore\nKarnataka\n680987\nIndia', 'Kerala', 'Non_1', '1002', 'des1', 1, '44', 44, '28.0% GST (28%)', 278, 356, 'Inv_2', '01234567', 'Inv_des', 1, '78', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78', 78, '28.0% GST (28%)', 0, 78, '334.0', 16),
(39, 'Jineesh N N', 'jineesh@gmail.com', 36, 'NET 30', '2022-11-12', '2022-12-12', 'Jineesh N N\nCognizant\nBanglore1\nBanglore\nKarnataka\n680987\nIndia', 'Kerala', 'Non_1', '1002', 'des1', 1, '44', 44, '28.0% GST (28%)', 278, 356, 'Inv_2', '01234567', 'Inv_des', 1, '78', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78', 78, '28.0% GST (28%)', 0, 78, '334.0', 16),
(40, 'Jineesh N N', 'jineesh@gmail.com', 37, 'NET 30', '2022-11-12', '2022-12-12', 'Jineesh N N\nCognizant\nBanglore1\nBanglore\nKarnataka\n680987\nIndia', 'Kerala', 'Non_1', '1002', 'des1', 1, '44', 44, '28.0% GST (28%)', 278, 356, 'Inv_2', '01234567', 'Inv_des', 1, '78', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78', 78, '28.0% GST (28%)', 'Inv_1', '1001', 'des', 1, '78', 78, '28.0% GST (28%)', 0, 78, '334.0', 16),
(41, 'Jineesh N N', 'jineesh@gmail.com', 38, 'NET 15', '2022-11-12', '2022-11-27', 'Jineesh N N\nCognizant\nBanglore1\nBanglore\nKarnataka\n680987\nIndia', 'Kerala', 'Inv_2', '01234567', 'Inv_des', 1, '78', 78, '28.0% GST (28%)', 156, 200, 'Inv_1', '1001', 'des', 1, '78.12', 78, '28.0% GST (28%)', '', '', '', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', 0, 44, '199.83', 16),
(42, 'Sonia Johny', 'sonia@gmail.com', 39, 'NET 15', '2022-11-12', '2022-11-27', 'Sonia Johny\nAspire\nStreet1\nKochi\nKerala\n680303\nIndia', 'Kerala', 'Inv_1', '1001', 'des', 1, '20', 20, '28.0% GST (28%)', 98, 125, 'Inv_2', '01234567', 'Inv_des', 1, '78', 78, '28.0% GST (28%)', '', '', '', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', 0, 27, '125.44', 16),
(43, 'Sagma N G', 'sagma@gmail.com', 40, 'NET 15', '2022-11-12', '2022-11-27', 'Sagma N G\nBOSCH\nXYZ Street\nChennai\nTamilnadu\n680400\nIndia', 'Kerala', 'Inv_2', '01234567', 'Inv_des', 1, '78.2', 78, '28.0% GST (28%)', 78, 100, '', '', '', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', 0, 22, '100.1', 16),
(44, 'Silpa N S', 'silpa@gmail.com', 41, 'NET 15', '2022-11-14', '2022-11-29', 'Silpa N S\nIBM\nz street\nBanglore\nKarnataka\n680717\nIndia', 'Kerala', 'Inv_2', '01234567', 'Inv_des', 1, '78.2', 78, '28.0% GST (28%)', 156, 200, 'Inv_2', '01234567', 'Inv_des', 1, '78.2', 78, '28.0% GST (28%)', '', '', '', 0, '0', 0, 'Choose', '', '', '', 0, '0', 0, 'Choose', 0, 44, '200.19', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_item`
--

CREATE TABLE `app1_item` (
  `itemsid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `hsncode` varchar(255) DEFAULT NULL,
  `taxable` varchar(255) DEFAULT NULL,
  `nontaxable` varchar(255) DEFAULT NULL,
  `purchaseprice` varchar(255) DEFAULT NULL,
  `purchaseaccount` varchar(255) DEFAULT NULL,
  `purchasedes` varchar(255) DEFAULT NULL,
  `salesprice` varchar(255) DEFAULT NULL,
  `salesaccount` varchar(255) DEFAULT NULL,
  `salesdes` varchar(255) DEFAULT NULL,
  `taxrate` varchar(255) DEFAULT NULL,
  `intrastatetaxrate` varchar(255) DEFAULT NULL,
  `interstatetaxrate` varchar(255) DEFAULT NULL,
  `trackinventory` varchar(255) DEFAULT NULL,
  `inventoryaccount` varchar(255) DEFAULT NULL,
  `stockonhand` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `inactive` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_item`
--

INSERT INTO `app1_item` (`itemsid`, `name`, `type`, `unit`, `hsncode`, `taxable`, `nontaxable`, `purchaseprice`, `purchaseaccount`, `purchasedes`, `salesprice`, `salesaccount`, `salesdes`, `taxrate`, `intrastatetaxrate`, `interstatetaxrate`, `trackinventory`, `inventoryaccount`, `stockonhand`, `active`, `inactive`, `cid_id`) VALUES
(1, 'Item_1', 'Goods', 'BAG Bags', '12345678', '1', '0', '100', 'Cost of Sales', 'p_des\n\n', '150', 'Billable Expense Income', 's_des\n\n', '28.0% GST (28%)', 'GST 0(0%)', 'IGST 5(5%)', '1', 'Inventory Asset', '10', 'Active', '', 16),
(3, 'Item_2', 'Services', 'CAN Cans', '99887766', '0', '1', '200', 'Cost of Sales', 'p_des_2\n', '', '', '\n', '15.0% ST (100%)', 'GST 18(18%)', 'IGST 18(18%)', '0', '', '0', '', 'Inactive', 16),
(4, 'Item_3', 'Goods', 'V Volume', '01234567', '1', '0', '10', 'Cost of Sales', 'pdes_3\n', '25', 'Billable Expense Income', 'sdes_3\n', '14.00% ST (100%)', 'GST 0(0%)', 'IGST 0(0%)', '0', '', '0', 'Active', '', 16),
(6, 'Item_4', 'Goods', 'BKL Buckles', '12340975', '1', '0', '200', 'Cost of Sales', 'p_des4\n', '', 'Billable Expense Income', '\n', '14.0% VAT (100%)', 'GST 12(12%)', 'IGST 18(18%)', '0', '', '0', '', 'Inactive', 16),
(7, 'Item_5', 'Services', 'CTN Cartons', '22334455', '0', '1', '40', 'Cost of Sales', 'pdess\n', '50', 'Billable Expense Income', 'sdess\n', '14.00% ST (100%)', 'GST 28(28%)', 'IGST 28(28%)', '0', '', '0', 'Active', 'Inactive', 16),
(10, 'Item_6', 'Goods', 'CTN Cartons', '99887744', '1', '0', '100', 'Cost of Sales', 'shd\n', '125', 'Billable Expense Income', 'ammnss\n', '15.0% ST (100%)', 'GST 18(18%)', 'IGST 28(28%)', '0', '', '0', 'Active', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_manualjournal`
--

CREATE TABLE `app1_manualjournal` (
  `journalid` int(11) NOT NULL,
  `draftpublish` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `journalno` varchar(255) DEFAULT NULL,
  `referenceno` varchar(255) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `journaltype` varchar(255) DEFAULT NULL,
  `account1` varchar(255) DEFAULT NULL,
  `description1` varchar(500) DEFAULT NULL,
  `contact1` varchar(255) DEFAULT NULL,
  `debits1` varchar(255) DEFAULT NULL,
  `credits1` varchar(255) DEFAULT NULL,
  `account2` varchar(255) DEFAULT NULL,
  `description2` varchar(500) DEFAULT NULL,
  `contact2` varchar(255) DEFAULT NULL,
  `debits2` varchar(255) DEFAULT NULL,
  `credits2` varchar(255) DEFAULT NULL,
  `subtotal1` varchar(255) DEFAULT NULL,
  `subtotal2` varchar(255) DEFAULT NULL,
  `totalamount1` varchar(255) DEFAULT NULL,
  `totalamount2` varchar(255) DEFAULT NULL,
  `difference` varchar(255) DEFAULT NULL,
  `attachedfile` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_manualjournal`
--

INSERT INTO `app1_manualjournal` (`journalid`, `draftpublish`, `date`, `journalno`, `referenceno`, `notes`, `currency`, `journaltype`, `account1`, `description1`, `contact1`, `debits1`, `credits1`, `account2`, `description2`, `contact2`, `debits2`, `credits2`, `subtotal1`, `subtotal2`, `totalamount1`, `totalamount2`, `difference`, `attachedfile`, `cid_id`) VALUES
(8, '0', '2022-10-3', '1', 'MJ0001', 'jhsjash', 'INR-Indian Rupee', '1', 'Inventory Asset', 'dffgh', 'Vishnu D', '10', '0', 'Retained Earnings', 'kkjk', 'Vishnu D', '0', '10', '10.0', '10.0', NULL, '10.0', '0', 'on.png', 16),
(9, '1', '2022-10-3', '2', 'MJ0002', 'abjak', 'INR-Indian Rupee', '1', 'Cost of Sales', 'anzb', 'Silpa N S', '20', '0', 'Bank Charges', 'iausi', 'Silpa N S', '0', '20', '20.0', '20.0', NULL, '20.0', '0', 'on.png', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_materialerror`
--

CREATE TABLE `app1_materialerror` (
  `materialerrorid` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `availableqty` int(11) DEFAULT NULL,
  `inspectedqty` int(11) DEFAULT NULL,
  `compliantqty` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_materialerror`
--

INSERT INTO `app1_materialerror` (`materialerrorid`, `date`, `productname`, `sku`, `hsn`, `availableqty`, `inspectedqty`, `compliantqty`, `cid_id`) VALUES
(1, '2022-09-23', 'Inv_1', 'N41554', '1001', 10, 8, 3, 16),
(3, '2022-09-24', 'Inv_1', 'N41554', '1001', 10, 6, 4, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_noninventory`
--

CREATE TABLE `app1_noninventory` (
  `noninventoryid` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sku` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `income` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `purchasedescr` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expenseaccount` varchar(100) NOT NULL,
  `purchasetax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_noninventory`
--

INSERT INTO `app1_noninventory` (`noninventoryid`, `image`, `name`, `sku`, `hsn`, `unit`, `category`, `descr`, `saleprice`, `income`, `tax`, `purchasedescr`, `cost`, `expenseaccount`, `purchasetax`, `revcharge`, `presupplier`, `qty`, `cid_id`) VALUES
(4, '', 'Non_1', 'N41554', '1002', 'BAG Bags', 'Default', 'des1', '44.01', 'Services', '12.0% GST (12%)', 'des2', '50', 'Advertising/Promotional', '12.0% GST (12%)', '5', 'Select Supplier', '', 16),
(5, '', 'Non_inv_1', 'N41554', '11112222', 'CCM Cubic centimeters', 'Product', 'n_des_1', '78.01', 'Sales', '28.0% GST (28%)', '', '', '', '', '0', '', '', 18);

-- --------------------------------------------------------

--
-- Table structure for table `app1_paydowncreditcard`
--

CREATE TABLE `app1_paydowncreditcard` (
  `paycreditcardid` int(11) NOT NULL,
  `ccno` varchar(100) NOT NULL,
  `payee` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `dateofpayment` varchar(100) NOT NULL,
  `discription` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_payment`
--

CREATE TABLE `app1_payment` (
  `paymentid` int(11) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `findinvoice` varchar(100) DEFAULT NULL,
  `paymdate` varchar(100) NOT NULL,
  `pmethod` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `depto` varchar(100) NOT NULL,
  `amtreceived` varchar(100) NOT NULL,
  `descrip` varchar(100) NOT NULL,
  `duedate` varchar(10) NOT NULL,
  `orgamt` varchar(100) NOT NULL,
  `openbal` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `amtapply` varchar(100) NOT NULL,
  `amtcredit` varchar(100) NOT NULL,
  `descrip1` varchar(100) NOT NULL,
  `duedate1` varchar(10) NOT NULL,
  `orgamt1` varchar(100) NOT NULL,
  `openbal1` varchar(100) NOT NULL,
  `payment1` varchar(100) NOT NULL,
  `descrip2` varchar(100) NOT NULL,
  `duedate2` varchar(10) NOT NULL,
  `orgamt2` varchar(100) NOT NULL,
  `openbal2` varchar(100) NOT NULL,
  `payment2` varchar(100) NOT NULL,
  `descrip3` varchar(100) NOT NULL,
  `duedate3` varchar(10) NOT NULL,
  `orgamt3` varchar(100) NOT NULL,
  `openbal3` varchar(100) NOT NULL,
  `payment3` varchar(100) NOT NULL,
  `descrip4` varchar(100) NOT NULL,
  `duedate4` varchar(10) NOT NULL,
  `orgamt4` varchar(100) NOT NULL,
  `openbal4` varchar(100) NOT NULL,
  `payment4` varchar(100) NOT NULL,
  `descrip5` varchar(100) NOT NULL,
  `duedate5` varchar(10) NOT NULL,
  `orgamt5` varchar(100) NOT NULL,
  `openbal5` varchar(100) NOT NULL,
  `payment5` varchar(100) NOT NULL,
  `descrip6` varchar(100) NOT NULL,
  `duedate6` varchar(10) NOT NULL,
  `orgamt6` varchar(100) NOT NULL,
  `openbal6` varchar(100) NOT NULL,
  `payment6` varchar(100) NOT NULL,
  `descrip7` varchar(100) NOT NULL,
  `duedate7` varchar(10) NOT NULL,
  `orgamt7` varchar(100) NOT NULL,
  `openbal7` varchar(100) NOT NULL,
  `payment7` varchar(100) NOT NULL,
  `descrip8` varchar(100) NOT NULL,
  `duedate8` varchar(10) NOT NULL,
  `orgamt8` varchar(100) NOT NULL,
  `openbal8` varchar(100) NOT NULL,
  `payment8` varchar(100) NOT NULL,
  `descrip9` varchar(100) NOT NULL,
  `duedate9` varchar(10) NOT NULL,
  `orgamt9` varchar(100) NOT NULL,
  `openbal9` varchar(100) NOT NULL,
  `payment9` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_payment`
--

INSERT INTO `app1_payment` (`paymentid`, `customer`, `email`, `findinvoice`, `paymdate`, `pmethod`, `refno`, `depto`, `amtreceived`, `descrip`, `duedate`, `orgamt`, `openbal`, `payment`, `amtapply`, `amtcredit`, `descrip1`, `duedate1`, `orgamt1`, `openbal1`, `payment1`, `descrip2`, `duedate2`, `orgamt2`, `openbal2`, `payment2`, `descrip3`, `duedate3`, `orgamt3`, `openbal3`, `payment3`, `descrip4`, `duedate4`, `orgamt4`, `openbal4`, `payment4`, `descrip5`, `duedate5`, `orgamt5`, `openbal5`, `payment5`, `descrip6`, `duedate6`, `orgamt6`, `openbal6`, `payment6`, `descrip7`, `duedate7`, `orgamt7`, `openbal7`, `payment7`, `descrip8`, `duedate8`, `orgamt8`, `openbal8`, `payment8`, `descrip9`, `duedate9`, `orgamt9`, `openbal9`, `payment9`, `cid_id`) VALUES
(2, 'Sonia Johny', 'sonia@gmail.com', '0', '2022-10-12', 'Cash', '1002.0', 'Deferred CGST', '300', '0 2022-10-12', '2022-10-27', '328', '327.99', '300', '300.0', '300', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 18),
(3, 'Adi N S', '', '1000', '2022-10-16', 'Cash', '1003.0', 'Deferred CGST', '50', '1000 2022-10-16', '2022-10-31', '100', '99.99', '50', '50.0', '50', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 25),
(4, 'Adi N S', '', '1000', '2022-10-16', '', '1004.0', 'Deferred CGST', '20', '1000 2022-10-16', '2022-10-31', '100', '49.989999999999995', '20', '20.0', '20', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', '', '', 25);

-- --------------------------------------------------------

--
-- Table structure for table `app1_payslip`
--

CREATE TABLE `app1_payslip` (
  `payslipid` int(11) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `employeenumber` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `fper` varchar(100) NOT NULL,
  `tper` varchar(100) NOT NULL,
  `paydate` varchar(100) NOT NULL,
  `basic` varchar(100) NOT NULL,
  `da` varchar(100) NOT NULL,
  `ear1` varchar(100) NOT NULL,
  `earr1` varchar(100) NOT NULL,
  `ear2` varchar(100) NOT NULL,
  `earr2` varchar(100) NOT NULL,
  `ear3` varchar(100) NOT NULL,
  `earr3` varchar(100) NOT NULL,
  `ear4` varchar(100) NOT NULL,
  `earr4` varchar(100) NOT NULL,
  `ear5` varchar(100) NOT NULL,
  `earr5` varchar(100) NOT NULL,
  `ear6` varchar(100) NOT NULL,
  `earr6` varchar(100) NOT NULL,
  `ear7` varchar(100) NOT NULL,
  `earr7` varchar(100) NOT NULL,
  `provi` varchar(100) NOT NULL,
  `prof` varchar(100) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `ded1` varchar(100) NOT NULL,
  `dedu1` varchar(100) NOT NULL,
  `ded2` varchar(100) NOT NULL,
  `dedu2` varchar(100) NOT NULL,
  `ded3` varchar(100) NOT NULL,
  `dedu3` varchar(100) NOT NULL,
  `ded4` varchar(100) NOT NULL,
  `dedu4` varchar(100) NOT NULL,
  `ded5` varchar(100) NOT NULL,
  `dedu5` varchar(100) NOT NULL,
  `ded6` varchar(100) NOT NULL,
  `dedu6` varchar(100) NOT NULL,
  `gros` varchar(100) NOT NULL,
  `tded` varchar(100) NOT NULL,
  `netsal` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_payslip`
--

INSERT INTO `app1_payslip` (`payslipid`, `empname`, `employeenumber`, `desig`, `fper`, `tper`, `paydate`, `basic`, `da`, `ear1`, `earr1`, `ear2`, `earr2`, `ear3`, `earr3`, `ear4`, `earr4`, `ear5`, `earr5`, `ear6`, `earr6`, `ear7`, `earr7`, `provi`, `prof`, `esi`, `ded1`, `dedu1`, `ded2`, `dedu2`, `ded3`, `dedu3`, `ded4`, `dedu4`, `ded5`, `dedu5`, `ded6`, `dedu6`, `gros`, `tded`, `netsal`, `cid_id`) VALUES
(1, 'Chinju Paul', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16),
(2, 'Chinju Paul', '1', 'Developer', '10/5/22', '10/5/22', '10/5/22', '100', '20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '75', '5', '30', '', '', '', '', '', '', '', '', '', '', '', '', '295', '155', '140', 16),
(3, 'Anu', '1002', 'Developer', '10/12/22', '10/12/22', '10/12/22', '9350.0', '1000.0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1320.0', '0', '82.5', '', '', '', '', '', '', '', '', '', '', '', '', '10790', '1412', '9378', 18),
(4, 'Anu', '1002', 'Developer', '10/12/22', '10/12/22', '10/12/22', '9350.0', '1000.0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1320.0', '0', '82.5', '', '', '', '', '', '', '', '', '', '', '', '', '10600', '1402', '9198', 18);

-- --------------------------------------------------------

--
-- Table structure for table `app1_production`
--

CREATE TABLE `app1_production` (
  `id` bigint(20) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `hsn` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `manufacturing_date` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `pname1` varchar(255) NOT NULL,
  `sku1` varchar(255) NOT NULL,
  `quantity1` varchar(255) NOT NULL,
  `rate1` varchar(255) NOT NULL,
  `amount1` varchar(255) NOT NULL,
  `pname2` varchar(255) NOT NULL,
  `sku2` varchar(255) NOT NULL,
  `quantity2` varchar(255) NOT NULL,
  `rate2` varchar(255) NOT NULL,
  `amount2` varchar(255) NOT NULL,
  `pname3` varchar(255) NOT NULL,
  `sku3` varchar(255) NOT NULL,
  `quantity3` varchar(255) NOT NULL,
  `rate3` varchar(255) NOT NULL,
  `amount3` varchar(255) NOT NULL,
  `pname4` varchar(255) NOT NULL,
  `sku4` varchar(255) NOT NULL,
  `quantity4` varchar(255) NOT NULL,
  `rate4` varchar(255) NOT NULL,
  `amount4` varchar(255) NOT NULL,
  `pname5` varchar(255) NOT NULL,
  `sku5` varchar(255) NOT NULL,
  `quantity5` varchar(255) NOT NULL,
  `rate5` varchar(255) NOT NULL,
  `amount5` varchar(255) NOT NULL,
  `pname6` varchar(255) NOT NULL,
  `sku6` varchar(255) NOT NULL,
  `quantity6` varchar(255) NOT NULL,
  `rate6` varchar(255) NOT NULL,
  `amount6` varchar(255) NOT NULL,
  `pname7` varchar(255) NOT NULL,
  `sku7` varchar(255) NOT NULL,
  `quantity7` varchar(255) NOT NULL,
  `rate7` varchar(255) NOT NULL,
  `amount7` varchar(255) NOT NULL,
  `pname8` varchar(255) NOT NULL,
  `sku8` varchar(255) NOT NULL,
  `quantity8` varchar(255) NOT NULL,
  `rate8` varchar(255) NOT NULL,
  `amount8` varchar(255) NOT NULL,
  `pname9` varchar(255) NOT NULL,
  `sku9` varchar(255) NOT NULL,
  `quantity9` varchar(255) NOT NULL,
  `rate9` varchar(255) NOT NULL,
  `amount9` varchar(255) NOT NULL,
  `pname10` varchar(255) NOT NULL,
  `sku10` varchar(255) NOT NULL,
  `quantity10` varchar(255) NOT NULL,
  `rate10` varchar(255) NOT NULL,
  `amount10` varchar(255) NOT NULL,
  `pname11` text NOT NULL,
  `sku11` text NOT NULL,
  `quantity11` text NOT NULL,
  `rate11` text NOT NULL,
  `amount11` text NOT NULL,
  `pname12` text NOT NULL,
  `sku12` text NOT NULL,
  `quantity12` text NOT NULL,
  `rate12` text NOT NULL,
  `amount12` text NOT NULL,
  `pname13` text NOT NULL,
  `sku13` text NOT NULL,
  `quantity13` text NOT NULL,
  `rate13` text NOT NULL,
  `amount13` text NOT NULL,
  `pname14` text NOT NULL,
  `sku14` text NOT NULL,
  `quantity14` text NOT NULL,
  `rate14` text NOT NULL,
  `amount14` text NOT NULL,
  `pname15` text NOT NULL,
  `sku15` text NOT NULL,
  `quantity15` text NOT NULL,
  `rate15` text NOT NULL,
  `amount15` text NOT NULL,
  `co_pname1` text NOT NULL,
  `co_sku1` text NOT NULL,
  `co_qty1` text NOT NULL,
  `co_rate1` text NOT NULL,
  `co_amount1` text NOT NULL,
  `co_pname2` text NOT NULL,
  `co_sku2` text NOT NULL,
  `co_qty2` text NOT NULL,
  `co_rate2` text NOT NULL,
  `co_amount2` text NOT NULL,
  `co_pname3` text NOT NULL,
  `co_sku3` text NOT NULL,
  `co_qty3` text NOT NULL,
  `co_rate3` text NOT NULL,
  `co_amount3` text NOT NULL,
  `co_pname4` text NOT NULL,
  `co_sku4` text NOT NULL,
  `co_qty4` text NOT NULL,
  `co_rate4` text NOT NULL,
  `co_amount4` text NOT NULL,
  `co_pname5` text NOT NULL,
  `co_sku5` text NOT NULL,
  `co_qty5` text NOT NULL,
  `co_rate5` text NOT NULL,
  `co_amount5` text NOT NULL,
  `co_pname6` text NOT NULL,
  `co_sku6` text NOT NULL,
  `co_qty6` text NOT NULL,
  `co_rate6` text NOT NULL,
  `co_amount6` text NOT NULL,
  `co_pname7` text NOT NULL,
  `co_sku7` text NOT NULL,
  `co_qty7` text NOT NULL,
  `co_rate7` text NOT NULL,
  `co_amount7` text NOT NULL,
  `co_pname8` text NOT NULL,
  `co_sku8` text NOT NULL,
  `co_qty8` text NOT NULL,
  `co_rate8` text NOT NULL,
  `co_amount8` text NOT NULL,
  `co_pname9` text NOT NULL,
  `co_sku9` text NOT NULL,
  `co_qty9` text NOT NULL,
  `co_rate9` text NOT NULL,
  `co_amount9` text NOT NULL,
  `co_pname10` text NOT NULL,
  `co_sku10` text NOT NULL,
  `co_qty10` text NOT NULL,
  `co_rate10` text NOT NULL,
  `co_amount10` text NOT NULL,
  `co_pname11` text NOT NULL,
  `co_sku11` text NOT NULL,
  `co_qty11` text NOT NULL,
  `co_rate11` text NOT NULL,
  `co_amount11` text NOT NULL,
  `co_pname12` text NOT NULL,
  `co_sku12` text NOT NULL,
  `co_qty12` text NOT NULL,
  `co_rate12` text NOT NULL,
  `co_amount12` text NOT NULL,
  `co_pname13` text NOT NULL,
  `co_sku13` text NOT NULL,
  `co_qty13` text NOT NULL,
  `co_rate13` text NOT NULL,
  `co_amount13` text NOT NULL,
  `co_pname14` text NOT NULL,
  `co_sku14` text NOT NULL,
  `co_qty14` text NOT NULL,
  `co_rate14` text NOT NULL,
  `co_amount14` text NOT NULL,
  `co_pname15` text NOT NULL,
  `co_sku15` text NOT NULL,
  `co_qty15` text NOT NULL,
  `co_rate15` text NOT NULL,
  `co_amount15` text NOT NULL,
  `wg_adi_cost1` text NOT NULL,
  `wg_perc1` text NOT NULL,
  `wg_amount1` text NOT NULL,
  `wg_adi_cost2` text NOT NULL,
  `wg_perc2` text NOT NULL,
  `wg_amount2` text NOT NULL,
  `wg_adi_cost3` text NOT NULL,
  `wg_perc3` text NOT NULL,
  `wg_amount3` text NOT NULL,
  `wg_adi_cost4` text NOT NULL,
  `wg_perc4` text NOT NULL,
  `wg_amount4` text NOT NULL,
  `wg_adi_cost5` text NOT NULL,
  `wg_perc5` text NOT NULL,
  `wg_amount5` text NOT NULL,
  `tot_add_cost` text NOT NULL,
  `eff_cost` text NOT NULL,
  `tt_qty` varchar(255) NOT NULL,
  `tt_tot` varchar(255) NOT NULL,
  `co_tt_qty` varchar(255) NOT NULL,
  `co_tt_tot` varchar(255) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_production`
--

INSERT INTO `app1_production` (`id`, `productname`, `sku`, `hsn`, `quantity`, `price`, `manufacturing_date`, `expiry_date`, `pname1`, `sku1`, `quantity1`, `rate1`, `amount1`, `pname2`, `sku2`, `quantity2`, `rate2`, `amount2`, `pname3`, `sku3`, `quantity3`, `rate3`, `amount3`, `pname4`, `sku4`, `quantity4`, `rate4`, `amount4`, `pname5`, `sku5`, `quantity5`, `rate5`, `amount5`, `pname6`, `sku6`, `quantity6`, `rate6`, `amount6`, `pname7`, `sku7`, `quantity7`, `rate7`, `amount7`, `pname8`, `sku8`, `quantity8`, `rate8`, `amount8`, `pname9`, `sku9`, `quantity9`, `rate9`, `amount9`, `pname10`, `sku10`, `quantity10`, `rate10`, `amount10`, `pname11`, `sku11`, `quantity11`, `rate11`, `amount11`, `pname12`, `sku12`, `quantity12`, `rate12`, `amount12`, `pname13`, `sku13`, `quantity13`, `rate13`, `amount13`, `pname14`, `sku14`, `quantity14`, `rate14`, `amount14`, `pname15`, `sku15`, `quantity15`, `rate15`, `amount15`, `co_pname1`, `co_sku1`, `co_qty1`, `co_rate1`, `co_amount1`, `co_pname2`, `co_sku2`, `co_qty2`, `co_rate2`, `co_amount2`, `co_pname3`, `co_sku3`, `co_qty3`, `co_rate3`, `co_amount3`, `co_pname4`, `co_sku4`, `co_qty4`, `co_rate4`, `co_amount4`, `co_pname5`, `co_sku5`, `co_qty5`, `co_rate5`, `co_amount5`, `co_pname6`, `co_sku6`, `co_qty6`, `co_rate6`, `co_amount6`, `co_pname7`, `co_sku7`, `co_qty7`, `co_rate7`, `co_amount7`, `co_pname8`, `co_sku8`, `co_qty8`, `co_rate8`, `co_amount8`, `co_pname9`, `co_sku9`, `co_qty9`, `co_rate9`, `co_amount9`, `co_pname10`, `co_sku10`, `co_qty10`, `co_rate10`, `co_amount10`, `co_pname11`, `co_sku11`, `co_qty11`, `co_rate11`, `co_amount11`, `co_pname12`, `co_sku12`, `co_qty12`, `co_rate12`, `co_amount12`, `co_pname13`, `co_sku13`, `co_qty13`, `co_rate13`, `co_amount13`, `co_pname14`, `co_sku14`, `co_qty14`, `co_rate14`, `co_amount14`, `co_pname15`, `co_sku15`, `co_qty15`, `co_rate15`, `co_amount15`, `wg_adi_cost1`, `wg_perc1`, `wg_amount1`, `wg_adi_cost2`, `wg_perc2`, `wg_amount2`, `wg_adi_cost3`, `wg_perc3`, `wg_amount3`, `wg_adi_cost4`, `wg_perc4`, `wg_amount4`, `wg_adi_cost5`, `wg_perc5`, `wg_amount5`, `tot_add_cost`, `eff_cost`, `tt_qty`, `tt_tot`, `co_tt_qty`, `co_tt_tot`, `cid_id`) VALUES
(24, 'dfgfh', '125', '258', '2', '$3622.5', '2022-09-03', '2022-09-03', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'dfds', '1', '63.0', 'vc', '2', '126.0', 'cxv', '3', '189.0', 'cvx', '4', '252.0', 'cvxd', '5', '315.0', '$945.0', '$7245.0', '', '', '', '', 16),
(27, 'hp brand', '1254', '54455', '2', '$4158.0', '2022-09-03', '2022-09-03', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'wd', '2', '132.0', 'sda', '1', '66.0', 'zxc', '6', '396.0', 'zx', '8', '528.0', 'vcb', '9', '594.0', '$1716.0', '$8316.0', '', '', '', '', 16),
(28, 'ph', '455', '455', '5', '$1263.6', '2022-09-03', '2022-09-03', 'laptop', '154', '2', '$500.0', '1000.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '200.0', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'mi mobile', '1235', '1', '$200.0', '200.0', 'laptop', '154', '1', '$500.0', '500.0', 'fd', '2', '98.0', 'fdgf', '3', '147.0', 'zx', '4', '196.0', 'zx', '5', '245.0', 'z', '6', '294.0', '$1418.0', '$6318.0', '2', '$1000.0', '15', '$3900.0', 16),
(31, 'phs', '1245', '5858', '5', '$96.0', '2022-09-05', '2022-09-05', 'mi mobile', '1235', '1', '$200.0', '200.0', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', 'mi mobile', '1235', '1', '$200.0', '200.0', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', '', '', '1', '', '', 'dfs', '2', '8.0', 'dsf', '3', '12.0', 'dsf', '4', '16.0', 'dsf', '5', '20.0', 'ds', '6', '24.0', '$80.0', '$480.0', '1', '$200.0', '1', '$200.0', 16),
(32, 'bnhj', '1254', '6578', '5', '$181.6', '2022-09-05', '2022-09-05', 'mi mobile', '1235', '1', '$200.0', '200.0', 'vivo y11', '15478', '0', '$$1200', '', 'laptop', '154', '1', '$$500', '500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'mi mobile', '1235', '1', '$200.0', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'vcbvb', '2', '18.0', '', '', '0.0', '', '', '0.0', '', '', '0.0', '', '', '0.0', '$8.0', '$908.0', '2', '$700.0', '1', '$200.0', 16),
(34, 'dsfd', '12456', '555', '2', '$204.0', '2022-09-05', '2022-09-05', 'mi mobile', '1235', '1', '$200.0', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'mi mobile', '1235', '1', '$200.0', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'fdgfd', '2', '8.0', '', '', '', '', '', '', '', '', '', '', '', '', '$8.0', '$408.0', '1', '$200.0', '1', '$200.0', 16),
(35, 'sdf', '1457', '888', '5', '$81.6', '2022-09-05', '2022-09-05', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'sdfd', '2', '8.0', '', '', '', '', '', '', '', '', '', '', '', '', '$8.0', '$408.0', '1', '$200.0', '1', '$200.0', 16),
(38, 'sdfd', 'dsfd', 'dsfds', '2', '$206.0', '2022-09-05', '2022-09-05', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'ghfg', '3', '12.0', '', '', '', '', '', '', '', '', '', '', '', '', '$12.0', '$412.0', '1', '$200.0', '1', '$200.0', 16),
(39, 'Asus', '121619', '2587', '2', '$212.0', '2022-09-06', '2022-09-06', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'wgty', '6', '24.0', '', '', '', '', '', '', '', '', '', '', '', '', '$24.0', '$424.0', '1', '$200.0', '1', '$200.0', 16),
(40, 'zeb', '12456', '2', '2', '$559.0', '2022-09-01', '2022-09-06', 'mi mobile', '1235', '1', '$200', '200.0', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'laptop', '154', '1', '$500', '500.0', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'wg', '2', '22.0', '', '', '0.0', '', '', '0.0', '', '', '0.0', '', '', '0.0', '$18.0', '$1118.0', '2', '$400.0', '2', '$700.0', 16),
(41, 'rens', 'as2154', 'N42015', '3', '$247.33333333333334', '2022-09-23', '2022-09-23', 'mi mobile', '1235', '1', '$200', '200.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'laptop', '154', '1', '$500', '500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'wages', '6', '42.0', '', '', '', '', '', '', '', '', '', '', '', '', '$42.0', '$742.0', '1', '$200.0', '1', '$500.0', 16),
(42, 'Pen', '', '', '10', '$10500.0', '2022-10-7', '2022-10-7', 'hp brand', '1254', '10', '$10000', '100000.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'hp brand', '1254', '0', '$10000', '0.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '100', '5', '5000.0', '', '', '', '', '', '', '', '', '', '', '', '', '$5000.0', '$105000.0', '10', '$100000.0', '0', '$0.0', 16),
(43, 'REdmi Not 11', 'H12012', 'H23432', '10', '$2173.0', '2022-11-14', '2022-11-30', 'Pen', '', '1', '$10500.0', '10500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'hp brand', '1254', '1', '$10000', '10000.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Wages', '6', '1230.0', '', '', '', '', '', '', '', '', '', '', '', '', '$1230.0', '$21730.0', '1', '$10500.0', '1', '$10000.0', 16),
(44, 'Touch Pad', 'Hs2000', 'HS14524', '10', '$2091.0', '2022-11-14', '2022-11-29', 'hp brand', '1254', '1', '$10000', '10000.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Pen', '', '1', '$10500.0', '10500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'wage', '2', '410.0', '', '', '', '', '', '', '', '', '', '', '', '', '$410.0', '$20910.0', '1', '$10000.0', '1', '$10500.0', 16),
(45, 'Mobile Cover', 'HY1200', '2500', '10', '$2091.0', '2022-11-14', '2022-11-14', 'hp brand', '1254', '1', '$10000', '10000.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Pen', '', '1', '$10500.0', '10500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Wages', '2', '410.0', '', '', '', '', '', '', '', '', '', '', '', '', '$410.0', '$20910.0', '1', '$10000.0', '1', '$10500.0', 16),
(46, 'Vivo', 'HS200', '2000', '10', '$1334.646', '2022-11-14', '2022-11-30', 'Touch Pad', 'Hs2000', '1', '$2091.0', '2091.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Pen', '', '1', '$10500.0', '10500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Wages', '6', '755.46', '', '', '', '', '', '', '', '', '', '', '', '', '$755.46', '$13346.46', '1', '$2091.0', '1', '$10500.0', 16),
(47, 'java', 'sdas', 'asdsad', '10', '$2173.0', '2022-11-14', '2022-11-14', 'Pen', '', '1', '$10500.0', '10500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'hp brand', '1254', '1', '$10000', '10000.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'sadsad', '6', '1230.0', '', '', '', '', '', '', '', '', '', '', '', '', '$1230.0', '$21730.0', '1', '$10500.0', '1', '$10000.0', 16),
(48, 'Mouse pas', 'asdsa', 'asdsad', '20', '$1066.0', '2022-11-15', '2022-11-18', 'Pen', '', '1', '$10500.0', '10500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'hp brand', '1254', '1', '$10000', '10000.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'sdasd', '4', '820.0', '', '', '', '', '', '', '', '', '', '', '', '', '$820.0', '$21320.0', '1', '$10500.0', '1', '$10000.0', 16),
(49, 'Lcd Tv', 'HSN2000', '12456', '10', '$3444.3391840000004', '2022-11-16', '2022-11-25', 'Pen', '', '1', '$10500.0', '10500.0', 'REdmi Not 11', 'H12012', '1', '$2173.0', '2173.0', 'REdmi Not 11', 'H12012', '1', '$2173.0', '2173.0', 'Pen', '', '1', '$10500.0', '10500.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Vivo', 'HS200', '1', '$1334.646', '1334.646', 'java', 'sdas', '1', '$2173.0', '2173.0', 'Mobile Cover', '2092.0', '1', '$2092.0', '2092.0', 'java', 'sdas', '1', '$2173.0', '2173.0', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Wg', '8', '2649.49168', 'sdfd', '2', '662.37292', 'saAa', '2', '662.37292', '', '', '0.0', '', '', '0.0', '$1324.74584', '$34443.391840000004', '4', '$25346.0', '4', '$7772.646', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_projectmanagement`
--

CREATE TABLE `app1_projectmanagement` (
  `projectid` int(11) NOT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `startdate` varchar(255) DEFAULT NULL,
  `enddate` varchar(255) DEFAULT NULL,
  `estimatecost_item` int(11) DEFAULT NULL,
  `estimateprice_item` int(11) DEFAULT NULL,
  `totalestimatecost` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_projectmanagement`
--

INSERT INTO `app1_projectmanagement` (`projectid`, `productname`, `quantity`, `description`, `startdate`, `enddate`, `estimatecost_item`, `estimateprice_item`, `totalestimatecost`, `cid_id`) VALUES
(1, 'Inv_1', 10, 'des', '9/23/22', '9/24/22', 50, 25, 500, 16),
(4, 'Pen', 100, 'Ball Pen', '9/24/22', '9/24/22', 10, 15, 1000, 16),
(5, 'Car', 100, '', '9/24/22', '9/24/22', 100, 200, 10000, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_qualitycertificate`
--

CREATE TABLE `app1_qualitycertificate` (
  `certificateid` int(11) NOT NULL,
  `dateofinspection` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `customername` varchar(255) DEFAULT NULL,
  `suppliername` varchar(255) DEFAULT NULL,
  `inspectedby` varchar(255) DEFAULT NULL,
  `inspectedqty` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_qualitycertificate`
--

INSERT INTO `app1_qualitycertificate` (`certificateid`, `dateofinspection`, `productname`, `sku`, `hsn`, `customername`, `suppliername`, `inspectedby`, `inspectedqty`, `cid_id`) VALUES
(4, '2022-09-25', 'Inv_1', 'N41554', '1001', 'Vishnu D', 'Neena C', 'Chinju Paul', 5, 16),
(5, '2022-09-30', 'Inv_1', 'N41554', '1001', 'Vishnu D', 'Sneha S', 'Chinju Paul', 5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_qualityinspection`
--

CREATE TABLE `app1_qualityinspection` (
  `inspectionid` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `availableqty` int(11) DEFAULT NULL,
  `inspectedqty` int(11) DEFAULT NULL,
  `noninspectedqty` int(11) DEFAULT NULL,
  `inspectedby` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `qualifiedqty` int(11) DEFAULT NULL,
  `defectedqty` int(11) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_qualityinspection`
--

INSERT INTO `app1_qualityinspection` (`inspectionid`, `date`, `productname`, `sku`, `hsn`, `availableqty`, `inspectedqty`, `noninspectedqty`, `inspectedby`, `department`, `qualifiedqty`, `defectedqty`, `cid_id`) VALUES
(1, '2022-09-23', 'Inv_1', 'N41554', '1001', 10, 5, 5, 'Chinju Paul', 'IT Department', 3, 2, 16),
(3, '2022-09-24', 'Inv_1', 'N41554', '1001', 10, 7, 3, 'Chinju Paul', 'IT Department', 5, 1, 16),
(4, '2022-09-26', 'Inv_1', 'N41554', '1001', 10, 8, 2, 'Chinju Paul', 'IT Department', 8, 0, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_recon1`
--

CREATE TABLE `app1_recon1` (
  `recon1id` int(11) NOT NULL,
  `accounttype` varchar(100) NOT NULL,
  `beginningbalance` varchar(100) NOT NULL,
  `endingbalance` varchar(100) NOT NULL,
  `endingdate` varchar(100) NOT NULL,
  `edat` varchar(100) DEFAULT NULL,
  `serchar` varchar(100) NOT NULL,
  `expacc` varchar(100) NOT NULL,
  `idat1` varchar(100) DEFAULT NULL,
  `intear` varchar(100) NOT NULL,
  `incacc` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_recon1`
--

INSERT INTO `app1_recon1` (`recon1id`, `accounttype`, `beginningbalance`, `endingbalance`, `endingdate`, `edat`, `serchar`, `expacc`, `idat1`, `intear`, `incacc`, `cid_id`) VALUES
(1, 'Savings', '100', '250', '10/12/22', '10/12/22', '25', 'Insurance Expense', '10/12/22', '5', 'Bank charges', 18);

-- --------------------------------------------------------

--
-- Table structure for table `app1_recordpay`
--

CREATE TABLE `app1_recordpay` (
  `recordpayid` int(11) NOT NULL,
  `textname` varchar(100) NOT NULL,
  `paymentdate` varchar(100) NOT NULL,
  `recordamount` varchar(100) NOT NULL,
  `recordmemo` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_salesrecpts`
--

CREATE TABLE `app1_salesrecpts` (
  `salesrecptsid` int(11) NOT NULL,
  `salename` varchar(100) NOT NULL,
  `saleemail` varchar(254) NOT NULL,
  `saleaddress` varchar(150) NOT NULL,
  `saledate` varchar(10) NOT NULL,
  `saleno` varchar(20) NOT NULL,
  `salesplace` varchar(100) NOT NULL,
  `salepay` varchar(10) NOT NULL,
  `salerefno` varchar(10) NOT NULL,
  `saledeposit` varchar(150) NOT NULL,
  `salepro` varchar(100) NOT NULL,
  `salehsn` varchar(100) NOT NULL,
  `saledescription` varchar(100) NOT NULL,
  `saleqty` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `saaletotal` varchar(100) NOT NULL,
  `salesubtotal` varchar(100) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `saletaxamount` varchar(100) NOT NULL,
  `salegrandtotal` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `categoryhsn2` varchar(100) NOT NULL,
  `descrptin2` varchar(100) NOT NULL,
  `catqty2` varchar(100) NOT NULL,
  `catprice2` varchar(100) NOT NULL,
  `cattotal2` varchar(100) NOT NULL,
  `tax1` int(11) DEFAULT NULL,
  `category3` varchar(100) NOT NULL,
  `categoryhsn3` varchar(100) NOT NULL,
  `descrptin3` varchar(100) NOT NULL,
  `catqty3` varchar(100) NOT NULL,
  `catprice3` varchar(100) NOT NULL,
  `cattotal3` varchar(100) NOT NULL,
  `tax2` int(11) DEFAULT NULL,
  `category4` varchar(100) NOT NULL,
  `categoryhsn4` varchar(100) NOT NULL,
  `descrptin4` varchar(100) NOT NULL,
  `catqty4` varchar(100) NOT NULL,
  `catprice4` varchar(100) NOT NULL,
  `cattotal4` varchar(100) NOT NULL,
  `tax3` int(11) DEFAULT NULL,
  `offline` varchar(100) DEFAULT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_salesrecpts`
--

INSERT INTO `app1_salesrecpts` (`salesrecptsid`, `salename`, `saleemail`, `saleaddress`, `saledate`, `saleno`, `salesplace`, `salepay`, `salerefno`, `saledeposit`, `salepro`, `salehsn`, `saledescription`, `saleqty`, `saleprice`, `saaletotal`, `salesubtotal`, `tax`, `saletaxamount`, `salegrandtotal`, `category2`, `categoryhsn2`, `descrptin2`, `catqty2`, `catprice2`, `cattotal2`, `tax1`, `category3`, `categoryhsn3`, `descrptin3`, `catqty3`, `catprice3`, `cattotal3`, `tax2`, `category4`, `categoryhsn4`, `descrptin4`, `catqty4`, `catprice4`, `cattotal4`, `tax3`, `offline`, `cid_id`) VALUES
(1, 'Jineesh N N', 'dgdg@gmail.com', 'gfdg', '2022-11-12', '1001', 'Andaman and Nicobar Islads', 'Cash', '33 - Jinee', 'Deferred CGST', 'Non_1', '1002', 'des1', '2', '44.64', '88.02', '478.81999999999994', 28, '134.0696', '612.8896', 'Inv_2', '01234567', 'Inv_des', '1', '78.12', '78', 28, 'Inv_1', '1001', 'des', '22', '78.12', '156.4', 28, 'Inv_1', '1001', 'des', '2', '78.12', '156.4', 28, NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_service`
--

CREATE TABLE `app1_service` (
  `serviceid` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `sac` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `categ` varchar(100) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `saleprice` varchar(100) NOT NULL,
  `income` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `abatement` varchar(100) NOT NULL,
  `sertype` varchar(100) NOT NULL,
  `purchasedescr` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `expenseaccount` varchar(100) NOT NULL,
  `purchasetax` varchar(100) NOT NULL,
  `revcharge` varchar(100) NOT NULL,
  `presupplier` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_service`
--

INSERT INTO `app1_service` (`serviceid`, `img`, `name`, `sku`, `sac`, `unit`, `categ`, `descr`, `saleprice`, `income`, `tax`, `abatement`, `sertype`, `purchasedescr`, `cost`, `expenseaccount`, `purchasetax`, `revcharge`, `presupplier`, `cid_id`) VALUES
(9, '', 'Ser_1', 'N41554', '889941', 'BAL-BALE', 'Default', 'des', '84.7457627118644', 'Equipment Rental for Jobs', '18.0% GST (18%)', '5', 'Steamer Agent', 'des2', '84.7457627118644', 'Dues and Subscriptions', '18.0% GST (18%)', '5', 'Select Supplier', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_sign`
--

CREATE TABLE `app1_sign` (
  `sid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `conformpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_suplrcredit`
--

CREATE TABLE `app1_suplrcredit` (
  `suppliercreditid` int(11) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `mailaddr` varchar(100) NOT NULL,
  `paymdate` varchar(100) NOT NULL,
  `refno` varchar(100) NOT NULL,
  `ccatego` varchar(100) NOT NULL,
  `cdescrip` varchar(100) NOT NULL,
  `cqty` varchar(100) NOT NULL,
  `cprice` varchar(100) NOT NULL,
  `ctotal` varchar(100) NOT NULL,
  `ccatego2` varchar(100) NOT NULL,
  `cdescrip2` varchar(100) NOT NULL,
  `cqty2` varchar(100) NOT NULL,
  `cprice2` varchar(100) NOT NULL,
  `ctotal2` varchar(100) NOT NULL,
  `ccatego3` varchar(100) NOT NULL,
  `cdescrip3` varchar(100) NOT NULL,
  `cqty3` varchar(100) NOT NULL,
  `cprice3` varchar(100) NOT NULL,
  `ctotal3` varchar(100) NOT NULL,
  `ccatego4` varchar(100) NOT NULL,
  `cdescrip4` varchar(100) NOT NULL,
  `cqty4` varchar(100) NOT NULL,
  `cprice4` varchar(100) NOT NULL,
  `ctotal4` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `hsn` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `product2` varchar(100) NOT NULL,
  `hsn2` varchar(100) NOT NULL,
  `description2` varchar(100) NOT NULL,
  `qty2` varchar(100) NOT NULL,
  `price2` varchar(100) NOT NULL,
  `total2` varchar(100) NOT NULL,
  `product3` varchar(100) NOT NULL,
  `hsn3` varchar(100) NOT NULL,
  `description3` varchar(100) NOT NULL,
  `qty3` varchar(100) NOT NULL,
  `price3` varchar(100) NOT NULL,
  `total3` varchar(100) NOT NULL,
  `product4` varchar(100) NOT NULL,
  `hsn4` varchar(100) NOT NULL,
  `description4` varchar(100) NOT NULL,
  `qty4` varchar(100) NOT NULL,
  `price4` varchar(100) NOT NULL,
  `total4` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `tax2` varchar(100) NOT NULL,
  `tax3` varchar(100) NOT NULL,
  `tax4` varchar(100) NOT NULL,
  `taxamount` varchar(100) NOT NULL,
  `grandtotal` varchar(100) NOT NULL,
  `creditamount` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_suplrcredit`
--

INSERT INTO `app1_suplrcredit` (`suppliercreditid`, `supplier`, `mailaddr`, `paymdate`, `refno`, `ccatego`, `cdescrip`, `cqty`, `cprice`, `ctotal`, `ccatego2`, `cdescrip2`, `cqty2`, `cprice2`, `ctotal2`, `ccatego3`, `cdescrip3`, `cqty3`, `cprice3`, `ctotal3`, `ccatego4`, `cdescrip4`, `cqty4`, `cprice4`, `ctotal4`, `product`, `hsn`, `description`, `qty`, `price`, `total`, `product2`, `hsn2`, `description2`, `qty2`, `price2`, `total2`, `product3`, `hsn3`, `description3`, `qty3`, `price3`, `total3`, `product4`, `hsn4`, `description4`, `qty4`, `price4`, `total4`, `subtotal`, `tax`, `tax2`, `tax3`, `tax4`, `taxamount`, `grandtotal`, `creditamount`, `cid_id`) VALUES
(11, 'Sneha S', 'SnehaS\n\n\n\n\n\n\n\n\n', '2022-11-15', '', 'Inventory Asset', 'des', '1', '300', '300', 'Retained Earnings', 'des', '1', '600', '600', 'Output CGST', 'des', '1', '25', '25', 'Sales', 'des', '1', '75', '75', 'Inv_1', '1001', 'des\n\n\n\n\n\n\n\n\n', '4', '78.12', '312.48', 'Non_1', '1002', 'des1\n\n\n\n\n\n\n\n\n', '4', '44.64', '178.56', 'Inv_2', '01234567', 'Inv_des\n\n\n\n\n\n\n', '10', '78.2', '782.0', '', '', '\n\n\n\n\n\n\n\n\n', '0', '0', '', '2273.04', '28.0% GST(28%)', '28.0% GST(28%)', '28.0% GST(28%)', 'Choose', '137.51', '2410.55', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_supplier`
--

CREATE TABLE `app1_supplier` (
  `supplierid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `billingrate` varchar(100) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `addterms` varchar(100) NOT NULL,
  `openingbalance` varchar(100) NOT NULL,
  `accountno` varchar(100) NOT NULL,
  `gsttype` varchar(100) NOT NULL,
  `gstin` varchar(100) NOT NULL,
  `taxregistrationno` varchar(100) NOT NULL,
  `effectivedate` varchar(100) NOT NULL,
  `defaultexpenceaccount` varchar(100) NOT NULL,
  `tds` varchar(200) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_supplier`
--

INSERT INTO `app1_supplier` (`supplierid`, `title`, `firstname`, `lastname`, `company`, `mobile`, `email`, `website`, `billingrate`, `terms`, `addterms`, `openingbalance`, `accountno`, `gsttype`, `gstin`, `taxregistrationno`, `effectivedate`, `defaultexpenceaccount`, `tds`, `street`, `city`, `state`, `pincode`, `country`, `notes`, `cid_id`) VALUES
(1, 'Mr', 'Sam', 'Alex', '', '', '', '', '', '', '', '200', '', '', '', '', '2022-08-25', '', '', '', '', '', '', '', '', 16),
(2, 'Miss', 'Neena', 'C', '', '', '', '', '', '', '', '400', '', '', '', '', '2022-09-01', '', '', '', '', '', '', '', '', 16),
(3, 'Miss', 'Sneha', 'S', '', '', '', '', '', '', '', '150', '', '', '', '', '2022-09-02', '', '', '', '', '', '', '', '', 16),
(4, 'Mr', 'Chinju', 'Paul', 'ALTOS', '9999888855', 'chinju@gmail.com', '', '', ' ADD NEW TERMS', '', '', '', 'Choose...', '', '', '10/12/22', 'Choose Account', 'Choose', '\n', '', '', '', 'Afghanistan', '\n', 18),
(5, 'Mr', 'Saiju', 'S', 'hasu', '', 'saiju@gmail.com', '', '', ' ADD NEW TERMS', '', '', '', 'Choose...', '', '', '10/12/22', 'Choose Account', 'Choose', '\n', '', '', '', 'Afghanistan', '\n', 18),
(6, 'Mr', 'Abhans', 'Ram', 'Smrt', '7854213265', 'aba@gmail.com', '', '200', 'NET15', '', '2000', '12121', 'GST registered- Regular', '2000', '1214557635475', '11/15/22', 'Dues and Subscriptions', 'Yes', 'sddssd\n', 'sdfsd', 'dff', 'sdfsdfs', 'Albania', 'sdfsdf\n', 16),
(7, 'Mr', 'Abbas', 'asd', 'sads', '1245878965', 'sadsads@gmail.com', '', '2', ' ADD NEW TERMS', '2000', '1200', '124556465454', 'GST registered- Regular', '45654', '45654654645665654', '11/15/22', 'Advertising /Promotional', 'Yes', 'ghfhgfhgh\n', 'gfhgf', 'fghfgghhg', '682312', 'Afghanistan', 'dsfsdffdd\n', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_suppliererror`
--

CREATE TABLE `app1_suppliererror` (
  `suppliererrorid` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `referenceno` varchar(255) DEFAULT NULL,
  `suppliername` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `desciption` varchar(300) DEFAULT NULL,
  `purchaseqty` int(11) DEFAULT NULL,
  `compliantqty` int(11) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_suppliererror`
--

INSERT INTO `app1_suppliererror` (`suppliererrorid`, `date`, `referenceno`, `suppliername`, `productname`, `sku`, `hsn`, `desciption`, `purchaseqty`, `compliantqty`, `cid_id`) VALUES
(3, '2022-09-26', '1002', 'Sneha S', 'Inv_1', 'N41554', '1001', 'des', 100, 25, 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_timeact`
--

CREATE TABLE `app1_timeact` (
  `timeactid` int(11) NOT NULL,
  `timdate` varchar(10) NOT NULL,
  `timename` varchar(20) NOT NULL,
  `timecust` varchar(20) NOT NULL,
  `timecheck` varchar(10) NOT NULL,
  `timebill` varchar(20) NOT NULL,
  `timecheckk` varchar(10) NOT NULL,
  `timestart` varchar(6) NOT NULL,
  `timeend` varchar(6) NOT NULL,
  `tyme` varchar(6) NOT NULL,
  `timedes` varchar(50) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app1_timeactsale`
--

CREATE TABLE `app1_timeactsale` (
  `timeactsaleid` int(11) NOT NULL,
  `timdatesale` varchar(10) NOT NULL,
  `timenamesale` varchar(20) NOT NULL,
  `timecustsale` varchar(20) NOT NULL,
  `timechecksale` varchar(10) NOT NULL,
  `timebillsale` varchar(20) NOT NULL,
  `timecheckksale` varchar(10) NOT NULL,
  `timestartsale` varchar(6) NOT NULL,
  `timeendsale` varchar(6) NOT NULL,
  `tymesale` varchar(6) NOT NULL,
  `timedessale` varchar(50) NOT NULL,
  `cid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_timeactsale`
--

INSERT INTO `app1_timeactsale` (`timeactsaleid`, `timdatesale`, `timenamesale`, `timecustsale`, `timechecksale`, `timebillsale`, `timecheckksale`, `timestartsale`, `timeendsale`, `tymesale`, `timedessale`, `cid_id`) VALUES
(1, '2022-11-10', 'Sam Alex', 'Sagma N G', 'Yes', '200', 'Yes', '02:02', '02:02', '02:01', 'hvjhvjh', 16);

-- --------------------------------------------------------

--
-- Table structure for table `app1_unit`
--

CREATE TABLE `app1_unit` (
  `unitid` int(11) NOT NULL,
  `unitsymbol` varchar(255) DEFAULT NULL,
  `unitname` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app1_unit`
--

INSERT INTO `app1_unit` (`unitid`, `unitsymbol`, `unitname`, `cid_id`) VALUES
(1, 'f', 'Frequency', 16),
(2, 'V', 'Volume', 16),
(3, 'V', 'Volume', 16);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(44, 'Gavas@123', NULL, 0, 'gavas', 'Gavas', 'N G', 'gavas@gmail.com', 0, 0, '2022-08-25 12:47:51.457067'),
(45, 'Gopi@555', NULL, 0, 'gopi', 'Gopi', 'N N', 'gopi@gmail.com', 0, 0, '2022-09-14 00:00:00.000000'),
(46, 'Nikitha@123', NULL, 0, 'nikitha', 'Nikitha', 'Belvin', 'nikitha@gmail.com', 0, 0, '2022-10-12 00:00:00.000000'),
(47, 'Sagma@123', NULL, 0, 'sagma', 'Sagma', 'N G', 'sagma@gmail.com', 0, 0, '2022-10-12 00:00:00.000000'),
(48, 'Linu@123', NULL, 0, 'linu', 'Linu', 'Prince', 'linu@gmail.com', 0, 0, '2022-10-13 00:00:00.000000'),
(49, 'Sara@123', NULL, 0, 'sara', 'Sara', 'Sam', 'sara@gmail.com', 0, 0, '2022-10-16 00:00:00.000000'),
(50, 'Sam@1234', NULL, 0, 'sam', 'Sam', 'S', 'sams@gmail.com', 0, 0, '2022-10-16 00:00:00.000000'),
(51, 'Adri@123', NULL, 0, 'adri', 'Adri', 'D', 'adri@gmail.com', 0, 0, '2022-10-16 00:00:00.000000'),
(52, 'Amei@123', NULL, 0, 'amei', 'Amei', 'D', 'amei@gmail.com', 0, 0, '2022-10-16 00:00:00.000000'),
(53, 'Sruthy@123', NULL, 0, 'sruthy', 'Sruthy', 'N', 'sruthy@gmail.com', 0, 0, '2022-10-16 00:00:00.000000'),
(54, 'Roshu@123', NULL, 0, 'roshu', 'Roshni', 'T', 'roshu@gmail.com', 0, 0, '2022-10-17 00:00:00.000000'),
(55, 'Anju@123', NULL, 0, 'anju', 'Anju', 'S', 'anju@gmail.com', 0, 0, '2022-10-17 00:00:00.000000'),
(56, 'Anjana@123', NULL, 0, 'anjana', 'Anjana', 'P S', 'anjana@gmail.com', 0, 0, '2022-10-17 00:00:00.000000'),
(57, 'Rose@123', NULL, 0, 'rose', 'Rose', 'F R', 'rose@gmail.com', 0, 0, '2022-10-17 00:00:00.000000'),
(58, 'Athu@123', NULL, 0, 'athu', 'Athira', 'E P', 'athu@gmail.com', 0, 0, '2022-10-20 00:00:00.000000'),
(59, 'Anu@1234', NULL, 0, 'anu', 'Anumol', 'Eliyas', 'anu@gmail.com', 0, 0, '2022-11-16 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(43, 'app1', 'accounts'),
(42, 'app1', 'accounts1'),
(7, 'app1', 'accountype'),
(8, 'app1', 'addac'),
(41, 'app1', 'addtax1'),
(40, 'app1', 'advancepayment'),
(39, 'app1', 'bankstatement'),
(38, 'app1', 'bills'),
(37, 'app1', 'bundle'),
(36, 'app1', 'cheqs'),
(9, 'app1', 'company'),
(35, 'app1', 'credit'),
(34, 'app1', 'customer'),
(33, 'app1', 'customize'),
(32, 'app1', 'delayedcharge'),
(31, 'app1', 'employee'),
(30, 'app1', 'estimate'),
(29, 'app1', 'expences'),
(10, 'app1', 'expenseaccount'),
(28, 'app1', 'incomeaccount'),
(27, 'app1', 'inventory'),
(26, 'app1', 'invoice'),
(11, 'app1', 'itemmodel'),
(25, 'app1', 'noninventory'),
(24, 'app1', 'paydowncreditcard'),
(23, 'app1', 'payment'),
(22, 'app1', 'payslip'),
(44, 'app1', 'production'),
(12, 'app1', 'productmodel'),
(21, 'app1', 'recon1'),
(20, 'app1', 'recordpay'),
(19, 'app1', 'salesrecpts'),
(18, 'app1', 'service'),
(13, 'app1', 'sign'),
(17, 'app1', 'suplrcredit'),
(16, 'app1', 'supplier'),
(15, 'app1', 'timeact'),
(14, 'app1', 'timeactsale'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-02 07:53:08.750165'),
(2, 'auth', '0001_initial', '2022-08-02 07:53:22.456555'),
(3, 'admin', '0001_initial', '2022-08-02 07:53:25.243189'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-02 07:53:25.340940'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-02 07:53:25.400907'),
(6, 'app1', '0001_initial', '2022-08-02 07:54:15.722084'),
(7, 'app1', '0002_production', '2022-08-02 07:54:16.271469'),
(8, 'contenttypes', '0002_remove_content_type_name', '2022-08-02 07:54:17.416420'),
(9, 'auth', '0002_alter_permission_name_max_length', '2022-08-02 07:54:18.643758'),
(10, 'auth', '0003_alter_user_email_max_length', '2022-08-02 07:54:18.790300'),
(11, 'auth', '0004_alter_user_username_opts', '2022-08-02 07:54:18.863182'),
(12, 'auth', '0005_alter_user_last_login_null', '2022-08-02 07:54:20.112349'),
(13, 'auth', '0006_require_contenttypes_0002', '2022-08-02 07:54:20.186782'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2022-08-02 07:54:20.254743'),
(15, 'auth', '0008_alter_user_username_max_length', '2022-08-02 07:54:20.440635'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2022-08-02 07:54:20.550572'),
(17, 'auth', '0010_alter_group_name_max_length', '2022-08-02 07:54:20.803123'),
(18, 'auth', '0011_update_proxy_permissions', '2022-08-02 07:54:20.976790'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2022-08-02 07:54:21.111978'),
(20, 'sessions', '0001_initial', '2022-08-02 07:54:21.506066');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itemstable`
--

CREATE TABLE `itemstable` (
  `Itemid` int(11) NOT NULL,
  `Itemname` varchar(100) NOT NULL,
  `Pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payee` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `paymdate` date DEFAULT NULL,
  `payment_account` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `ccatego` varchar(255) DEFAULT NULL,
  `cdescrip` varchar(255) DEFAULT NULL,
  `cqty` varchar(255) DEFAULT NULL,
  `cprice` varchar(255) DEFAULT NULL,
  `ctotal` varchar(255) DEFAULT NULL,
  `ccatego2` varchar(255) DEFAULT NULL,
  `cdescrip2` varchar(255) DEFAULT NULL,
  `cqty2` varchar(255) DEFAULT NULL,
  `cprice2` varchar(255) DEFAULT NULL,
  `ctotal2` varchar(255) DEFAULT NULL,
  `ccatego3` varchar(255) DEFAULT NULL,
  `cdescrip3` varchar(255) DEFAULT NULL,
  `cqty3` varchar(255) DEFAULT NULL,
  `cprice3` varchar(255) DEFAULT NULL,
  `ctotal3` varchar(255) DEFAULT NULL,
  `ccatego4` varchar(255) DEFAULT NULL,
  `cdescrip4` varchar(255) DEFAULT NULL,
  `cqty4` varchar(255) DEFAULT NULL,
  `cprice4` varchar(255) DEFAULT NULL,
  `ctotal4` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `hsn` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `product2` varchar(255) DEFAULT NULL,
  `hsn2` varchar(255) DEFAULT NULL,
  `description2` varchar(255) DEFAULT NULL,
  `qty2` varchar(255) DEFAULT NULL,
  `price2` varchar(255) DEFAULT NULL,
  `total2` varchar(255) DEFAULT NULL,
  `product3` varchar(255) DEFAULT NULL,
  `hsn3` varchar(255) DEFAULT NULL,
  `description3` varchar(255) DEFAULT NULL,
  `qty3` varchar(255) DEFAULT NULL,
  `price3` varchar(255) DEFAULT NULL,
  `total3` varchar(255) DEFAULT NULL,
  `product4` varchar(255) DEFAULT NULL,
  `hsn4` varchar(255) DEFAULT NULL,
  `description4` varchar(255) DEFAULT NULL,
  `qty4` varchar(255) DEFAULT NULL,
  `price4` varchar(255) DEFAULT NULL,
  `total4` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax2` varchar(255) DEFAULT NULL,
  `tax3` varchar(255) DEFAULT NULL,
  `tax4` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `taxamount` varchar(255) DEFAULT NULL,
  `grandtotal` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payee`, `ref`, `paymdate`, `payment_account`, `payment_method`, `ccatego`, `cdescrip`, `cqty`, `cprice`, `ctotal`, `ccatego2`, `cdescrip2`, `cqty2`, `cprice2`, `ctotal2`, `ccatego3`, `cdescrip3`, `cqty3`, `cprice3`, `ctotal3`, `ccatego4`, `cdescrip4`, `cqty4`, `cprice4`, `ctotal4`, `product`, `hsn`, `description`, `qty`, `price`, `total`, `product2`, `hsn2`, `description2`, `qty2`, `price2`, `total2`, `product3`, `hsn3`, `description3`, `qty3`, `price3`, `total3`, `product4`, `hsn4`, `description4`, `qty4`, `price4`, `total4`, `tax`, `tax2`, `tax3`, `tax4`, `subtotal`, `taxamount`, `grandtotal`, `cid_id`) VALUES
(1, 'zxcxz xzcxzcz', '6', '2022-09-21', '', 'Debit cards', 'Consulting Income', 'asdhagsdhj', '1', '200', '200', 'Consulting Income', 'dfssf', '1', '100', '100', '', '', '0', '', '', '', '', '0', '', '', 'Mouse', 'fdg2154', 'fdgf\n\n\n', '1', '200.0', '200.0', 'Mouse', 'fdg2154', 'fdg\n\n\n', '1', '200.0', '200.0', 'Mouse', 'fdg2154', 'fdgfd\n\n\n', '2', '200.0', '400.0', 'Mouse', 'fdg2154', 'fdgfd\n\n\n', '1', '200.0', '200.0', '28.0% GST(28%)', '18.0% GST(18%)', '28.0% GST(28%)', 'Choose', '1300.0', '148.0', '400', 16),
(2, 'ram kum', '10', '2022-09-23', 'Inventory', 'Cash', 'Billable Expense Income', 'erwewrw', '1', '200', '200', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Mouse', 'fdg2154', 'sad\n\n', '1', '201', '201.0', 'Mouse', 'fdg2154', '\n', '1', '200.0', '200.0', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '28.0% GST(28%)', '28.0% GST(28%)', 'Choose', 'Choose', '601.0', '112.28', '713.28', 16),
(3, 'ram kum', '10', '2022-09-23', '', 'Cash', 'Billable Expense Income', 'erwewrw', '1', '200', '200', '', '', '0', '', '', '', '', '0', '', '', '', '', '0', '', '', 'Mouse', 'fdg2154', 'sad\n\n', '1', '201', '201.0', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '28.0% GST(28%)', 'Choose', 'Choose', 'Choose', '401.0', '56.28', '56', 16),
(12, 'Sneha S', '1', '2022-09-29', '', 'Cash', 'Inventory Asset', 'des', '1', '100', '100', 'Retained Earnings', 'des', '1', '50', '50', 'Output CGST', 'des', '1', '25', '25', 'Sales', 'des', '1', '75', '75', 'Inv_1', '1001', 'des\n\n', '1', '78.12', '78.12', 'Non_1', '1002', 'des1\n\n', '1', '44.64', '44.64', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '28.0% GST(28%)', '28.0% GST(28%)', 'Choose', 'Choose', '372.76', '34.37', '407.13', 16),
(13, 'Sneha S', '1', '2022-11-12', 'SASS', 'Cash', 'Inventory Asset', 'des', '1', '100', '100', 'Retained Earnings', 'des', '1', '50', '50', 'Output CGST', 'des', '1', '25', '25', 'Sales', 'des', '1', '75', '75', 'Inv_1', '1001', 'des\n\n', '1', '78.12', '78.12', 'Non_1', '1002', 'des1\n\n', '1', '44.64', '44.64', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '28.0% GST(28%)', '28.0% GST(28%)', 'Choose', 'Choose', '372.76', '34.37', '0.0', 16),
(14, 'Sneha S', '1', '2022-11-12', '', 'Cash', 'Inventory Asset', 'des', '1', '100', '100', 'Retained Earnings', 'des', '1', '50', '50', 'Output CGST', 'des', '1', '25', '25', 'Sales', 'des', '1', '75', '75', 'Inv_1', '1001', 'des\n\n', '1', '78.12', '78.12', 'Non_1', '1002', 'des1\n\n', '1', '44.64', '44.64', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '28.0% GST(28%)', '28.0% GST(28%)', 'Choose', 'Choose', '372.76', '34.37', '0.0', 16),
(15, 'Sneha S', '1', '2022-11-12', '', 'Cash', 'Inventory Asset', 'des', '1', '100', '100', 'Retained Earnings', 'des', '1', '50', '50', 'Output CGST', 'des', '1', '25', '25', 'Sales', 'des', '1', '75', '75', 'Inv_1', '1001', 'des\n\n', '1', '78.12', '78.12', 'Non_1', '1002', 'des1\n\n', '1', '44.64', '44.64', '', '', '\n\n', '0', '0', '', '', '', '\n\n', '0', '0', '', '28.0% GST(28%)', '28.0% GST(28%)', 'Choose', 'Choose', '372.76', '34.37', '0.0', 16);

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `prid` int(11) NOT NULL,
  `Pname` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `cid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`prid`, `Pname`, `sku`, `price`, `cid_id`) VALUES
(1, 'hp brand', '1254', '10000', 16),
(3, 'Pen', '', '10500.0', 16),
(4, 'REdmi Not 11', 'H12012', '2173.0', 16),
(6, 'Touch Pad', 'Hs2000', '2091.0', 16),
(8, 'Mobile Cover', 'HY1200', '2092.0', 16),
(9, 'Vivo', 'HS200', '1334.646', 16),
(11, 'java', 'sdas', '2173.0', 16),
(12, 'Mouse pas', 'asdsa', '1066.0', 16),
(13, 'Lcd Tv', 'HSN2000', '3576.813768', 16);

-- --------------------------------------------------------

--
-- Table structure for table `producttable`
--

CREATE TABLE `producttable` (
  `Pid` int(11) NOT NULL,
  `Pname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttable`
--

INSERT INTO `producttable` (`Pid`, `Pname`) VALUES
(1, 'Accounts'),
(2, 'Current Assets');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  ADD PRIMARY KEY (`accountsid`),
  ADD KEY `app1_accounts_cid_id_ca072561_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_accounts_productid_id_ff25de48_fk_producttable_Pid` (`productid_id`),
  ADD KEY `app1_accounts_proid_id_d0d77a6d_fk_app1_accountype_accountypeid` (`proid_id`);

--
-- Indexes for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  ADD PRIMARY KEY (`accounts1id`),
  ADD KEY `app1_accounts1_cid_id_073c043d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  ADD PRIMARY KEY (`accountypeid`),
  ADD KEY `app1_accountype_cid_id_b591dd7d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_addac`
--
ALTER TABLE `app1_addac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app1_addtax1`
--
ALTER TABLE `app1_addtax1`
  ADD PRIMARY KEY (`addtax1id`),
  ADD KEY `app1_addtax1_cid_id_90eebb52_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_advancepayment`
--
ALTER TABLE `app1_advancepayment`
  ADD PRIMARY KEY (`advancepaymentid`),
  ADD KEY `app1_advancepayment_cid_id_796af5b3_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bankstatement`
--
ALTER TABLE `app1_bankstatement`
  ADD PRIMARY KEY (`bankstatementid`),
  ADD KEY `app1_bankstatement_cid_id_00a3fc3b_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bills`
--
ALTER TABLE `app1_bills`
  ADD PRIMARY KEY (`billid`),
  ADD KEY `app1_bills_cid_id_d648c3f6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_bundle`
--
ALTER TABLE `app1_bundle`
  ADD PRIMARY KEY (`bundleid`),
  ADD KEY `app1_bundle_cid_id_82c2ec98_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_cheqs`
--
ALTER TABLE `app1_cheqs`
  ADD PRIMARY KEY (`chequeid`),
  ADD KEY `app1_cheqs_cid_id_ff8a2ca6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_company`
--
ALTER TABLE `app1_company`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `app1_company_id_id_84084c19_fk_auth_user_id` (`id_id`);

--
-- Indexes for table `app1_credit`
--
ALTER TABLE `app1_credit`
  ADD PRIMARY KEY (`creditnoteid`),
  ADD KEY `app1_credit_cid_id_40b75237_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_currency`
--
ALTER TABLE `app1_currency`
  ADD PRIMARY KEY (`currencyid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_customer`
--
ALTER TABLE `app1_customer`
  ADD PRIMARY KEY (`customerid`),
  ADD KEY `app1_customer_cid_id_607bad1d_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_customercompliant`
--
ALTER TABLE `app1_customercompliant`
  ADD PRIMARY KEY (`compliantid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_customize`
--
ALTER TABLE `app1_customize`
  ADD PRIMARY KEY (`customizeid`),
  ADD KEY `app1_customize_cid_id_059fe662_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_delayedcharge`
--
ALTER TABLE `app1_delayedcharge`
  ADD PRIMARY KEY (`delayedchargeid`),
  ADD KEY `app1_delayedcharge_cid_id_b9dff420_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_employee`
--
ALTER TABLE `app1_employee`
  ADD PRIMARY KEY (`employeeid`),
  ADD KEY `app1_employee_cid_id_62659cb7_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_estimate`
--
ALTER TABLE `app1_estimate`
  ADD PRIMARY KEY (`estimateid`),
  ADD KEY `app1_estimate_cid_id_983a0fc3_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_expences`
--
ALTER TABLE `app1_expences`
  ADD PRIMARY KEY (`expencesid`),
  ADD KEY `app1_expences_cid_id_2cd98c8f_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_expenseaccount`
--
ALTER TABLE `app1_expenseaccount`
  ADD PRIMARY KEY (`expenseid`),
  ADD KEY `app1_expenseaccount_cid_id_df816740_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_expenseaccount_expaccountypid_id_67312bdf_fk_app1_acco` (`expaccountypid_id`);

--
-- Indexes for table `app1_incomeaccount`
--
ALTER TABLE `app1_incomeaccount`
  ADD PRIMARY KEY (`incomeid`),
  ADD KEY `app1_incomeaccount_cid_id_094b46f8_fk_app1_company_cid` (`cid_id`),
  ADD KEY `app1_incomeaccount_expenceincomeid_id_f4304840_fk_app1_expe` (`expenceincomeid_id`);

--
-- Indexes for table `app1_inventory`
--
ALTER TABLE `app1_inventory`
  ADD PRIMARY KEY (`inventoryid`),
  ADD KEY `app1_inventory_cid_id_f2e81863_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  ADD PRIMARY KEY (`invoiceid`),
  ADD KEY `app1_invoice_cid_id_a9c8e9b5_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_item`
--
ALTER TABLE `app1_item`
  ADD PRIMARY KEY (`itemsid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_manualjournal`
--
ALTER TABLE `app1_manualjournal`
  ADD PRIMARY KEY (`journalid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_materialerror`
--
ALTER TABLE `app1_materialerror`
  ADD PRIMARY KEY (`materialerrorid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_noninventory`
--
ALTER TABLE `app1_noninventory`
  ADD PRIMARY KEY (`noninventoryid`),
  ADD KEY `app1_noninventory_cid_id_d0447e15_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_paydowncreditcard`
--
ALTER TABLE `app1_paydowncreditcard`
  ADD PRIMARY KEY (`paycreditcardid`),
  ADD KEY `app1_paydowncreditcard_cid_id_148fd035_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_payment`
--
ALTER TABLE `app1_payment`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `app1_payment_cid_id_a954b426_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_payslip`
--
ALTER TABLE `app1_payslip`
  ADD PRIMARY KEY (`payslipid`),
  ADD KEY `app1_payslip_cid_id_3f97b6d6_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_production`
--
ALTER TABLE `app1_production`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_projectmanagement`
--
ALTER TABLE `app1_projectmanagement`
  ADD PRIMARY KEY (`projectid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_qualitycertificate`
--
ALTER TABLE `app1_qualitycertificate`
  ADD PRIMARY KEY (`certificateid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_qualityinspection`
--
ALTER TABLE `app1_qualityinspection`
  ADD PRIMARY KEY (`inspectionid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_recon1`
--
ALTER TABLE `app1_recon1`
  ADD PRIMARY KEY (`recon1id`),
  ADD KEY `app1_recon1_cid_id_958c7d0e_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_recordpay`
--
ALTER TABLE `app1_recordpay`
  ADD PRIMARY KEY (`recordpayid`),
  ADD KEY `app1_recordpay_cid_id_f3d93b71_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_salesrecpts`
--
ALTER TABLE `app1_salesrecpts`
  ADD PRIMARY KEY (`salesrecptsid`),
  ADD KEY `app1_salesrecpts_cid_id_7834f425_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_service`
--
ALTER TABLE `app1_service`
  ADD PRIMARY KEY (`serviceid`),
  ADD KEY `app1_service_cid_id_e19684ee_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_sign`
--
ALTER TABLE `app1_sign`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `app1_suplrcredit`
--
ALTER TABLE `app1_suplrcredit`
  ADD PRIMARY KEY (`suppliercreditid`),
  ADD KEY `app1_suplrcredit_cid_id_943a7180_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_supplier`
--
ALTER TABLE `app1_supplier`
  ADD PRIMARY KEY (`supplierid`),
  ADD KEY `app1_supplier_cid_id_53a00add_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_suppliererror`
--
ALTER TABLE `app1_suppliererror`
  ADD PRIMARY KEY (`suppliererrorid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `app1_timeact`
--
ALTER TABLE `app1_timeact`
  ADD PRIMARY KEY (`timeactid`),
  ADD KEY `app1_timeact_cid_id_2709432a_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_timeactsale`
--
ALTER TABLE `app1_timeactsale`
  ADD PRIMARY KEY (`timeactsaleid`),
  ADD KEY `app1_timeactsale_cid_id_0dcbffb2_fk_app1_company_cid` (`cid_id`);

--
-- Indexes for table `app1_unit`
--
ALTER TABLE `app1_unit`
  ADD PRIMARY KEY (`unitid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `itemstable`
--
ALTER TABLE `itemstable`
  ADD PRIMARY KEY (`Itemid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`prid`),
  ADD KEY `cid_id` (`cid_id`);

--
-- Indexes for table `producttable`
--
ALTER TABLE `producttable`
  ADD PRIMARY KEY (`Pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  MODIFY `accountsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  MODIFY `accounts1id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1502;

--
-- AUTO_INCREMENT for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  MODIFY `accountypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `app1_addac`
--
ALTER TABLE `app1_addac`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_addtax1`
--
ALTER TABLE `app1_addtax1`
  MODIFY `addtax1id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_advancepayment`
--
ALTER TABLE `app1_advancepayment`
  MODIFY `advancepaymentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_bankstatement`
--
ALTER TABLE `app1_bankstatement`
  MODIFY `bankstatementid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_bills`
--
ALTER TABLE `app1_bills`
  MODIFY `billid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_bundle`
--
ALTER TABLE `app1_bundle`
  MODIFY `bundleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app1_cheqs`
--
ALTER TABLE `app1_cheqs`
  MODIFY `chequeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_company`
--
ALTER TABLE `app1_company`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `app1_credit`
--
ALTER TABLE `app1_credit`
  MODIFY `creditnoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app1_currency`
--
ALTER TABLE `app1_currency`
  MODIFY `currencyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `app1_customer`
--
ALTER TABLE `app1_customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `app1_customercompliant`
--
ALTER TABLE `app1_customercompliant`
  MODIFY `compliantid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app1_customize`
--
ALTER TABLE `app1_customize`
  MODIFY `customizeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `app1_delayedcharge`
--
ALTER TABLE `app1_delayedcharge`
  MODIFY `delayedchargeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_employee`
--
ALTER TABLE `app1_employee`
  MODIFY `employeeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_estimate`
--
ALTER TABLE `app1_estimate`
  MODIFY `estimateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_expences`
--
ALTER TABLE `app1_expences`
  MODIFY `expencesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_expenseaccount`
--
ALTER TABLE `app1_expenseaccount`
  MODIFY `expenseid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_incomeaccount`
--
ALTER TABLE `app1_incomeaccount`
  MODIFY `incomeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_inventory`
--
ALTER TABLE `app1_inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  MODIFY `invoiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `app1_item`
--
ALTER TABLE `app1_item`
  MODIFY `itemsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app1_manualjournal`
--
ALTER TABLE `app1_manualjournal`
  MODIFY `journalid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `app1_materialerror`
--
ALTER TABLE `app1_materialerror`
  MODIFY `materialerrorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app1_noninventory`
--
ALTER TABLE `app1_noninventory`
  MODIFY `noninventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app1_paydowncreditcard`
--
ALTER TABLE `app1_paydowncreditcard`
  MODIFY `paycreditcardid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_payment`
--
ALTER TABLE `app1_payment`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_payslip`
--
ALTER TABLE `app1_payslip`
  MODIFY `payslipid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app1_production`
--
ALTER TABLE `app1_production`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `app1_projectmanagement`
--
ALTER TABLE `app1_projectmanagement`
  MODIFY `projectid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app1_qualitycertificate`
--
ALTER TABLE `app1_qualitycertificate`
  MODIFY `certificateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app1_qualityinspection`
--
ALTER TABLE `app1_qualityinspection`
  MODIFY `inspectionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app1_recon1`
--
ALTER TABLE `app1_recon1`
  MODIFY `recon1id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_recordpay`
--
ALTER TABLE `app1_recordpay`
  MODIFY `recordpayid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_salesrecpts`
--
ALTER TABLE `app1_salesrecpts`
  MODIFY `salesrecptsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_service`
--
ALTER TABLE `app1_service`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `app1_sign`
--
ALTER TABLE `app1_sign`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_suplrcredit`
--
ALTER TABLE `app1_suplrcredit`
  MODIFY `suppliercreditid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app1_supplier`
--
ALTER TABLE `app1_supplier`
  MODIFY `supplierid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `app1_suppliererror`
--
ALTER TABLE `app1_suppliererror`
  MODIFY `suppliererrorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app1_timeact`
--
ALTER TABLE `app1_timeact`
  MODIFY `timeactid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app1_timeactsale`
--
ALTER TABLE `app1_timeactsale`
  MODIFY `timeactsaleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app1_unit`
--
ALTER TABLE `app1_unit`
  MODIFY `unitid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pricelist`
--
ALTER TABLE `pricelist`
  MODIFY `prid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `producttable`
--
ALTER TABLE `producttable`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app1_accounts`
--
ALTER TABLE `app1_accounts`
  ADD CONSTRAINT `app1_accounts_cid_id_ca072561_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_accounts_productid_id_ff25de48_fk_producttable_Pid` FOREIGN KEY (`productid_id`) REFERENCES `producttable` (`Pid`),
  ADD CONSTRAINT `app1_accounts_proid_id_d0d77a6d_fk_app1_accountype_accountypeid` FOREIGN KEY (`proid_id`) REFERENCES `app1_accountype` (`accountypeid`);

--
-- Constraints for table `app1_accounts1`
--
ALTER TABLE `app1_accounts1`
  ADD CONSTRAINT `app1_accounts1_cid_id_073c043d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_accountype`
--
ALTER TABLE `app1_accountype`
  ADD CONSTRAINT `app1_accountype_cid_id_b591dd7d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_addtax1`
--
ALTER TABLE `app1_addtax1`
  ADD CONSTRAINT `app1_addtax1_cid_id_90eebb52_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_advancepayment`
--
ALTER TABLE `app1_advancepayment`
  ADD CONSTRAINT `app1_advancepayment_cid_id_796af5b3_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_bankstatement`
--
ALTER TABLE `app1_bankstatement`
  ADD CONSTRAINT `app1_bankstatement_cid_id_00a3fc3b_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_bills`
--
ALTER TABLE `app1_bills`
  ADD CONSTRAINT `app1_bills_cid_id_d648c3f6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_bundle`
--
ALTER TABLE `app1_bundle`
  ADD CONSTRAINT `app1_bundle_cid_id_82c2ec98_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_cheqs`
--
ALTER TABLE `app1_cheqs`
  ADD CONSTRAINT `app1_cheqs_cid_id_ff8a2ca6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_company`
--
ALTER TABLE `app1_company`
  ADD CONSTRAINT `app1_company_id_id_84084c19_fk_auth_user_id` FOREIGN KEY (`id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `app1_credit`
--
ALTER TABLE `app1_credit`
  ADD CONSTRAINT `app1_credit_cid_id_40b75237_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_currency`
--
ALTER TABLE `app1_currency`
  ADD CONSTRAINT `app1_currency_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_customer`
--
ALTER TABLE `app1_customer`
  ADD CONSTRAINT `app1_customer_cid_id_607bad1d_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_customercompliant`
--
ALTER TABLE `app1_customercompliant`
  ADD CONSTRAINT `app1_customercompliant_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_customize`
--
ALTER TABLE `app1_customize`
  ADD CONSTRAINT `app1_customize_cid_id_059fe662_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_delayedcharge`
--
ALTER TABLE `app1_delayedcharge`
  ADD CONSTRAINT `app1_delayedcharge_cid_id_b9dff420_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_estimate`
--
ALTER TABLE `app1_estimate`
  ADD CONSTRAINT `app1_estimate_cid_id_983a0fc3_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_expences`
--
ALTER TABLE `app1_expences`
  ADD CONSTRAINT `app1_expences_cid_id_2cd98c8f_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_expenseaccount`
--
ALTER TABLE `app1_expenseaccount`
  ADD CONSTRAINT `app1_expenseaccount_cid_id_df816740_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_expenseaccount_expaccountypid_id_67312bdf_fk_app1_acco` FOREIGN KEY (`expaccountypid_id`) REFERENCES `app1_accountype` (`accountypeid`);

--
-- Constraints for table `app1_incomeaccount`
--
ALTER TABLE `app1_incomeaccount`
  ADD CONSTRAINT `app1_incomeaccount_cid_id_094b46f8_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`),
  ADD CONSTRAINT `app1_incomeaccount_expenceincomeid_id_f4304840_fk_app1_expe` FOREIGN KEY (`expenceincomeid_id`) REFERENCES `app1_expenseaccount` (`expenseid`);

--
-- Constraints for table `app1_inventory`
--
ALTER TABLE `app1_inventory`
  ADD CONSTRAINT `app1_inventory_cid_id_f2e81863_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_invoice`
--
ALTER TABLE `app1_invoice`
  ADD CONSTRAINT `app1_invoice_cid_id_a9c8e9b5_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_item`
--
ALTER TABLE `app1_item`
  ADD CONSTRAINT `app1_item_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_manualjournal`
--
ALTER TABLE `app1_manualjournal`
  ADD CONSTRAINT `app1_manualjournal_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_materialerror`
--
ALTER TABLE `app1_materialerror`
  ADD CONSTRAINT `app1_materialerror_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_noninventory`
--
ALTER TABLE `app1_noninventory`
  ADD CONSTRAINT `app1_noninventory_cid_id_d0447e15_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_paydowncreditcard`
--
ALTER TABLE `app1_paydowncreditcard`
  ADD CONSTRAINT `app1_paydowncreditcard_cid_id_148fd035_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_payment`
--
ALTER TABLE `app1_payment`
  ADD CONSTRAINT `app1_payment_cid_id_a954b426_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_payslip`
--
ALTER TABLE `app1_payslip`
  ADD CONSTRAINT `app1_payslip_cid_id_3f97b6d6_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_projectmanagement`
--
ALTER TABLE `app1_projectmanagement`
  ADD CONSTRAINT `app1_projectmanagement_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_qualitycertificate`
--
ALTER TABLE `app1_qualitycertificate`
  ADD CONSTRAINT `app1_qualitycertificate_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_qualityinspection`
--
ALTER TABLE `app1_qualityinspection`
  ADD CONSTRAINT `app1_qualityinspection_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recon1`
--
ALTER TABLE `app1_recon1`
  ADD CONSTRAINT `app1_recon1_cid_id_958c7d0e_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_recordpay`
--
ALTER TABLE `app1_recordpay`
  ADD CONSTRAINT `app1_recordpay_cid_id_f3d93b71_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_salesrecpts`
--
ALTER TABLE `app1_salesrecpts`
  ADD CONSTRAINT `app1_salesrecpts_cid_id_7834f425_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_service`
--
ALTER TABLE `app1_service`
  ADD CONSTRAINT `app1_service_cid_id_e19684ee_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_suplrcredit`
--
ALTER TABLE `app1_suplrcredit`
  ADD CONSTRAINT `app1_suplrcredit_cid_id_943a7180_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_supplier`
--
ALTER TABLE `app1_supplier`
  ADD CONSTRAINT `app1_supplier_cid_id_53a00add_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_suppliererror`
--
ALTER TABLE `app1_suppliererror`
  ADD CONSTRAINT `app1_suppliererror_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_timeact`
--
ALTER TABLE `app1_timeact`
  ADD CONSTRAINT `app1_timeact_cid_id_2709432a_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_timeactsale`
--
ALTER TABLE `app1_timeactsale`
  ADD CONSTRAINT `app1_timeactsale_cid_id_0dcbffb2_fk_app1_company_cid` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `app1_unit`
--
ALTER TABLE `app1_unit`
  ADD CONSTRAINT `app1_unit_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD CONSTRAINT `pricelist_ibfk_1` FOREIGN KEY (`cid_id`) REFERENCES `app1_company` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
