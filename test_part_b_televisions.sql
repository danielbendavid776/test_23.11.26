CREATE TABLE televisions (
				id 	INTEGER  PRIMARY KEY AUTOINCREMENT,
				catalog_number 	TEXT	UNIQUE ,
				brand 	TEXT CHECK (brand IN ('Samsung', 'LG','Sony')),
				model 	TEXT,
				screen_size 	INTEGER,
				resolution 	TEXT  CHECK (resolution IN ('4K' , '8K', 'Full HD')),
				price 	INTEGER,
				stock_quantity	INTEGER  DEFAULT 0,
				release_year 	INTEGER,
				smart_tv 	TEXT  DEFAULT 'No',
				os 	TEXT  CHECK (smart_tv = 'Yes' OR os IS NULL),
				panel_type	 TEXT  CHECK (panel_type IN ('OLED', 'QLED','LED'))
	);
	
	INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type) 
	VALUES ('a10', 'Samsung', 'model-2026', 65, '4K', 5000, 20, 2026, 'Yes', 'os', 'OLED');
	
	INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type) 
	VALUES ('b20', 'LG', 'model-2023', 75, 'Full HD', 3800, 10, 2023, 'No', NULL, 'LED');
	
	INSERT INTO televisions (catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type) 
	VALUES ('c30', 'Sony', 'model-2025', 100, '8K', 7500, 5, 2025, 'Yes', 'os', 'QLED');
	
	
	