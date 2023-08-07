# mw-JSonForms

This is a Fork of CIForms. The goal of this Fork is to optimize the Datahandling inside the MySQL-DB using JSon. JSon as Datatype 'Blob' makes it easy to handle the Fomruladata with thirdparty-tools. 
The ability to add an Email Formfield to send the formuladata zo a custom recipient (to/CC/BCC).


# CIForms

CIForms allows rapid creation of forms, either standard forms with input fields aimed at receiving data from visitors, or forms with multiple choice questions or even Cloze tests to administer complex surveys & tests.

All forms include automatic validation, are optionally protected by the latest version of Google recaptcha and have been inspired by this extension (https://en.wikiversity.org/wiki/Wikiversity:Main_Page) at Wikiversity and they diverge from it mainly because the submitted data are either stored in the database or sent to a provided email address, rather than used to compute a score.

Please check https://www.mediawiki.org/wiki/Extension:CIForms for the official documentation.

# Install
CIForms should already been installed. 
actually you only need to use the /includes/specials/CIFormsSubmit.php and replace it.
Update the localSettings.php of your mediawikie with the global Variable:
$wgCIFormsSecondTable = 'CIForms_Name_Of_second_Table';

# Roadmap
## Form-Data
The Formdata is stored in a custom Json. It Contains Some Formular data like Title and Username submitting the form. 
From every section the name is taken and form the items the labels and the value. In case of multiple choise only selected items are sotored. 
This makes it much easier to use CIForms with external tools like elasticSearch. 

## Email to User submitting the form
If a user is logged on and the profile provides an emailadresse the form is mailed to the user too.

## Form Data in the Email body
The submittet Form generates a pdf. This sound stupid, because you have to open it bevore you can see whats inside and if its that what you are looking for. 
I took the content of the pdf to the email body (not very well formated, because CSS is missing).
