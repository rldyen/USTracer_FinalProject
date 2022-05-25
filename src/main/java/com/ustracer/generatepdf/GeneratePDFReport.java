package com.ustracer.generatepdf;

import java.io.File;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.itextpdf.io.image.ImageData;
import com.itextpdf.io.image.ImageDataFactory;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Table;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Image;

import com.ustracer.mvc.util.DBConnection;

public class GeneratePDFReport {
	
	public static void main(String[] args){

		try {
			
			String destination = "C:\\Users\\Roald Yen Soriano\\eclipse-workspace\\USTracerProject\\Generated PDF\\CovaxProfile_PDF.pdf";
			
			System.out.println("PDF Generated");
			
			//Preparation for generation of PDF
			File file = new File(destination);
			PdfWriter pdfwriter;
			pdfwriter = new PdfWriter(file);
			PdfDocument pdfdocument = new PdfDocument(pdfwriter);
			Document doc = new Document(pdfdocument);
			
			pdfdocument.setDefaultPageSize(PageSize.A4.rotate());
			
			String imageFile = "C:\\Users\\Roald Yen Soriano\\eclipse-workspace\\USTracerProject\\src\\main\\webapp\\Images\\Logo-wtext.png";
			ImageData img = ImageDataFactory.create(imageFile);
			Image image = new Image(img);
			doc.add(image);
			
			Connection connection = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			//Connection to MySQL
			connection = DBConnection.createConnection();
			
			//Querying from database
			String query = "SELECT * FROM CovaxProfTbl";
			ps = connection.prepareStatement(query);
			rs = ps.executeQuery();
			
			//Display the table and generate PDF file
			
			Table table = new Table(10);
			
			table.addCell((new Cell().add(new Paragraph("CovaxID"))));
			table.addCell((new Cell().add(new Paragraph("Faculty ID/Student ID"))));
			table.addCell((new Cell().add(new Paragraph("First Name"))));
			table.addCell((new Cell().add(new Paragraph("Middle Name"))));
			table.addCell((new Cell().add(new Paragraph("Last Name"))));
			table.addCell((new Cell().add(new Paragraph("Date of Birth"))));
			table.addCell((new Cell().add(new Paragraph("Vaccination Site"))));
			table.addCell((new Cell().add(new Paragraph("Allergies"))));
			table.addCell((new Cell().add(new Paragraph("Vaccine Brand"))));
			table.addCell((new Cell().add(new Paragraph("Email"))));
			
			while(rs.next()) {
				
				table.addCell(rs.getString(1));
				table.addCell(rs.getString(2));
				table.addCell(rs.getString(3));
				table.addCell(rs.getString(4));
				table.addCell(rs.getString(5)); 
				table.addCell(rs.getString(6));
				table.addCell(rs.getString(7));
				table.addCell(rs.getString(8));
				table.addCell(rs.getString(9));
				table.addCell(rs.getString(10));
				
				doc.add(table);
				
			}
			
			doc.close();
			rs.close();
			ps.close();
			connection.close();
			
		} catch (FileNotFoundException | SQLException | MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
