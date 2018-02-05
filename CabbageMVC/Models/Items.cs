using System;
using System.Xml.Serialization;

namespace CabbageMVC.Models
{

    [Serializable]
    [XmlRoot("box"), XmlType("meal")]
    public class Items
    {
        public string Name { get; set; }
        public string Dishout { get; set; }
        public string Caloricity { get; set; }
        public string Proteins { get; set; }
        public string Fats { get; set; }
        public string Carbohydrates { get; set; }
    }
}