//------------------------------------------------------------------------------
// <auto-generated>
//     Der Code wurde von einer Vorlage generiert.
//
//     Manuelle Änderungen an dieser Datei führen möglicherweise zu unerwartetem Verhalten der Anwendung.
//     Manuelle Änderungen an dieser Datei werden überschrieben, wenn der Code neu generiert wird.
// </auto-generated>
//------------------------------------------------------------------------------

namespace eResume
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tag
    {
        public int ID { get; set; }
        public string Titel { get; set; }
        public int ArticleID { get; set; }
    
        public virtual Article Article { get; set; }
    }
}
