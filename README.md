# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby versions

* System dependencies

* Configuration

* Command to Run - rails s -e development

* Instead of database, I used in memory array to make all crud operations to create, search, update.

*  API end points are following
   *  PUT   /invoices/:id/import -- Download updated report. 
   *  GET   /invoices  -- To get list of invoices merchant has uploaded
   *  POST  /invoices  --- Upload inovice by merchant.
   *  GET   /invoices/:id -- View invoice inforamtion uploaded by merchant to merchant
   *  GET   /admin/invoices      -- To get list of invoices dashboard
   *  GET  /admin/invoices/:id   -- To get invoice details of invoice
   *  PUT  /admin/invoices/:id   -- To update invoice infomation for internal team. they can change the status of invoices.
   
* Autolaod configuation has been used to load the basic structure of table/schema which will be in memory till server get stopped.
