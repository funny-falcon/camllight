# The standard library

CAMLCOMP=..\camlrun ..\camlcomp
CAMLRUN=..\camlrun
CAMLLINK=..\camlrun ..\camllink
CAMLLIBR=..\camlrun ..\camllibr
CAMLLEX=..\camlrun ..\camllex
CAMLYACC=..\camlyacc -s
CPP=cl -nologo -EP -Dmsdos -Uunix
PERL=perl
COMPFLAGS=-stdlib . -O none
LINKFLAGS=

# The list of all interfaces. Order irrelevant.

STD_INTF= arg.zi bool.zi char.zi string.zi vect.zi eq.zi exc.zi \
    fchar.zi filename.zi float.zi fstring.zi fvect.zi hashtbl.zi \
    int.zi io.zi lexing.zi list.zi obj.zi pair.zi parsing.zi printexc.zi \
    ref.zi sort.zi sys.zi printf.zi stream.zi stack.zi queue.zi random.zi \
    genlex.zi baltree.zi set.zi map.zi gc.zi graphics.zi \
	big_int.zi fnat.zi nat.zi num.zi ratio.zi arstatus.zi

# The list of all implementations. In dependency order.

STD_IMPL= bool.zo eq.zo exc.zo int.zo fstring.zo string.zo fchar.zo \
    char.zo float.zo list.zo fvect.zo vect.zo io.zo pair.zo arg.zo \
    filename.zo hashtbl.zo lexing.zo parsing.zo printexc.zo sort.zo \
    printf.zo stream.zo stack.zo queue.zo format.zo random.zo genlex.zo \
    baltree.zo set.zo map.zo gc.zo graphics.zo \
    int_misc.zo fnat.zo nat.zo big_int.zo arflags.zo ratio.zo \
    num.zo arstatus.zo

GENSOURCES=filename.ml genlex.ml

all: $(STD_INTF) stdlib.zo

stdlib.zo: $(STD_IMPL)
	$(CAMLLIBR) -o stdlib.zo @<<
$(STD_IMPL)
<<

filename.ml: filename.mlp
	$(CPP) filename.mlp > filename.ml

genlex.ml: genlex.mlp
	$(CPP) genlex.mlp > genlex.ml

install:
	copy stdlib.zo $(LIBDIR)
	copy *.zi $(LIBDIR)
	copy *.mli $(LIBDIR)
	del $(LIBDIR)\iparsing.mli
	del $(LIBDIR)\int_misc.*
	del $(LIBDIR)\arflags.*

!include "../tools/make-ml.inc"

### EVERYTHING THAT GOES BEYOND THIS COMMENT IS GENERATED
### DO NOT DELETE THIS LINE
baltree.zo: baltree.zi exc.zi eq.zi bool.zi int.zi 
bool.zo: bool.zi 
eq.zo: eq.zi 
exc.zo: exc.zi 
fchar.zo: fchar.zi fstring.zi int.zi 
filename.zi: sys.zi 
gc.zo: gc.zi printf.zi 
gc.zi: io.zi 
arg.zo: arg.zi eq.zi exc.zi sys.zi bool.zi fstring.zi list.zi io.zi \
    float.zi fvect.zi int.zi 
genlex.zi: stream.zi 
printf.zo: printf.zi eq.zi exc.zi bool.zi fstring.zi list.zi io.zi ref.zi \
    obj.zi float.zi int.zi 
map.zo: map.zi baltree.zi 
int.zo: int.zi eq.zi 
io.zi: sys.zi 
iparsing.zi: parsing.zi obj.zi 
lexing.zo: lexing.zi exc.zi eq.zi fstring.zi io.zi obj.zi int.zi 
lexing.zi: io.zi obj.zi 
pair.zo: pair.zi exc.zi 
parsing.zo: parsing.zi exc.zi eq.zi iparsing.zi fvect.zi ref.zi lexing.zi \
    obj.zi int.zi 
parsing.zi: lexing.zi obj.zi 
printexc.zo: printexc.zi eq.zi exc.zi sys.zi bool.zi io.zi fvect.zi obj.zi \
    int.zi 
queue.zo: queue.zi exc.zi ref.zi int.zi 
random.zo: random.zi eq.zi float.zi fvect.zi ref.zi int.zi 
set.zo: set.zi exc.zi eq.zi baltree.zi 
sort.zo: sort.zi 
stack.zo: stack.zi exc.zi list.zi 
arflags.zo: arflags.zi bool.zi ref.zi int.zi 
arflags.zi: ref.zi 
arstatus.zo: arstatus.zi arflags.zi bool.zi io.zi ref.zi int.zi 
graphics.zo: graphics.zi eq.zi fstring.zi int.zi 
printf.zi: io.zi 
char.zo: char.zi exc.zi eq.zi bool.zi fchar.zi fstring.zi 
float.zo: float.zi exc.zi fstring.zi int.zi 
format.zo: format.zi eq.zi exc.zi bool.zi fstring.zi io.zi obj.zi ref.zi \
    float.zi int.zi 
format.zi: io.zi printf.zi 
fstring.zo: fstring.zi exc.zi eq.zi fchar.zi ref.zi int.zi 
fvect.zo: fvect.zi eq.zi list.zi int.zi 
hashtbl.zo: hashtbl.zi eq.zi exc.zi fvect.zi int.zi 
io.zo: io.zi exc.zi eq.zi sys.zi bool.zi fstring.zi float.zi int.zi 
list.zo: list.zi eq.zi exc.zi bool.zi int.zi 
map.zi: eq.zi 
set.zi: eq.zi 
stream.zo: stream.zi exc.zi eq.zi fstring.zi io.zi ref.zi obj.zi 
stream.zi: io.zi 
string.zo: string.zi exc.zi eq.zi sys.zi bool.zi fstring.zi int.zi 
vect.zo: vect.zi exc.zi eq.zi sys.zi bool.zi fvect.zi int.zi 
filename.zo: filename.zi exc.zi eq.zi bool.zi fchar.zi fstring.zi int.zi 
genlex.zo: genlex.zi hashtbl.zi stream.zi exc.zi eq.zi fchar.zi float.zi \
    fstring.zi list.zi ref.zi int.zi 
big_int.zo: big_int.zi exc.zi eq.zi bool.zi int_misc.zi fchar.zi nat.zi \
    fstring.zi ref.zi fnat.zi pair.zi float.zi int.zi 
big_int.zi: nat.zi 
fnat.zo: fnat.zi exc.zi eq.zi sys.zi bool.zi int_misc.zi fchar.zi \
    fstring.zi ref.zi fvect.zi format.zi int.zi 
nat.zi: fnat.zi 
num.zo: num.zi exc.zi eq.zi bool.zi int_misc.zi big_int.zi ref.zi ratio.zi \
    fnat.zi arflags.zi float.zi format.zi int.zi 
num.zi: ratio.zi nat.zi big_int.zi ref.zi 
ratio.zo: ratio.zi exc.zi eq.zi bool.zi int_misc.zi fchar.zi fstring.zi \
    big_int.zi ref.zi fnat.zi arflags.zi float.zi int.zi 
ratio.zi: nat.zi big_int.zi ref.zi 
nat.zo: nat.zi sys.zi fnat.zi printf.zi 
int_misc.zi: ref.zi 
int_misc.zo: int_misc.zi eq.zi sys.zi bool.zi int.zi 
