function myFunction(e) {
 var email = e.values[20];     // My email data inside the Google Form is captured in column 21, Google uses 0 indexing, so programatically you have to refer to column 20. 
 var subject = "INSERT SUBJECT HERE";    // Subject of the email.
 var body = "BODY OF THE EMAIL";   // Body of the email. 
 var agreement = DriveApp.getFileById("LONGUNIQUEHARDtoreadCODE");   // Unique Google Drive code for the file to send via email. File must be shared publicly.
 var technologyAgreement = agreement.getAs(MimeType.PDF);     
 MailApp.sendEmail(email, subject, body, {attachments:[technologyAgreement]});
}
