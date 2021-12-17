using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FootbalManager.Entities
{
    public class Player
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public DateTime Birth { get; set; }
        public string Phone { get; set; }
        public int ShirtNum { get; set; }
        public int exp { get; set; }
        public bool status { get; set; }
        public string role { get; set; }
        public string position { get; set; }

        public Player()
        {
        }


    }
}