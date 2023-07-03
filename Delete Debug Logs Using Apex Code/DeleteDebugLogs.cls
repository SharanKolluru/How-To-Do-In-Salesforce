List<ApexLog> logLst = [SELECT Id FROM ApexLog limit 100];

for(ApexLog log:logLst){
	Http h = new Http();
	HttpRequest req = new HttpRequest();
	req.setEndpoint(Url.getOrgDomainUrl().toExternalForm()+'/services/data/v56.0/sobjects/ApexLog/'+log.Id);
	req.setMethod('DELETE');
	req.setHeader('Authorization','Bearer '+UserInfo.getSessionId());
	HttpResponse res = h.send(req);
	System.debug('Get Status Code '+res.getStatusCode());
}
