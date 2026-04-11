using System;
using System.Collections.Generic;

namespace TailwindConfiguration.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public string SKU { get; set; }
        public string Category { get; set; }
        public DateTime CreatedDate { get; set; }
    }

    // In-memory storage for products
    public static class ProductRepository
    {
        private static List<Product> products = new List<Product>
        {
            new Product 
            { 
                Id = 1, 
                Name = "Laptop", 
                Description = "High-performance laptop",
                Price = 50000m, 
                SKU = "LAP-001", 
                Category = "Electronics",
                Quantity = 10,
                CreatedDate = DateTime.Now
            },
            new Product 
            { 
                Id = 2, 
                Name = "Wireless Mouse", 
                Description = "Ergonomic wireless mouse",
                Price = 1500m, 
                SKU = "MOU-001", 
                Category = "Accessories",
                Quantity = 50,
                CreatedDate = DateTime.Now
            },
            new Product 
            { 
                Id = 3, 
                Name = "USB-C Cable", 
                Description = "Fast charging USB-C cable",
                Price = 500m, 
                SKU = "CAB-001", 
                Category = "Cables",
                Quantity = 100,
                CreatedDate = DateTime.Now
            },
            new Product 
            { 
                Id = 4, 
                Name = "Monitor 27 inch", 
                Description = "4K Ultra HD Monitor",
                Price = 25000m, 
                SKU = "MON-001", 
                Category = "Displays",
                Quantity = 15,
                CreatedDate = DateTime.Now
            },
            new Product 
            { 
                Id = 5, 
                Name = "Mechanical Keyboard", 
                Description = "RGB Mechanical Gaming Keyboard",
                Price = 8000m, 
                SKU = "KEY-001", 
                Category = "Accessories",
                Quantity = 25,
                CreatedDate = DateTime.Now
            }
        };

        public static List<Product> GetAllProducts()
        {
            return products;
        }

        public static Product GetProductById(int id)
        {
            return products.Find(p => p.Id == id);
        }

        public static void AddProduct(Product product)
        {
            product.Id = products.Count > 0 ? products[products.Count - 1].Id + 1 : 1;
            product.CreatedDate = DateTime.Now;
            products.Add(product);
        }

        public static void UpdateProduct(Product product)
        {
            int index = products.FindIndex(p => p.Id == product.Id);
            if (index != -1)
            {
                products[index] = product;
            }
        }

        public static void DeleteProduct(int id)
        {
            products.RemoveAll(p => p.Id == id);
        }
    }
}
