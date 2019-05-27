Transfer: event({_from: indexed(address), _to: indexed(address), _value: uint256})
Approval: event({_owner: indexed(address), _spender: indexed(address), _value: uint256})

name: public(string[20])
symbol: public(string[5])
decimals: public(uint256)
balances: map(address, uint256)
allowances: map(address, map(address, uint256))
total_supply: uint256
minter: address

@public
def __init__(_name: string[20], _symbol: string[5], _decimals: uint256, _supply: uint256):
    init_supply: uint256 = _supply * 10 **_decimals
    self.name = _name
    self.symbol = _symbol
    self.decimals = _decimals
    self.balances[msg.sender] = init_supply
    self.total_supply = init_supply
    self.minter = msg.sender
    log.Transfer(ZERO_ADDRESS, self.minter, init_supply)

@public
@constant
def totalSupply() -> uint256:
    return self.total_supply

@public
@constant
def balanceOf(_owner: address) -> uint256:
    return self.balances[_owner]

@public
@constant
def allowance(_owner: address, _spender: address) -> uint256:
    return self.allowances[_owner][_spender]

@public
def transfer(_to: address, _value: uint256) -> bool:
    self.balances[msg.sender] -= _value
    self.balances[_to] += _value
    log.Transfer(msg.sender, _to, _value)
    return True

@public
def transferFrom(_from: address, _to: address, _value: uint256) -> bool:
    self.balances[_from] -= _value
    self.balances[_to] += _value
    self.allowances[_from][msg.sender] -= _value
    log.Transfer(_from, _to, _value)
    return True

@public
def approve(_spender: address, _value: uint256)-> bool:
    self.allowances[msg.sender][_spender] = _value
    log.Approval(msg.sender, _spender, _value)
    return True


@public
def mint(_to:address, _value:uint256):
    assert msg.sender == self.minter
    assert _to != ZERO_ADDRESS
    self.total_supply += _value
    self.balances[_to] += _value
    log.Transfer(ZERO_ADDRESS, _to, _value)

@private 
def _burn(_to: address, _value: uint256):
    assert _to != ZERO_ADDRESS
    self.total_supply -= _value
    self.balances[_to] -= _value
    log.Transfer(_to,ZERO_ADDRESS,_value)


@public
def burn(_value: uint256):
    self._burn(msg.sender, _value)

@public
def burnFrom(_to: address, _value: uint256):
    self.allowances[_to][msg.sender] -= _value
    self._burn(_to,_value)
