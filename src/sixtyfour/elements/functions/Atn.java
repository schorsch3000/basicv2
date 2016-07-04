/*
 * 
 */
package sixtyfour.elements.functions;

import sixtyfour.elements.Type;
import sixtyfour.system.Machine;

/**
 * The Class Atn.
 */
public class Atn extends AbstractFunction {

	/**
	 * Instantiates a new atn.
	 */
	public Atn() {
		super("ATN");
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#getType()
	 */
	@Override
	public Type getType() {
		return Type.REAL;
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#eval(sixtyfour.system.Machine)
	 */
	@Override
	public Object eval(Machine memory) {
		if (!term.getType().equals(Type.STRING)) {
			return Float.valueOf((float) Math.atan(((Number) term.eval(memory)).floatValue()));
		}
		throw new RuntimeException("Type mismatch error: " + term.getType());
	}

}
