from Spotfire.Dxp.Data import *
from Spotfire.Dxp.Data.DataFunctions import *

# Specify the name of the data function to retrieve
dataFunctionName = "YourDataFunctionName"  # Replace with the actual data function name

# Get the DataFunction from the current document
dataFunction = Document.Data.DataFunctions.FindFunction(dataFunctionName)

if dataFunction is not None:
    # Get the DataFunctionDefinition
    definition = dataFunction.Definition
    
    # Store the script and language in variables
    scriptContent = definition.Script  # Gets the script text
    scriptLanguage = definition.TypeIdentifier.Name  # Gets the language (e.g., "Python", "TERR", etc.)
    
    # Optionally, store in Document Properties for use in Spotfire
    Document.Properties["StoredScript"] = scriptContent
    Document.Properties["StoredLanguage"] = scriptLanguage
    
    # Print to console (for debugging or Script Output panel in Spotfire)
    print("Script Content:", scriptContent)
    print("Script Language:", scriptLanguage)
else:
    print("Data function '{}' not found.".format(dataFunctionName))
