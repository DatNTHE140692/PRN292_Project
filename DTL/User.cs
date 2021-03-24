using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PRN292_Project.DTL
{
    public class User
    {
        private string firstName;
        private string lastName;
        private string userName;
        private string password;
        private string email;
        private string phoneNumber;
        private string address;
        private string province;
        private string city;
        private string country;
        private string zipCode;

        public string FirstName
        {
            get => firstName;
            set => firstName = value;
        }

        public string LastName
        {
            get => lastName;
            set => lastName = value;
        }

        public string UserName
        {
            get => userName;
            set => userName = value;
        }

        public string Password
        {
            get => password;
            set => password = value;
        }

        public string Email
        {
            get => email;
            set => email = value;
        }

        public string PhoneNumber
        {
            get => phoneNumber;
            set => phoneNumber = value;
        }

        public string Address
        {
            get => address;
            set => address = value;
        }

        public string Province
        {
            get => province;
            set => province = value;
        }

        public string City
        {
            get => city;
            set => city = value;
        }

        public string Country
        {
            get => country;
            set => country = value;
        }

        public string ZipCode
        {
            get => zipCode;
            set => zipCode = value;
        }
    }
}