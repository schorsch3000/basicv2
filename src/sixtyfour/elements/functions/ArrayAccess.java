package sixtyfour.elements.functions;

import java.util.List;

import sixtyfour.elements.Type;
import sixtyfour.elements.Variable;
import sixtyfour.parser.Atom;
import sixtyfour.parser.Parser;
import sixtyfour.system.Machine;

/**
 * The Class ArrayAccess.
 */
public class ArrayAccess extends AbstractFunction {

	/** The variable name. */
	private String variableName;
	
	/** The variable type. */
	private Type variableType;

	/**
	 * Instantiates a new array access.
	 */
	public ArrayAccess() {
		super("[]");
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#getType()
	 */
	@Override
	public Type getType() {
		return variableType;
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#eval(sixtyfour.system.Machine)
	 */
	@Override
	public Object eval(Machine memory) {
		List<Atom> pars = Parser.getParameters(term);
		int[] pis = new int[pars.size()];
		int cnt = 0;
		for (Atom par : pars) {
			pis[cnt++] = ((Number) par.eval(memory)).intValue();
		}
		Variable vary = memory.getVariable(variableName);
		if (vary == null) {
			// No such array...revert to a constant
			if (variableType.equals(Type.REAL)) {
				return Float.valueOf(0f);
			}
			if (variableType.equals(Type.INTEGER)) {
				return Integer.valueOf(0);
			}
			if (variableType.equals(Type.STRING)) {
				return "";
			}
			return null;
		}

		return vary.getValue(pis);
	}

	/**
	 * Sets the variable.
	 * 
	 * @param variable
	 *            the new variable
	 */
	public void setVariable(Variable variable) {
		this.variableType = variable.getType();
		this.variableName = variable.getName();
	}
}
