
import Module
import ModelInterfaces

public protocol AccountRouteMap: AnyObject {
    func createAccountModule(userID: String) -> AccountModule
    func editAccountModule() -> AccountModule
}

public protocol AccountModuleOutput: AnyObject {
    func userSuccessCreated(account: AccountModelProtocol)
    func userSuccessEdited()
}

public protocol AccountModuleInput: AnyObject {
    
}

public typealias AccountModule = Module<AccountModuleInput, AccountModuleOutput>
