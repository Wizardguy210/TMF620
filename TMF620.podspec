Pod::Spec.new do |s|
    s.source_files = '*.swift'
    s.name = 'TMF620'
    s.authors = 'Yonas Kolb'
    s.summary = '## TMF API Reference: TMF620 - Product Catalog Management
### Release : 20.5 - March 2021
Product Catalog API is one of Catalog Management API Family. Product Catalog API goal is to provide a catalog of products. 
### Operations
Product Catalog API performs the following operations on the resources :
- Retrieve an entity or a collection of entities depending on filter criteria
- Partial update of an entity (including updating rules)
- Create an entity (including default values and creation rules)
- Delete an entity
- Manage notification of events'
    s.version = '4.1.0'
    s.homepage = 'https://github.com/yonaskolb/SwagGen'
    s.source = { :git => 'git@github.com:https://github.com/yonaskolb/SwagGen.git' }
    s.ios.deployment_target = '10.0'
    s.tvos.deployment_target = '10.0'
    s.osx.deployment_target = '10.12'
    s.source_files = 'Sources/**/*.swift'
    s.dependency 'Alamofire', '~> 5.4.4'
end
