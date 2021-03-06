using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PRN292_Project.DTL
{
    public class Product
    {
        private int id;
        private string name;
        private float price;
        private Category category;
        private string overview;
        private string description;
        private bool isInStock;
        private ArrayList imageUrls = new ArrayList();
        private string thumbnail;
        private int quantity;

        public int Quantity
        {
            get => quantity;
            set => quantity = value;
        }

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

        public float Price
        {
            get => price;
            set => price = value;
        }

        public Category Category
        {
            get => category;
            set => category = value;
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

        public bool IsInStock
        {
            get => isInStock;
            set => isInStock = value;
        }

        public ArrayList ImageUrls
        {
            get => imageUrls;
            set => imageUrls = value;
        }

        public string Thumbnail
        {
            get => thumbnail;
            set => thumbnail = value;
        }

        public override bool Equals(object obj)
        {
            if (obj is Product)
            {
                Product p = obj as Product;
                return p.Id == id;
            }

            return false;
        }
    }
}