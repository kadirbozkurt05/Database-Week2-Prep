CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL
);

CREATE TABLE Recipes (
    RecipeID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    CategoryID INT,
    Instructions TEXT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Ingredients (
    IngredientID INT PRIMARY KEY,
    IngredientName VARCHAR(255) NOT NULL
);

CREATE TABLE RecipeIngredients (
    RecipeID INT,
    IngredientID INT,
    Quantity DECIMAL(10, 2), -- You can adjust the precision as needed
    Unit VARCHAR(50),
    PRIMARY KEY (RecipeID, IngredientID),
    FOREIGN KEY (RecipeID) REFERENCES Recipes(RecipeID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID)
);
