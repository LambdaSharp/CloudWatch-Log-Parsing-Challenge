using System.Collections.Generic;

namespace LogParser.Model {

    //--- Classes ---
    public class DecompressedEvents {
        
        //--- Properties ---
        public string MessageType { get; set; }
        
        public string Owner { get; set; }
        
        public string LogGroup { get; set; }
        
        public string LogStream { get; set; }
        
        public List<string> SubscriptionFilters { get; set; }
        
        public List<LogEvent> LogEvents { get; set; }
    }
    
    public class LogEvent {
    
        // --- Properties ---
        public string Id { get; set; }
        
        public object Timestamp { get; set; }
        
        public string Message { get; set; }
    }
}
