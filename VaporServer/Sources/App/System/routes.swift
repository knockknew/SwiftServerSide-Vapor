import Vapor


/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    router.get("vapor") { req in
        
        return "Hello, vapor! "
    }
    
    // Example of configuring a controlle
    try router.register(collection: EmailController())
    try router.register(collection: HTMLController())

    try router.register(collection: UserRouteController())
    try router.register(collection: AuthenRouteController())
    try router.register(collection: RecordController())
    try router.register(collection: WordController())
    
    try router.register(collection: TestController())
    
}
