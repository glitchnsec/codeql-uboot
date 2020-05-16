import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap() {
        // check this against all macro 
        // invocations for ntoh
        // returns true if this is one
        exists(MacroInvocation mi |
            mi.getMacroName().regexpMatch("ntoh(s|l|ll)") and
            this = mi.getExpr()
        ) 

    }
}

from NetworkByteSwap nbs
select nbs