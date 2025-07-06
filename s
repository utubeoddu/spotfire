from Spotfire.Dxp.Data import *
from Spotfire.Dxp.Data.DataFunctions import *

# Specify the name of the data function to retrieve
dataFunctionName = "YourDataFunctionName"  # Replace with the actual data function name

# Initialize variables
scriptContent = None
scriptLanguage = None
found = False

# Iterate through the DataFunctions collection to find the function
for dataFunction in Document.Data.DataFunctions:
    if dataFunction.Name == dataFunctionName:
        # Get the DataFunctionDefinition
        definition = dataFunction.Definition
        
        # Store the script and language in variables
        scriptContent = definition.Script  # Gets the script text
        scriptLanguage = definition.TypeIdentifier.Name  # Gets the language (e.g., "Python", "TERR", etc.)
        found = True
        break

if found:
    # Optionally, store in Document Properties for use in Spotfire
    Document.Properties["StoredScript"] = scriptContent
    Document.Properties["StoredLanguage"] = scriptLanguage
    
    # Print to console (for debugging or Script Output panel in Spotfire)
    print("Script Content:", scriptContent)
    print("Script Language:", scriptLanguage)
else:
    print("Data function '{}' not found.".format(dataFunctionName))
