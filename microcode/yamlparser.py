import yaml
from yaml import Loader
from classes import Instruction, CtrlSigs, MicroStep


# Parse a YAML object into a list of Instruction objects
def parse_instructions(f):
    instr_lst = []

    yaml_obj = yaml.load(open(f, 'r').read(), Loader=Loader)
    for instr in yaml_obj['instructions']:
        name = instr['name']
        opcode = instr['opcode']
        if opcode > 63:
            raise Exception("Invalid Opcode: %i" % opcode)
        instr_desc = instr['description']
        operand = bool(instr['requires_operand'])
        instruction = Instruction(name, opcode, instr_desc, operand)
        for key in instr['flags'].keys():
            if key.lower() not in ['other', 'cf', 'zf', 'pf']:
                raise Exception("Invalid Flag: %s" % key)
            for step in instr['flags'][key]:
                sigs = step['signals']
                if sigs is None:
                    sigs = []
                else:
                    new_sigs = []
                    for sig in sigs:
                        new_sigs.append(CtrlSigs[sig])
                    sigs = new_sigs
                step_desc = step['description']
                microstep = MicroStep(sigs, step_desc)
                instruction.insert_step(microstep, key)
        instr_lst.append(instruction)
    return instr_lst
