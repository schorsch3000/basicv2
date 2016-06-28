package sixtyfour.elements.commands;

import java.util.List;

import sixtyfour.elements.Type;
import sixtyfour.parser.Atom;
import sixtyfour.parser.Parser;
import sixtyfour.system.Machine;
import sixtyfour.system.ProgramCounter;


public class Close
  extends AbstractCommand
{
  private List<Atom> pars;


  public Close()
  {
    super("CLOSE");
  }


  @Override
  public String parse(String linePart, int lineCnt, int lineNumber, int linePos, boolean lastPos, Machine machine)
  {
    super.parse(linePart, lineCnt, lineNumber, linePos, lastPos, machine);
    term = Parser.getTerm(this, linePart, machine, true);
    pars = Parser.getParameters(term);

    if (pars.size() != 1)
    {
      throw new RuntimeException("Syntax error: " + this);
    }

    return null;
  }


  @Override
  public ProgramCounter execute(Machine machine)
  {
    Atom fileNumber = pars.get(0);
    if (fileNumber.getType().equals(Type.STRING))
    {
      throw new RuntimeException("Type mismatch error: " + this);
    }
    int fn = ((Number) fileNumber.eval(machine)).intValue();

    if (machine.getOutputChannel().getPrintConsumer() != null)
    {
      if (machine.getOutputChannel().getChannel() == fn)
      {
        machine.getOutputChannel().setPrintConsumer(null, 0);
      }
    }

    machine.getDeviceProvider().close(fn);
    return null;
  }

}
