package sixtyfour.parser.logic;

import java.util.ArrayList;
import java.util.List;

import sixtyfour.elements.Type;
import sixtyfour.system.Machine;

/**
 * The Class LogicTerm.
 */
public class LogicTerm implements LogicBlock {

	/** The not. */
	private boolean not = false;

	/** The blocks. */
	private List<LogicBlock> blocks = new ArrayList<LogicBlock>();
	
	/** The ops. */
	private List<LogicOp> ops = new ArrayList<LogicOp>();
	
	/** The name. */
	private String name;

	/**
	 * Instantiates a new logic term.
	 * 
	 * @param name
	 *            the name
	 */
	public LogicTerm(String name) {
		ops.add(new LogicAnd());
		this.name = name;
	}

	/**
	 * Adds the.
	 * 
	 * @param block
	 *            the block
	 * @param op
	 *            the op
	 */
	public void add(LogicBlock block, LogicOp op) {
		blocks.add(block);
		ops.add(op);
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.logic.LogicBlock#evalToBoolean(sixtyfour.system.Machine)
	 */
	@Override
	public boolean evalToBoolean(Machine machine) {
		if (blocks.size() == 0) {
			return true;
		}
		boolean res = true;
		for (int i = 0; i < blocks.size(); i++) {
			LogicBlock nextBlock = blocks.get(i);
			LogicOp nextOp = ops.get(i);
			if (res || !nextOp.isAnd()) {
				// Skip unnecessary calculations (res is false AND something
				// will always be false anyway)
				res = nextOp.eval(machine, res, nextBlock);
			}
		}

		if (not) {
			res = !res;
		}
		return res;
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.logic.LogicBlock#not()
	 */
	@Override
	public void not() {
		not = !not;
	}

	/**
	 * Gets the name.
	 * 
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * Sets the name.
	 * 
	 * @param name
	 *            the new name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		if (not) {
			sb.append(" NOT ");
		}
		for (int i = 0; i < blocks.size(); i++) {
			LogicBlock nextBlock = blocks.get(i);
			LogicOp nextOp = ops.get(i + 1);
			sb.append("(").append(nextBlock).append(" ").append(i != blocks.size() - 1 ? nextOp : "").append(")");
		}
		return sb.toString();
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#eval(sixtyfour.system.Machine)
	 */
	@Override
	public Object eval(Machine machine) {
		boolean ok = evalToBoolean(machine);
		return ok ? -1 : 0;
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#getType()
	 */
	@Override
	public Type getType() {
		return Type.INTEGER;
	}

	/* (non-Javadoc)
	 * @see sixtyfour.parser.Atom#isTerm()
	 */
	@Override
	public boolean isTerm() {
		return false;
	}

}
