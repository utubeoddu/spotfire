from Spotfire.Dxp.Data import *
from Spotfire.Dxp.Data.DataFunctions import *

# Create a new DataFunctionDefinitionBuilder
builder = DataFunctionDefinitionBuilder()

# Set script and language
script = "print('Hello from Python')"  # Example script
language = DataFunctionTypeIdentifiers.PythonFunction  # Use Python, TERR, or R as needed
builder.Script = script
builder.TypeIdentifier = language

# Store script and language in variables
scriptContent = builder.Script
scriptLanguage = builder.TypeIdentifier.Name

# Store in Document Properties (optional)
Document.Properties["StoredScript"] = scriptContent
Document.Properties["StoredLanguage"] = scriptLanguage

# Print for verification
print("Script Content:", scriptContent)
print("Script Language:", scriptLanguage)

# Optionally, create and register the data function
# definition = builder.CreateDefinition()
# Document.Data.DataFunctions.Add(definition, "MyNewDataFunction")
