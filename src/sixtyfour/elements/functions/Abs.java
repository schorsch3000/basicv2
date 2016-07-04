package sixtyfour.elements.functions;

import sixtyfour.elements.Type;
import sixtyfour.system.Machine;

/**
 * The Class Abs.
 */
public class Abs extends AbstractFunction {
	
	/**
	 * Instantiates a new abs.
	 */
	public Abs() {
		super("ABS");
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#getType()
	 */
	@Override
	public Type getType() {
		return term.getType();
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#eval(sixtyfour.system.Machine)
	 */
	@Override
	public Object eval(Machine memory) {
		if (!term.getType().equals(Type.STRING)) {
			float val = Math.abs(((Number) term.eval(memory)).floatValue());
			if (term.getType().equals(Type.REAL)) {
				return val;
			} else {
				return (int) val;
			}
		}
		throw new RuntimeException("Formula too complex error: " + this);
	}

}
