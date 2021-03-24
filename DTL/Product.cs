using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PRN292_Project.DTL
{
    public class Product
    {
        private int id;
        private string name;
        private Category category;
        private int quantity;
        private string overview;
        private string description;
        private List<string> imageUrls = new List<string>();
        private bool isInStock;

        public int Id
        {
            get => id;
            set => id = value;
        }

        public string Name
        {
            get => name;
            set => name = value;
        }

        public Category Category
        {
            get => category;
            set => category = value;
        }

        public int Quantity
        {
            get => quantity;
            set => quantity = value;
        }

        public string Overview
        {
            get => overview;
            set => overview = value;
        }

        public string Description
        {
            get => description;
            set => description = value;
        }

        public List<string> ImageUrls
        {
            get => imageUrls;
            set => imageUrls = value;
        }

        public bool IsInStock
        {
            get => isInStock;
            set => isInStock = value;
        }
    }
}