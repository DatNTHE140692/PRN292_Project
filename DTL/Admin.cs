using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PRN292_Project.DTL
{
    public class Admin
    {
        private int id;
        private string firstName;
        private string lastName;
        private string email;
        private string phoneNumber;
        private string userName;
        private string password;

        public int Id
        {
            get => id;
            set => id = value;
        }

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
    }
}