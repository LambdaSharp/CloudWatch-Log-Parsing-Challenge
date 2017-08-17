namespace LogParser.Model {

    //--- Classes ---
    public class CloudWatchLogsEvent {
    
        //--- Properties ---
        public AwsLogs AwsLogs { get; set; }
    }
    
    public class AwsLogs {
        
        //--- Properties ---
        public string Data { get; set; }
    }
}
