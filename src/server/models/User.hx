package models;

import sys.db.Object;
import sys.db.Types;

@:table("users")
class User extends Object {
    public var id:SId;
    public var name:SString<255>;
    public var email:SString<255>;
}