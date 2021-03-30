namespace PRN292_Project.DAL
{
    public class Contact
    {
        public int ID { get; set; }
        private string firstName;
        private string lastName;
        private string email;
        private string phoneNumber;
        private string title;
        private string content;
        public bool IsRead { get; set; }

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

        public string Title
        {
            get => title;
            set => title = value;
        }

        public string Content
        {
            get => content;
            set => content = value;
        }
    }
}