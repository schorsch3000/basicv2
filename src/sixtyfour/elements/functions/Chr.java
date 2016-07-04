/*
 * 
 */
package sixtyfour.elements.functions;

import sixtyfour.elements.Type;
import sixtyfour.system.Machine;

/**
 * The Class Chr.
 */
public class Chr extends AbstractFunction {

	/**
	 * Instantiates a new chr.
	 */
	public Chr() {
		super("CHR$");
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#getType()
	 */
	@Override
	public Type getType() {
		return Type.STRING;
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#eval(sixtyfour.system.Machine)
	 */
	@Override
	public Object eval(Machine memory) {
		if (term.getType().equals(Type.STRING)) {
			throw new RuntimeException("Type mismatch error: " + term.getType());
		}
		Integer num = ((Number) term.eval(memory)).intValue();
		if (num < 0 || num > 255) {
			throw new RuntimeException("Illegal quantity error: " + num);
		}
		return Character.toString((char) num.intValue());

	}
}
