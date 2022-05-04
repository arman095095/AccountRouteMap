
import Module
import ModelInterfaces

public protocol AccountRouteMap: AnyObject {
    func createAccountModule() -> AccountModule
    func editAccountModule() -> AccountModule
}

public protocol AccountModuleOutput: AnyObject {
    func userSuccessAuthorized(account: AccountModelProtocol)
}

public protocol AccountModuleInput: AnyObject {
    
}

public typealias AccountModule = Module<AccountModuleInput, AccountModuleOutput>
