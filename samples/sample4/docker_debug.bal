import ballerina.net.http;
import ballerinax.docker;

endpoint http:ServiceEndpoint helloWorldEP {
    port:9090
};
@docker:configuration {
    enableDebug:true,
    name:"helloworld-debug"
}
@http:serviceConfig {
    basePath:"/helloWorld"
}
service<http:Service> helloWorld bind helloWorldEP {
    sayHello (endpoint outboundEP, http:Request request) {
        http:Response response = {};
        response.setStringPayload("Hello, World from service helloWorld ! ");
        _ = outboundEP -> respond(response);
    }
}

