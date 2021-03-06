??2
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??+
?
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_4/gamma
?
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_4/beta
?
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:*
dtype0
?
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_4/moving_mean
?
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:*
dtype0
?
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_4/moving_variance
?
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:*
dtype0
?
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@*
dtype0
?
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_5/gamma
?
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_5/beta
?
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes
:@*
dtype0
?
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_5/moving_mean
?
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes
:@*
dtype0
?
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_5/moving_variance
?
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_5/kernel
|
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*'
_output_shapes
:@?*
dtype0
?
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_6/gamma
?
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_6/beta
?
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_6/moving_mean
?
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_6/moving_variance
?
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_6/kernel
}
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_7/gamma
?
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_7/beta
?
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_7/moving_mean
?
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_7/moving_variance
?
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_7/kernel
}
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*(
_output_shapes
:??*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	?@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@ *
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
: *
dtype0
p

nav/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_name
nav/kernel
i
nav/kernel/Read/ReadVariableOpReadVariableOp
nav/kernel*
_output_shapes

: *
dtype0
h
nav/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
nav/bias
a
nav/bias/Read/ReadVariableOpReadVariableOpnav/bias*
_output_shapes
:*
dtype0
r
side/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_nameside/kernel
k
side/kernel/Read/ReadVariableOpReadVariableOpside/kernel*
_output_shapes

: *
dtype0
j
	side/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	side/bias
c
side/bias/Read/ReadVariableOpReadVariableOp	side/bias*
_output_shapes
:*
dtype0
v
footer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namefooter/kernel
o
!footer/kernel/Read/ReadVariableOpReadVariableOpfooter/kernel*
_output_shapes

: *
dtype0
n
footer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namefooter/bias
g
footer/bias/Read/ReadVariableOpReadVariableOpfooter/bias*
_output_shapes
:*
dtype0
r
main/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namemain/kernel
k
main/kernel/Read/ReadVariableOpReadVariableOpmain/kernel*
_output_shapes

: *
dtype0
j
	main/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	main/bias
c
main/bias/Read/ReadVariableOpReadVariableOp	main/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
z
false_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefalse_positives_1
s
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes
:*
dtype0
x
true_positives_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_2
q
$true_positives_2/Read/ReadVariableOpReadVariableOptrue_positives_2*
_output_shapes
:*
dtype0
z
false_positives_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefalse_positives_2
s
%false_positives_2/Read/ReadVariableOpReadVariableOpfalse_positives_2*
_output_shapes
:*
dtype0
b
total_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_5
[
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_output_shapes
: *
dtype0
b
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0
?
'RMSprop/batch_normalization_4/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'RMSprop/batch_normalization_4/gamma/rms
?
;RMSprop/batch_normalization_4/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_4/gamma/rms*
_output_shapes
:*
dtype0
?
&RMSprop/batch_normalization_4/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&RMSprop/batch_normalization_4/beta/rms
?
:RMSprop/batch_normalization_4/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_4/beta/rms*
_output_shapes
:*
dtype0
?
RMSprop/conv2d_4/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameRMSprop/conv2d_4/kernel/rms
?
/RMSprop/conv2d_4/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_4/kernel/rms*&
_output_shapes
:@*
dtype0
?
'RMSprop/batch_normalization_5/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'RMSprop/batch_normalization_5/gamma/rms
?
;RMSprop/batch_normalization_5/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_5/gamma/rms*
_output_shapes
:@*
dtype0
?
&RMSprop/batch_normalization_5/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&RMSprop/batch_normalization_5/beta/rms
?
:RMSprop/batch_normalization_5/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_5/beta/rms*
_output_shapes
:@*
dtype0
?
RMSprop/conv2d_5/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*,
shared_nameRMSprop/conv2d_5/kernel/rms
?
/RMSprop/conv2d_5/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_5/kernel/rms*'
_output_shapes
:@?*
dtype0
?
'RMSprop/batch_normalization_6/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'RMSprop/batch_normalization_6/gamma/rms
?
;RMSprop/batch_normalization_6/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_6/gamma/rms*
_output_shapes	
:?*
dtype0
?
&RMSprop/batch_normalization_6/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&RMSprop/batch_normalization_6/beta/rms
?
:RMSprop/batch_normalization_6/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_6/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/conv2d_6/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*,
shared_nameRMSprop/conv2d_6/kernel/rms
?
/RMSprop/conv2d_6/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_6/kernel/rms*(
_output_shapes
:??*
dtype0
?
'RMSprop/batch_normalization_7/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'RMSprop/batch_normalization_7/gamma/rms
?
;RMSprop/batch_normalization_7/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_7/gamma/rms*
_output_shapes	
:?*
dtype0
?
&RMSprop/batch_normalization_7/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&RMSprop/batch_normalization_7/beta/rms
?
:RMSprop/batch_normalization_7/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_7/beta/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/conv2d_7/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*,
shared_nameRMSprop/conv2d_7/kernel/rms
?
/RMSprop/conv2d_7/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_7/kernel/rms*(
_output_shapes
:??*
dtype0
?
RMSprop/dense_2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*+
shared_nameRMSprop/dense_2/kernel/rms
?
.RMSprop/dense_2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_2/kernel/rms*
_output_shapes
:	?@*
dtype0
?
RMSprop/dense_2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameRMSprop/dense_2/bias/rms
?
,RMSprop/dense_2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_2/bias/rms*
_output_shapes
:@*
dtype0
?
RMSprop/dense_3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *+
shared_nameRMSprop/dense_3/kernel/rms
?
.RMSprop/dense_3/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_3/kernel/rms*
_output_shapes

:@ *
dtype0
?
RMSprop/dense_3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameRMSprop/dense_3/bias/rms
?
,RMSprop/dense_3/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_3/bias/rms*
_output_shapes
: *
dtype0
?
RMSprop/nav/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameRMSprop/nav/kernel/rms
?
*RMSprop/nav/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/nav/kernel/rms*
_output_shapes

: *
dtype0
?
RMSprop/nav/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameRMSprop/nav/bias/rms
y
(RMSprop/nav/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/nav/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/side/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameRMSprop/side/kernel/rms
?
+RMSprop/side/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/side/kernel/rms*
_output_shapes

: *
dtype0
?
RMSprop/side/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameRMSprop/side/bias/rms
{
)RMSprop/side/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/side/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/footer/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_nameRMSprop/footer/kernel/rms
?
-RMSprop/footer/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/footer/kernel/rms*
_output_shapes

: *
dtype0
?
RMSprop/footer/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameRMSprop/footer/bias/rms

+RMSprop/footer/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/footer/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/main/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameRMSprop/main/kernel/rms
?
+RMSprop/main/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/main/kernel/rms*
_output_shapes

: *
dtype0
?
RMSprop/main/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameRMSprop/main/bias/rms
{
)RMSprop/main/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/main/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*؝
value͝Bɝ B??
?
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
layer-17
layer-18
layer-19
layer_with_weights-8
layer-20
layer_with_weights-9
layer-21
layer_with_weights-10
layer-22
layer_with_weights-11
layer-23
layer_with_weights-12
layer-24
layer_with_weights-13
layer-25
	optimizer
loss
	variables
trainable_variables
regularization_losses
 	keras_api
!
signatures
 
l
"layer-0
#layer-1
$	variables
%trainable_variables
&regularization_losses
'	keras_api
l
(layer-0
)layer-1
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?
.axis
	/gamma
0beta
1moving_mean
2moving_variance
3	variables
4trainable_variables
5regularization_losses
6	keras_api
^

7kernel
8	variables
9trainable_variables
:regularization_losses
;	keras_api
R
<	variables
=trainable_variables
>regularization_losses
?	keras_api
R
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
?
Daxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
^

Mkernel
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
R
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
?
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_	variables
`trainable_variables
aregularization_losses
b	keras_api
^

ckernel
d	variables
etrainable_variables
fregularization_losses
g	keras_api
R
h	variables
itrainable_variables
jregularization_losses
k	keras_api
R
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
?
paxis
	qgamma
rbeta
smoving_mean
tmoving_variance
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
^

ykernel
z	variables
{trainable_variables
|regularization_losses
}	keras_api
T
~	variables
trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?iter

?decay
?learning_rate
?momentum
?rho
/rms?
0rms?
7rms?
Erms?
Frms?
Mrms?
[rms?
\rms?
crms?
qrms?
rrms?
yrms??rms??rms??rms??rms??rms??rms??rms??rms??rms??rms??rms??rms?
 
?
/0
01
12
23
74
E5
F6
G7
H8
M9
[10
\11
]12
^13
c14
q15
r16
s17
t18
y19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?
/0
01
72
E3
F4
M5
[6
\7
c8
q9
r10
y11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
 
?
	variables
?metrics
trainable_variables
?layers
regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layer_metrics
 

?	keras_api

?	keras_api
 
 
 
?
$	variables
?metrics
%trainable_variables
?layers
&regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layer_metrics

	?_rng
?	keras_api

	?_rng
?	keras_api
 
 
 
?
*	variables
?metrics
+trainable_variables
?layers
,regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

/0
01
12
23

/0
01
 
?
3	variables
?non_trainable_variables
?metrics
4trainable_variables
?layers
5regularization_losses
 ?layer_regularization_losses
?layer_metrics
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE

70

70
 
?
8	variables
?non_trainable_variables
?metrics
9trainable_variables
?layers
:regularization_losses
 ?layer_regularization_losses
?layer_metrics
 
 
 
?
<	variables
?non_trainable_variables
?metrics
=trainable_variables
?layers
>regularization_losses
 ?layer_regularization_losses
?layer_metrics
 
 
 
?
@	variables
?non_trainable_variables
?metrics
Atrainable_variables
?layers
Bregularization_losses
 ?layer_regularization_losses
?layer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

E0
F1
G2
H3

E0
F1
 
?
I	variables
?non_trainable_variables
?metrics
Jtrainable_variables
?layers
Kregularization_losses
 ?layer_regularization_losses
?layer_metrics
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE

M0

M0
 
?
N	variables
?non_trainable_variables
?metrics
Otrainable_variables
?layers
Pregularization_losses
 ?layer_regularization_losses
?layer_metrics
 
 
 
?
R	variables
?non_trainable_variables
?metrics
Strainable_variables
?layers
Tregularization_losses
 ?layer_regularization_losses
?layer_metrics
 
 
 
?
V	variables
?non_trainable_variables
?metrics
Wtrainable_variables
?layers
Xregularization_losses
 ?layer_regularization_losses
?layer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

[0
\1
]2
^3

[0
\1
 
?
_	variables
?non_trainable_variables
?metrics
`trainable_variables
?layers
aregularization_losses
 ?layer_regularization_losses
?layer_metrics
[Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE

c0

c0
 
?
d	variables
?non_trainable_variables
?metrics
etrainable_variables
?layers
fregularization_losses
 ?layer_regularization_losses
?layer_metrics
 
 
 
?
h	variables
?non_trainable_variables
?metrics
itrainable_variables
?layers
jregularization_losses
 ?layer_regularization_losses
?layer_metrics
 
 
 
?
l	variables
?non_trainable_variables
?metrics
mtrainable_variables
?layers
nregularization_losses
 ?layer_regularization_losses
?layer_metrics
 
fd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

q0
r1
s2
t3

q0
r1
 
?
u	variables
?non_trainable_variables
?metrics
vtrainable_variables
?layers
wregularization_losses
 ?layer_regularization_losses
?layer_metrics
[Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE

y0

y0
 
?
z	variables
?non_trainable_variables
?metrics
{trainable_variables
?layers
|regularization_losses
 ?layer_regularization_losses
?layer_metrics
 
 
 
?
~	variables
?non_trainable_variables
?metrics
trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
 
 
 
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
 
 
 
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
WU
VARIABLE_VALUE
nav/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEnav/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
XV
VARIABLE_VALUEside/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE	side/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
ZX
VARIABLE_VALUEfooter/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEfooter/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
XV
VARIABLE_VALUEmain/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE	main/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
H
?0
?1
?2
?3
?4
?5
?6
?7
?8
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
 
8
10
21
G2
H3
]4
^5
s6
t7
 
 
 
 

"0
#1
 
 
 

?
_state_var
 

?
_state_var
 
 

(0
)1
 
 
 

10
21
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

G0
H1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

]0
^1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

s0
t1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
XV
VARIABLE_VALUEVariable:layer-2/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_1:layer-2/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/6/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/6/false_positives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
ca
VARIABLE_VALUEtrue_positives_2=keras_api/metrics/7/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_positives_2>keras_api/metrics/7/false_positives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_54keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_54keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE'RMSprop/batch_normalization_4/gamma/rmsSlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&RMSprop/batch_normalization_4/beta/rmsRlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_4/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_5/gamma/rmsSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&RMSprop/batch_normalization_5/beta/rmsRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_5/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_6/gamma/rmsSlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&RMSprop/batch_normalization_6/beta/rmsRlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_6/kernel/rmsTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'RMSprop/batch_normalization_7/gamma/rmsSlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&RMSprop/batch_normalization_7/beta/rmsRlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_7/kernel/rmsTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_2/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUERMSprop/dense_2/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_3/kernel/rmsTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUERMSprop/dense_3/bias/rmsRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/nav/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUERMSprop/nav/bias/rmsSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/side/kernel/rmsUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUERMSprop/side/bias/rmsSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/footer/kernel/rmsUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUERMSprop/footer/bias/rmsSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/main/kernel/rmsUlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUERMSprop/main/bias/rmsSlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_4/kernelbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d_5/kernelbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_6/kernelbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_7/kerneldense_2/kerneldense_2/biasdense_3/kerneldense_3/biasmain/kernel	main/biasfooter/kernelfooter/biasside/kernel	side/bias
nav/kernelnav/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *`
_output_shapesN
L:?????????:?????????:?????????:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_146854
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpnav/kernel/Read/ReadVariableOpnav/bias/Read/ReadVariableOpside/kernel/Read/ReadVariableOpside/bias/Read/ReadVariableOp!footer/kernel/Read/ReadVariableOpfooter/bias/Read/ReadVariableOpmain/kernel/Read/ReadVariableOpmain/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp%false_positives_1/Read/ReadVariableOp$true_positives_2/Read/ReadVariableOp%false_positives_2/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOp;RMSprop/batch_normalization_4/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_4/beta/rms/Read/ReadVariableOp/RMSprop/conv2d_4/kernel/rms/Read/ReadVariableOp;RMSprop/batch_normalization_5/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_5/beta/rms/Read/ReadVariableOp/RMSprop/conv2d_5/kernel/rms/Read/ReadVariableOp;RMSprop/batch_normalization_6/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_6/beta/rms/Read/ReadVariableOp/RMSprop/conv2d_6/kernel/rms/Read/ReadVariableOp;RMSprop/batch_normalization_7/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_7/beta/rms/Read/ReadVariableOp/RMSprop/conv2d_7/kernel/rms/Read/ReadVariableOp.RMSprop/dense_2/kernel/rms/Read/ReadVariableOp,RMSprop/dense_2/bias/rms/Read/ReadVariableOp.RMSprop/dense_3/kernel/rms/Read/ReadVariableOp,RMSprop/dense_3/bias/rms/Read/ReadVariableOp*RMSprop/nav/kernel/rms/Read/ReadVariableOp(RMSprop/nav/bias/rms/Read/ReadVariableOp+RMSprop/side/kernel/rms/Read/ReadVariableOp)RMSprop/side/bias/rms/Read/ReadVariableOp-RMSprop/footer/kernel/rms/Read/ReadVariableOp+RMSprop/footer/bias/rms/Read/ReadVariableOp+RMSprop/main/kernel/rms/Read/ReadVariableOp)RMSprop/main/bias/rms/Read/ReadVariableOpConst*^
TinW
U2S			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_149191
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_4/kernelbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d_5/kernelbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_6/kernelbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_7/kerneldense_2/kerneldense_2/biasdense_3/kerneldense_3/bias
nav/kernelnav/biasside/kernel	side/biasfooter/kernelfooter/biasmain/kernel	main/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhoVariable
Variable_1totalcounttotal_1count_1total_2count_2total_3count_3total_4count_4true_positivesfalse_positivestrue_positives_1false_positives_1true_positives_2false_positives_2total_5count_5'RMSprop/batch_normalization_4/gamma/rms&RMSprop/batch_normalization_4/beta/rmsRMSprop/conv2d_4/kernel/rms'RMSprop/batch_normalization_5/gamma/rms&RMSprop/batch_normalization_5/beta/rmsRMSprop/conv2d_5/kernel/rms'RMSprop/batch_normalization_6/gamma/rms&RMSprop/batch_normalization_6/beta/rmsRMSprop/conv2d_6/kernel/rms'RMSprop/batch_normalization_7/gamma/rms&RMSprop/batch_normalization_7/beta/rmsRMSprop/conv2d_7/kernel/rmsRMSprop/dense_2/kernel/rmsRMSprop/dense_2/bias/rmsRMSprop/dense_3/kernel/rmsRMSprop/dense_3/bias/rmsRMSprop/nav/kernel/rmsRMSprop/nav/bias/rmsRMSprop/side/kernel/rmsRMSprop/side/bias/rmsRMSprop/footer/kernel/rmsRMSprop/footer/bias/rmsRMSprop/main/kernel/rmsRMSprop/main/bias/rms*]
TinV
T2R*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_149444??(
?
s
H__inference_sequential_1_layer_call_and_return_conditional_losses_147823
random_rotation_input
identitys
IdentityIdentityrandom_rotation_input*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:h d
1
_output_shapes
:???????????
/
_user_specified_namerandom_rotation_input
?
?
6__inference_batch_normalization_5_layer_call_fn_148354

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????TT@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1454842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????TT@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????TT@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????TT@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148635

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_145333

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_model_1_simple_model_layer_call_fn_146503	
input
unknown:	
	unknown_0:	
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@%

unknown_10:@?

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:	?&

unknown_15:??

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:	?&

unknown_20:??

unknown_21:	?@

unknown_22:@

unknown_23:@ 

unknown_24: 

unknown_25: 

unknown_26:

unknown_27: 

unknown_28:

unknown_29: 

unknown_30:

unknown_31: 

unknown_32:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *`
_output_shapesN
L:?????????:?????????:?????????:?????????*:
_read_only_resource_inputs
	 !"*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_1463472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_148728

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_145961

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
W
;__inference_global_average_pooling2d_1_layer_call_fn_145406

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_1454002
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
H__inference_activation_6_layer_call_and_return_conditional_losses_145568

inputs
identityT
EluEluinputs*
T0*0
_output_shapes
:?????????''?2
Elun
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:?????????''?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????''?:X T
0
_output_shapes
:?????????''?
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148315

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????TT@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????TT@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????TT@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????TT@
 
_user_specified_nameinputs
?
d
H__inference_activation_5_layer_call_and_return_conditional_losses_145516

inputs
identityT
EluEluinputs*
T0*0
_output_shapes
:?????????RR?2
Elun
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:?????????RR?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????RR?:X T
0
_output_shapes
:?????????RR?
 
_user_specified_nameinputs
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_148055
random_rotation_inputF
8random_rotation_stateful_uniform_rngreadandskip_resource:	B
4random_zoom_stateful_uniform_rngreadandskip_resource:	
identity??/random_rotation/stateful_uniform/RngReadAndSkip?+random_zoom/stateful_uniform/RngReadAndSkips
random_rotation/ShapeShaperandom_rotation_input*
T0*
_output_shapes
:2
random_rotation/Shape?
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#random_rotation/strided_slice/stack?
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_1?
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_2?
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_rotation/strided_slice?
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_1/stack?
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_1?
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_2?
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_1?
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast?
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_2/stack?
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_1?
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_2?
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_2?
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast_1?
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&random_rotation/stateful_uniform/shape?
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$random_rotation/stateful_uniform/min?
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$random_rotation/stateful_uniform/max?
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation/stateful_uniform/Const?
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2'
%random_rotation/stateful_uniform/Prod?
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_rotation/stateful_uniform/Cast/x?
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'random_rotation/stateful_uniform/Cast_1?
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:21
/random_rotation/stateful_uniform/RngReadAndSkip?
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4random_rotation/stateful_uniform/strided_slice/stack?
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_1?
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_2?
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask20
.random_rotation/stateful_uniform/strided_slice?
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02*
(random_rotation/stateful_uniform/Bitcast?
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice_1/stack?
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_1?
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_2?
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:22
0random_rotation/stateful_uniform/strided_slice_1?
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation/stateful_uniform/Bitcast_1?
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2?
=random_rotation/stateful_uniform/StatelessRandomUniformV2/alg?
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????2;
9random_rotation/stateful_uniform/StatelessRandomUniformV2?
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_rotation/stateful_uniform/sub?
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2&
$random_rotation/stateful_uniform/mul?
 random_rotation/stateful_uniformAdd(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2"
 random_rotation/stateful_uniform?
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%random_rotation/rotation_matrix/sub/y?
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2%
#random_rotation/rotation_matrix/sub?
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Cos?
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_1/y?
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_1?
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/mul?
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Sin?
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_2/y?
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_2?
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_1?
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_3?
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_4?
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)random_rotation/rotation_matrix/truediv/y?
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2)
'random_rotation/rotation_matrix/truediv?
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_5/y?
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_5?
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_1?
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_6/y?
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_6?
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_2?
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_1?
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_7/y?
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_7?
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_3?
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/add?
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_8?
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation/rotation_matrix/truediv_1/y?
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation/rotation_matrix/truediv_1?
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:2'
%random_rotation/rotation_matrix/Shape?
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3random_rotation/rotation_matrix/strided_slice/stack?
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_1?
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_2?
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-random_rotation/rotation_matrix/strided_slice?
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_2?
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_1/stack?
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_1/stack_1?
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_1/stack_2?
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_1?
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_2?
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_2/stack?
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_2/stack_1?
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_2/stack_2?
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_2?
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Neg?
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_3/stack?
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_3/stack_1?
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_3/stack_2?
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_3?
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_3?
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_4/stack?
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_4/stack_1?
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_4/stack_2?
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_4?
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_3?
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_5/stack?
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_5/stack_1?
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_5/stack_2?
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_5?
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_6/stack?
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_6/stack_1?
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_6/stack_2?
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_6?
+random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/zeros/mul/y?
)random_rotation/rotation_matrix/zeros/mulMul6random_rotation/rotation_matrix/strided_slice:output:04random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2+
)random_rotation/rotation_matrix/zeros/mul?
,random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2.
,random_rotation/rotation_matrix/zeros/Less/y?
*random_rotation/rotation_matrix/zeros/LessLess-random_rotation/rotation_matrix/zeros/mul:z:05random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2,
*random_rotation/rotation_matrix/zeros/Less?
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation/rotation_matrix/zeros/packed/1?
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,random_rotation/rotation_matrix/zeros/packed?
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+random_rotation/rotation_matrix/zeros/Const?
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/zeros?
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/concat/axis?
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2(
&random_rotation/rotation_matrix/concat?
random_rotation/transform/ShapeShaperandom_rotation_input*
T0*
_output_shapes
:2!
random_rotation/transform/Shape?
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_rotation/transform/strided_slice/stack?
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_1?
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_2?
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'random_rotation/transform/strided_slice?
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$random_rotation/transform/fill_value?
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3random_rotation_input/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR26
4random_rotation/transform/ImageProjectiveTransformV3?
random_zoom/ShapeShapeIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom/Shape?
random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
random_zoom/strided_slice/stack?
!random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice/stack_1?
!random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice/stack_2?
random_zoom/strided_sliceStridedSlicerandom_zoom/Shape:output:0(random_zoom/strided_slice/stack:output:0*random_zoom/strided_slice/stack_1:output:0*random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice?
!random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice_1/stack?
#random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_1/stack_1?
#random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_1/stack_2?
random_zoom/strided_slice_1StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_1/stack:output:0,random_zoom/strided_slice_1/stack_1:output:0,random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice_1?
random_zoom/CastCast$random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom/Cast?
!random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice_2/stack?
#random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_2/stack_1?
#random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_2/stack_2?
random_zoom/strided_slice_2StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_2/stack:output:0,random_zoom/strided_slice_2/stack_1:output:0,random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice_2?
random_zoom/Cast_1Cast$random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom/Cast_1?
$random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$random_zoom/stateful_uniform/shape/1?
"random_zoom/stateful_uniform/shapePack"random_zoom/strided_slice:output:0-random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"random_zoom/stateful_uniform/shape?
 random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *33s?2"
 random_zoom/stateful_uniform/min?
 random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff??2"
 random_zoom/stateful_uniform/max?
"random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"random_zoom/stateful_uniform/Const?
!random_zoom/stateful_uniform/ProdProd+random_zoom/stateful_uniform/shape:output:0+random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2#
!random_zoom/stateful_uniform/Prod?
#random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/stateful_uniform/Cast/x?
#random_zoom/stateful_uniform/Cast_1Cast*random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#random_zoom/stateful_uniform/Cast_1?
+random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkip4random_zoom_stateful_uniform_rngreadandskip_resource,random_zoom/stateful_uniform/Cast/x:output:0'random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:2-
+random_zoom/stateful_uniform/RngReadAndSkip?
0random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0random_zoom/stateful_uniform/strided_slice/stack?
2random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice/stack_1?
2random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice/stack_2?
*random_zoom/stateful_uniform/strided_sliceStridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:09random_zoom/stateful_uniform/strided_slice/stack:output:0;random_zoom/stateful_uniform/strided_slice/stack_1:output:0;random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2,
*random_zoom/stateful_uniform/strided_slice?
$random_zoom/stateful_uniform/BitcastBitcast3random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02&
$random_zoom/stateful_uniform/Bitcast?
2random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice_1/stack?
4random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom/stateful_uniform/strided_slice_1/stack_1?
4random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom/stateful_uniform/strided_slice_1/stack_2?
,random_zoom/stateful_uniform/strided_slice_1StridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:0;random_zoom/stateful_uniform/strided_slice_1/stack:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2.
,random_zoom/stateful_uniform/strided_slice_1?
&random_zoom/stateful_uniform/Bitcast_1Bitcast5random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom/stateful_uniform/Bitcast_1?
9random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2;
9random_zoom/stateful_uniform/StatelessRandomUniformV2/alg?
5random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2+random_zoom/stateful_uniform/shape:output:0/random_zoom/stateful_uniform/Bitcast_1:output:0-random_zoom/stateful_uniform/Bitcast:output:0Brandom_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????27
5random_zoom/stateful_uniform/StatelessRandomUniformV2?
 random_zoom/stateful_uniform/subSub)random_zoom/stateful_uniform/max:output:0)random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2"
 random_zoom/stateful_uniform/sub?
 random_zoom/stateful_uniform/mulMul>random_zoom/stateful_uniform/StatelessRandomUniformV2:output:0$random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2"
 random_zoom/stateful_uniform/mul?
random_zoom/stateful_uniformAdd$random_zoom/stateful_uniform/mul:z:0)random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/stateful_uniformt
random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom/concat/axis?
random_zoom/concatConcatV2 random_zoom/stateful_uniform:z:0 random_zoom/stateful_uniform:z:0 random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom/concat?
random_zoom/zoom_matrix/ShapeShaperandom_zoom/concat:output:0*
T0*
_output_shapes
:2
random_zoom/zoom_matrix/Shape?
+random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_zoom/zoom_matrix/strided_slice/stack?
-random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom/zoom_matrix/strided_slice/stack_1?
-random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom/zoom_matrix/strided_slice/stack_2?
%random_zoom/zoom_matrix/strided_sliceStridedSlice&random_zoom/zoom_matrix/Shape:output:04random_zoom/zoom_matrix/strided_slice/stack:output:06random_zoom/zoom_matrix/strided_slice/stack_1:output:06random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%random_zoom/zoom_matrix/strided_slice?
random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_zoom/zoom_matrix/sub/y?
random_zoom/zoom_matrix/subSubrandom_zoom/Cast_1:y:0&random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom/zoom_matrix/sub?
!random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!random_zoom/zoom_matrix/truediv/y?
random_zoom/zoom_matrix/truedivRealDivrandom_zoom/zoom_matrix/sub:z:0*random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2!
random_zoom/zoom_matrix/truediv?
-random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2/
-random_zoom/zoom_matrix/strided_slice_1/stack?
/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_1/stack_1?
/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_1/stack_2?
'random_zoom/zoom_matrix/strided_slice_1StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_1/stack:output:08random_zoom/zoom_matrix/strided_slice_1/stack_1:output:08random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_1?
random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom/zoom_matrix/sub_1/x?
random_zoom/zoom_matrix/sub_1Sub(random_zoom/zoom_matrix/sub_1/x:output:00random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/sub_1?
random_zoom/zoom_matrix/mulMul#random_zoom/zoom_matrix/truediv:z:0!random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/mul?
random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom/zoom_matrix/sub_2/y?
random_zoom/zoom_matrix/sub_2Subrandom_zoom/Cast:y:0(random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
random_zoom/zoom_matrix/sub_2?
#random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom/zoom_matrix/truediv_1/y?
!random_zoom/zoom_matrix/truediv_1RealDiv!random_zoom/zoom_matrix/sub_2:z:0,random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom/zoom_matrix/truediv_1?
-random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2/
-random_zoom/zoom_matrix/strided_slice_2/stack?
/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_2/stack_1?
/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_2/stack_2?
'random_zoom/zoom_matrix/strided_slice_2StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_2/stack:output:08random_zoom/zoom_matrix/strided_slice_2/stack_1:output:08random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_2?
random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom/zoom_matrix/sub_3/x?
random_zoom/zoom_matrix/sub_3Sub(random_zoom/zoom_matrix/sub_3/x:output:00random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/sub_3?
random_zoom/zoom_matrix/mul_1Mul%random_zoom/zoom_matrix/truediv_1:z:0!random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/mul_1?
-random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2/
-random_zoom/zoom_matrix/strided_slice_3/stack?
/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_3/stack_1?
/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_3/stack_2?
'random_zoom/zoom_matrix/strided_slice_3StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_3/stack:output:08random_zoom/zoom_matrix/strided_slice_3/stack_1:output:08random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_3?
#random_zoom/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/zoom_matrix/zeros/mul/y?
!random_zoom/zoom_matrix/zeros/mulMul.random_zoom/zoom_matrix/strided_slice:output:0,random_zoom/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom/zoom_matrix/zeros/mul?
$random_zoom/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$random_zoom/zoom_matrix/zeros/Less/y?
"random_zoom/zoom_matrix/zeros/LessLess%random_zoom/zoom_matrix/zeros/mul:z:0-random_zoom/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"random_zoom/zoom_matrix/zeros/Less?
&random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom/zoom_matrix/zeros/packed/1?
$random_zoom/zoom_matrix/zeros/packedPack.random_zoom/zoom_matrix/strided_slice:output:0/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom/zoom_matrix/zeros/packed?
#random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#random_zoom/zoom_matrix/zeros/Const?
random_zoom/zoom_matrix/zerosFill-random_zoom/zoom_matrix/zeros/packed:output:0,random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/zeros?
%random_zoom/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom/zoom_matrix/zeros_1/mul/y?
#random_zoom/zoom_matrix/zeros_1/mulMul.random_zoom/zoom_matrix/strided_slice:output:0.random_zoom/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom/zoom_matrix/zeros_1/mul?
&random_zoom/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom/zoom_matrix/zeros_1/Less/y?
$random_zoom/zoom_matrix/zeros_1/LessLess'random_zoom/zoom_matrix/zeros_1/mul:z:0/random_zoom/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom/zoom_matrix/zeros_1/Less?
(random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom/zoom_matrix/zeros_1/packed/1?
&random_zoom/zoom_matrix/zeros_1/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom/zoom_matrix/zeros_1/packed?
%random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom/zoom_matrix/zeros_1/Const?
random_zoom/zoom_matrix/zeros_1Fill/random_zoom/zoom_matrix/zeros_1/packed:output:0.random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom/zoom_matrix/zeros_1?
-random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2/
-random_zoom/zoom_matrix/strided_slice_4/stack?
/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_4/stack_1?
/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_4/stack_2?
'random_zoom/zoom_matrix/strided_slice_4StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_4/stack:output:08random_zoom/zoom_matrix/strided_slice_4/stack_1:output:08random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_4?
%random_zoom/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom/zoom_matrix/zeros_2/mul/y?
#random_zoom/zoom_matrix/zeros_2/mulMul.random_zoom/zoom_matrix/strided_slice:output:0.random_zoom/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom/zoom_matrix/zeros_2/mul?
&random_zoom/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom/zoom_matrix/zeros_2/Less/y?
$random_zoom/zoom_matrix/zeros_2/LessLess'random_zoom/zoom_matrix/zeros_2/mul:z:0/random_zoom/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom/zoom_matrix/zeros_2/Less?
(random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom/zoom_matrix/zeros_2/packed/1?
&random_zoom/zoom_matrix/zeros_2/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom/zoom_matrix/zeros_2/packed?
%random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom/zoom_matrix/zeros_2/Const?
random_zoom/zoom_matrix/zeros_2Fill/random_zoom/zoom_matrix/zeros_2/packed:output:0.random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom/zoom_matrix/zeros_2?
#random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/zoom_matrix/concat/axis?
random_zoom/zoom_matrix/concatConcatV20random_zoom/zoom_matrix/strided_slice_3:output:0&random_zoom/zoom_matrix/zeros:output:0random_zoom/zoom_matrix/mul:z:0(random_zoom/zoom_matrix/zeros_1:output:00random_zoom/zoom_matrix/strided_slice_4:output:0!random_zoom/zoom_matrix/mul_1:z:0(random_zoom/zoom_matrix/zeros_2:output:0,random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2 
random_zoom/zoom_matrix/concat?
random_zoom/transform/ShapeShapeIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom/transform/Shape?
)random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)random_zoom/transform/strided_slice/stack?
+random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom/transform/strided_slice/stack_1?
+random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom/transform/strided_slice/stack_2?
#random_zoom/transform/strided_sliceStridedSlice$random_zoom/transform/Shape:output:02random_zoom/transform/strided_slice/stack:output:04random_zoom/transform/strided_slice/stack_1:output:04random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2%
#random_zoom/transform/strided_slice?
 random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 random_zoom/transform/fill_value?
0random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Irandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0'random_zoom/zoom_matrix/concat:output:0,random_zoom/transform/strided_slice:output:0)random_zoom/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR22
0random_zoom/transform/ImageProjectiveTransformV3?
IdentityIdentityErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:00^random_rotation/stateful_uniform/RngReadAndSkip,^random_zoom/stateful_uniform/RngReadAndSkip*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip2Z
+random_zoom/stateful_uniform/RngReadAndSkip+random_zoom/stateful_uniform/RngReadAndSkip:h d
1
_output_shapes
:???????????
/
_user_specified_namerandom_rotation_input
?

?
@__inference_side_layer_call_and_return_conditional_losses_145707

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_5_layer_call_and_return_conditional_losses_145507

inputs9
conv2d_readvariableop_resource:@?
identity??Conv2D/ReadVariableOp?1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????RR?*
paddingVALID*
strides
2
Conv2D?
1conv2d_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype023
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_5/kernel/Regularizer/SquareSquare9conv2d_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2$
"conv2d_5/kernel/Regularizer/Square?
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_5/kernel/Regularizer/Const?
conv2d_5/kernel/Regularizer/SumSum&conv2d_5/kernel/Regularizer/Square:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/Sum?
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_5/kernel/Regularizer/mul/x?
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/mul?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:?????????RR?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????TT@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp1conv2d_5/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????TT@
 
_user_specified_nameinputs
?	
?
C__inference_dense_3_layer_call_and_return_conditional_losses_145656

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_144919

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
??
?
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_147009

inputs;
-batch_normalization_4_readvariableop_resource:=
/batch_normalization_4_readvariableop_1_resource:L
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_4_conv2d_readvariableop_resource:@;
-batch_normalization_5_readvariableop_resource:@=
/batch_normalization_5_readvariableop_1_resource:@L
>batch_normalization_5_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_5_conv2d_readvariableop_resource:@?<
-batch_normalization_6_readvariableop_resource:	?>
/batch_normalization_6_readvariableop_1_resource:	?M
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	?C
'conv2d_6_conv2d_readvariableop_resource:??<
-batch_normalization_7_readvariableop_resource:	?>
/batch_normalization_7_readvariableop_1_resource:	?M
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?C
'conv2d_7_conv2d_readvariableop_resource:??9
&dense_2_matmul_readvariableop_resource:	?@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@ 5
'dense_3_biasadd_readvariableop_resource: 5
#main_matmul_readvariableop_resource: 2
$main_biasadd_readvariableop_resource:7
%footer_matmul_readvariableop_resource: 4
&footer_biasadd_readvariableop_resource:5
#side_matmul_readvariableop_resource: 2
$side_biasadd_readvariableop_resource:4
"nav_matmul_readvariableop_resource: 1
#nav_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??5batch_normalization_4/FusedBatchNormV3/ReadVariableOp?7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_4/ReadVariableOp?&batch_normalization_4/ReadVariableOp_1?5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_5/ReadVariableOp?&batch_normalization_5/ReadVariableOp_1?5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?conv2d_4/Conv2D/ReadVariableOp?1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?conv2d_5/Conv2D/ReadVariableOp?1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?footer/BiasAdd/ReadVariableOp?footer/MatMul/ReadVariableOp?main/BiasAdd/ReadVariableOp?main/MatMul/ReadVariableOp?nav/BiasAdd/ReadVariableOp?nav/MatMul/ReadVariableOp?side/BiasAdd/ReadVariableOp?side/MatMul/ReadVariableOp?
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2!
sequential/resizing/resize/size?
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(2+
)sequential/resizing/resize/ResizeBilinear
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
sequential/rescaling/Cast/x?
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/rescaling/Cast_1/x?
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
sequential/rescaling/mul?
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
sequential/rescaling/add?
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_4/ReadVariableOp?
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_4/ReadVariableOp_1?
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3sequential/rescaling/add:z:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:???????????:::::*
epsilon%o?:*
is_training( 2(
&batch_normalization_4/FusedBatchNormV3?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2D*batch_normalization_4/FusedBatchNormV3:y:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
conv2d_4/Conv2D?
activation_4/EluEluconv2d_4/Conv2D:output:0*
T0*1
_output_shapes
:???????????@2
activation_4/Elu?
max_pooling2d_3/MaxPoolMaxPoolactivation_4/Elu:activations:0*/
_output_shapes
:?????????TT@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool?
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_5/ReadVariableOp?
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_5/ReadVariableOp_1?
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_3/MaxPool:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????TT@:@:@:@:@:*
epsilon%o?:*
is_training( 2(
&batch_normalization_5/FusedBatchNormV3?
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2DConv2D*batch_normalization_5/FusedBatchNormV3:y:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????RR?*
paddingVALID*
strides
2
conv2d_5/Conv2D?
activation_5/EluEluconv2d_5/Conv2D:output:0*
T0*0
_output_shapes
:?????????RR?2
activation_5/Elu?
max_pooling2d_4/MaxPoolMaxPoolactivation_5/Elu:activations:0*0
_output_shapes
:?????????))?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPool?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_6/ReadVariableOp?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_6/ReadVariableOp_1?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_4/MaxPool:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????))?:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_6/FusedBatchNormV3?
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_6/Conv2D/ReadVariableOp?
conv2d_6/Conv2DConv2D*batch_normalization_6/FusedBatchNormV3:y:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????''?*
paddingVALID*
strides
2
conv2d_6/Conv2D?
activation_6/EluEluconv2d_6/Conv2D:output:0*
T0*0
_output_shapes
:?????????''?2
activation_6/Elu?
max_pooling2d_5/MaxPoolMaxPoolactivation_6/Elu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_5/MaxPool?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_7/ReadVariableOp?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_7/ReadVariableOp_1?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_5/MaxPool:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_7/FusedBatchNormV3?
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_7/Conv2D/ReadVariableOp?
conv2d_7/Conv2DConv2D*batch_normalization_7/FusedBatchNormV3:y:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_7/Conv2D?
activation_7/EluEluconv2d_7/Conv2D:output:0*
T0*0
_output_shapes
:??????????2
activation_7/Elu?
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_1/Mean/reduction_indices?
global_average_pooling2d_1/MeanMeanactivation_7/Elu:activations:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_1/Mean?
dropout_1/IdentityIdentity(global_average_pooling2d_1/Mean:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/Identity?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/BiasAdd?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/BiasAdd:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_3/BiasAdd?
main/MatMul/ReadVariableOpReadVariableOp#main_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
main/MatMul/ReadVariableOp?
main/MatMulMatMuldense_3/BiasAdd:output:0"main/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
main/MatMul?
main/BiasAdd/ReadVariableOpReadVariableOp$main_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
main/BiasAdd/ReadVariableOp?
main/BiasAddBiasAddmain/MatMul:product:0#main/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
main/BiasAddg
	main/ReluRelumain/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
	main/Relu?
footer/MatMul/ReadVariableOpReadVariableOp%footer_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
footer/MatMul/ReadVariableOp?
footer/MatMulMatMuldense_3/BiasAdd:output:0$footer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
footer/MatMul?
footer/BiasAdd/ReadVariableOpReadVariableOp&footer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
footer/BiasAdd/ReadVariableOp?
footer/BiasAddBiasAddfooter/MatMul:product:0%footer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
footer/BiasAddv
footer/SigmoidSigmoidfooter/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
footer/Sigmoid?
side/MatMul/ReadVariableOpReadVariableOp#side_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
side/MatMul/ReadVariableOp?
side/MatMulMatMuldense_3/BiasAdd:output:0"side/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
side/MatMul?
side/BiasAdd/ReadVariableOpReadVariableOp$side_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
side/BiasAdd/ReadVariableOp?
side/BiasAddBiasAddside/MatMul:product:0#side/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
side/BiasAddp
side/SigmoidSigmoidside/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
side/Sigmoid?
nav/MatMul/ReadVariableOpReadVariableOp"nav_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
nav/MatMul/ReadVariableOp?

nav/MatMulMatMuldense_3/BiasAdd:output:0!nav/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

nav/MatMul?
nav/BiasAdd/ReadVariableOpReadVariableOp#nav_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
nav/BiasAdd/ReadVariableOp?
nav/BiasAddBiasAddnav/MatMul:product:0"nav/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
nav/BiasAddm
nav/SigmoidSigmoidnav/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
nav/Sigmoid?
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype023
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2$
"conv2d_4/kernel/Regularizer/Square?
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_4/kernel/Regularizer/Const?
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/Sum?
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_4/kernel/Regularizer/mul/x?
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/mul?
1conv2d_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype023
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_5/kernel/Regularizer/SquareSquare9conv2d_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2$
"conv2d_5/kernel/Regularizer/Square?
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_5/kernel/Regularizer/Const?
conv2d_5/kernel/Regularizer/SumSum&conv2d_5/kernel/Regularizer/Square:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/Sum?
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_5/kernel/Regularizer/mul/x?
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/mul?
1conv2d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_6/kernel/Regularizer/SquareSquare9conv2d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_6/kernel/Regularizer/Square?
!conv2d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_6/kernel/Regularizer/Const?
conv2d_6/kernel/Regularizer/SumSum&conv2d_6/kernel/Regularizer/Square:y:0*conv2d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/Sum?
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_6/kernel/Regularizer/mul/x?
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0(conv2d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/mul?
1conv2d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_7/kernel/Regularizer/SquareSquare9conv2d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_7/kernel/Regularizer/Square?
!conv2d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_7/kernel/Regularizer/Const?
conv2d_7/kernel/Regularizer/SumSum&conv2d_7/kernel/Regularizer/Square:y:0*conv2d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/Sum?
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_7/kernel/Regularizer/mul/x?
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0(conv2d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/mul?
IdentityIdentitynav/Sigmoid:y:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1^conv2d_4/Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^footer/BiasAdd/ReadVariableOp^footer/MatMul/ReadVariableOp^main/BiasAdd/ReadVariableOp^main/MatMul/ReadVariableOp^nav/BiasAdd/ReadVariableOp^nav/MatMul/ReadVariableOp^side/BiasAdd/ReadVariableOp^side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identityside/Sigmoid:y:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1^conv2d_4/Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^footer/BiasAdd/ReadVariableOp^footer/MatMul/ReadVariableOp^main/BiasAdd/ReadVariableOp^main/MatMul/ReadVariableOp^nav/BiasAdd/ReadVariableOp^nav/MatMul/ReadVariableOp^side/BiasAdd/ReadVariableOp^side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identityfooter/Sigmoid:y:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1^conv2d_4/Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^footer/BiasAdd/ReadVariableOp^footer/MatMul/ReadVariableOp^main/BiasAdd/ReadVariableOp^main/MatMul/ReadVariableOp^nav/BiasAdd/ReadVariableOp^nav/MatMul/ReadVariableOp^side/BiasAdd/ReadVariableOp^side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identitymain/Relu:activations:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1^conv2d_4/Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^footer/BiasAdd/ReadVariableOp^footer/MatMul/ReadVariableOp^main/BiasAdd/ReadVariableOp^main/MatMul/ReadVariableOp^nav/BiasAdd/ReadVariableOp^nav/MatMul/ReadVariableOp^side/BiasAdd/ReadVariableOp^side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2f
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp1conv2d_5/kernel/Regularizer/Square/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2f
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp1conv2d_6/kernel/Regularizer/Square/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2f
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp1conv2d_7/kernel/Regularizer/Square/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2>
footer/BiasAdd/ReadVariableOpfooter/BiasAdd/ReadVariableOp2<
footer/MatMul/ReadVariableOpfooter/MatMul/ReadVariableOp2:
main/BiasAdd/ReadVariableOpmain/BiasAdd/ReadVariableOp28
main/MatMul/ReadVariableOpmain/MatMul/ReadVariableOp28
nav/BiasAdd/ReadVariableOpnav/BiasAdd/ReadVariableOp26
nav/MatMul/ReadVariableOpnav/MatMul/ReadVariableOp2:
side/BiasAdd/ReadVariableOpside/BiasAdd/ReadVariableOp28
side/MatMul/ReadVariableOpside/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148137

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:???????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

b
F__inference_sequential_layer_call_and_return_conditional_losses_144303

inputs
identity}
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing/resize/size?
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(2 
resizing/resize/ResizeBilineari
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/addo
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_sequential_layer_call_fn_147583

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1443232
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_145628

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
@__inference_main_layer_call_and_return_conditional_losses_145673

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_7_layer_call_and_return_conditional_losses_148706

inputs:
conv2d_readvariableop_resource:??
identity??Conv2D/ReadVariableOp?1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
1conv2d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_7/kernel/Regularizer/SquareSquare9conv2d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_7/kernel/Regularizer/Square?
!conv2d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_7/kernel/Regularizer/Const?
conv2d_7/kernel/Regularizer/SumSum&conv2d_7/kernel/Regularizer/Square:y:0*conv2d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/Sum?
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_7/kernel/Regularizer/mul/x?
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0(conv2d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/mul?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp1conv2d_7/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_2_layer_call_fn_148769

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1456402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_sequential_1_layer_call_and_return_conditional_losses_147587

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_6_layer_call_fn_148514

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????))?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1455362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????))?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????))?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????))?
 
_user_specified_nameinputs
?
O
+__inference_sequential_layer_call_fn_144306
resizing_input
identity?
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1443032
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:a ]
1
_output_shapes
:???????????
(
_user_specified_nameresizing_input
?
X
-__inference_sequential_1_layer_call_fn_148060
random_rotation_input
identity?
PartitionedCallPartitionedCallrandom_rotation_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1443592
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:h d
1
_output_shapes
:???????????
/
_user_specified_namerandom_rotation_input
?
I
-__inference_activation_7_layer_call_fn_148723

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_1456202
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_4_layer_call_fn_148233

inputs!
unknown:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1454552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_148890U
:conv2d_5_kernel_regularizer_square_readvariableop_resource:@?
identity??1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
1conv2d_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_5_kernel_regularizer_square_readvariableop_resource*'
_output_shapes
:@?*
dtype023
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_5/kernel/Regularizer/SquareSquare9conv2d_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2$
"conv2d_5/kernel/Regularizer/Square?
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_5/kernel/Regularizer/Const?
conv2d_5/kernel/Regularizer/SumSum&conv2d_5/kernel/Regularizer/Square:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/Sum?
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_5/kernel/Regularizer/mul/x?
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/mul?
IdentityIdentity#conv2d_5/kernel/Regularizer/mul:z:02^conv2d_5/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp1conv2d_5/kernel/Regularizer/Square/ReadVariableOp
?
?
)__inference_conv2d_5_layer_call_fn_148393

inputs"
unknown:@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????RR?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1455072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????RR?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????TT@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????TT@
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_5_layer_call_fn_148367

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????TT@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1460772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????TT@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????TT@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????TT@
 
_user_specified_nameinputs
?
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_148740

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148439

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
Ѳ
?
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_145758

inputs*
batch_normalization_4_145433:*
batch_normalization_4_145435:*
batch_normalization_4_145437:*
batch_normalization_4_145439:)
conv2d_4_145456:@*
batch_normalization_5_145485:@*
batch_normalization_5_145487:@*
batch_normalization_5_145489:@*
batch_normalization_5_145491:@*
conv2d_5_145508:@?+
batch_normalization_6_145537:	?+
batch_normalization_6_145539:	?+
batch_normalization_6_145541:	?+
batch_normalization_6_145543:	?+
conv2d_6_145560:??+
batch_normalization_7_145589:	?+
batch_normalization_7_145591:	?+
batch_normalization_7_145593:	?+
batch_normalization_7_145595:	?+
conv2d_7_145612:??!
dense_2_145641:	?@
dense_2_145643:@ 
dense_3_145657:@ 
dense_3_145659: 
main_145674: 
main_145676:
footer_145691: 
footer_145693:
side_145708: 
side_145710:

nav_145725: 

nav_145727:
identity

identity_1

identity_2

identity_3??-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall?-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?1conv2d_4/kernel/Regularizer/Square/ReadVariableOp? conv2d_5/StatefulPartitionedCall?1conv2d_5/kernel/Regularizer/Square/ReadVariableOp? conv2d_6/StatefulPartitionedCall?1conv2d_6/kernel/Regularizer/Square/ReadVariableOp? conv2d_7/StatefulPartitionedCall?1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?footer/StatefulPartitionedCall?main/StatefulPartitionedCall?nav/StatefulPartitionedCall?side/StatefulPartitionedCall?
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1443032
sequential/PartitionedCall?
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1443592
sequential_1/PartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0batch_normalization_4_145433batch_normalization_4_145435batch_normalization_4_145437batch_normalization_4_145439*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1454322/
-batch_normalization_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv2d_4_145456*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1454552"
 conv2d_4/StatefulPartitionedCall?
activation_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_1454642
activation_4/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????TT@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1449852!
max_pooling2d_3/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0batch_normalization_5_145485batch_normalization_5_145487batch_normalization_5_145489batch_normalization_5_145491*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????TT@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1454842/
-batch_normalization_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_5_145508*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????RR?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1455072"
 conv2d_5/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????RR?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_1455162
activation_5/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????))?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1451232!
max_pooling2d_4/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_145537batch_normalization_6_145539batch_normalization_6_145541batch_normalization_6_145543*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????))?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1455362/
-batch_normalization_6/StatefulPartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_6_145560*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????''?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_1455592"
 conv2d_6/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????''?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_1455682
activation_6/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1452612!
max_pooling2d_5/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_145589batch_normalization_7_145591batch_normalization_7_145593batch_normalization_7_145595*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1455882/
-batch_normalization_7/StatefulPartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0conv2d_7_145612*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_1456112"
 conv2d_7/StatefulPartitionedCall?
activation_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_1456202
activation_7/PartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_1454002,
*global_average_pooling2d_1/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1456282
dropout_1/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_145641dense_2_145643*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1456402!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_145657dense_3_145659*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1456562!
dense_3/StatefulPartitionedCall?
main/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0main_145674main_145676*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_main_layer_call_and_return_conditional_losses_1456732
main/StatefulPartitionedCall?
footer/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0footer_145691footer_145693*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_footer_layer_call_and_return_conditional_losses_1456902 
footer/StatefulPartitionedCall?
side/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0side_145708side_145710*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_side_layer_call_and_return_conditional_losses_1457072
side/StatefulPartitionedCall?
nav/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0
nav_145725
nav_145727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_nav_layer_call_and_return_conditional_losses_1457242
nav/StatefulPartitionedCall?
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_4_145456*&
_output_shapes
:@*
dtype023
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2$
"conv2d_4/kernel/Regularizer/Square?
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_4/kernel/Regularizer/Const?
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/Sum?
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_4/kernel/Regularizer/mul/x?
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/mul?
1conv2d_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_5_145508*'
_output_shapes
:@?*
dtype023
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_5/kernel/Regularizer/SquareSquare9conv2d_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2$
"conv2d_5/kernel/Regularizer/Square?
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_5/kernel/Regularizer/Const?
conv2d_5/kernel/Regularizer/SumSum&conv2d_5/kernel/Regularizer/Square:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/Sum?
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_5/kernel/Regularizer/mul/x?
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/mul?
1conv2d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_6_145560*(
_output_shapes
:??*
dtype023
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_6/kernel/Regularizer/SquareSquare9conv2d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_6/kernel/Regularizer/Square?
!conv2d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_6/kernel/Regularizer/Const?
conv2d_6/kernel/Regularizer/SumSum&conv2d_6/kernel/Regularizer/Square:y:0*conv2d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/Sum?
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_6/kernel/Regularizer/mul/x?
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0(conv2d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/mul?
1conv2d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_7_145612*(
_output_shapes
:??*
dtype023
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_7/kernel/Regularizer/SquareSquare9conv2d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_7/kernel/Regularizer/Square?
!conv2d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_7/kernel/Regularizer/Const?
conv2d_7/kernel/Regularizer/SumSum&conv2d_7/kernel/Regularizer/Square:y:0*conv2d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/Sum?
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_7/kernel/Regularizer/mul/x?
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0(conv2d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/mul?
IdentityIdentity$nav/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity%side/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity'footer/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity%main/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2f
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp1conv2d_5/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2f
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp1conv2d_6/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2f
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp1conv2d_7/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
footer/StatefulPartitionedCallfooter/StatefulPartitionedCall2<
main/StatefulPartitionedCallmain/StatefulPartitionedCall2:
nav/StatefulPartitionedCallnav/StatefulPartitionedCall2<
side/StatefulPartitionedCallside/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148101

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_6_layer_call_and_return_conditional_losses_148546

inputs:
conv2d_readvariableop_resource:??
identity??Conv2D/ReadVariableOp?1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????''?*
paddingVALID*
strides
2
Conv2D?
1conv2d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_6/kernel/Regularizer/SquareSquare9conv2d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_6/kernel/Regularizer/Square?
!conv2d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_6/kernel/Regularizer/Const?
conv2d_6/kernel/Regularizer/SumSum&conv2d_6/kernel/Regularizer/Square:y:0*conv2d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/Sum?
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_6/kernel/Regularizer/mul/x?
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0(conv2d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/mul?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:?????????''?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????))?: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp1conv2d_6/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:?????????))?
 
_user_specified_nameinputs
?
?
(__inference_dense_3_layer_call_fn_148788

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1456562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148475

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????))?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????))?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????))?: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????))?
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_7_layer_call_fn_148661

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1453332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_4_layer_call_fn_148168

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1448752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_7_layer_call_fn_148687

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1459612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_6_layer_call_fn_148553

inputs#
unknown:??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????''?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_1455592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????''?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????))?: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????))?
 
_user_specified_nameinputs
?
?
%__inference_main_layer_call_fn_148868

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_main_layer_call_and_return_conditional_losses_1456732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
C__inference_dense_2_layer_call_and_return_conditional_losses_148760

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_activation_4_layer_call_and_return_conditional_losses_145464

inputs
identityU
EluEluinputs*
T0*1
_output_shapes
:???????????@2
Eluo
IdentityIdentityElu:activations:0*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????@:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
?
5__inference_model_1_simple_model_layer_call_fn_147553

inputs
unknown:	
	unknown_0:	
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@%

unknown_10:@?

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:	?&

unknown_15:??

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:	?&

unknown_20:??

unknown_21:	?@

unknown_22:@

unknown_23:@ 

unknown_24: 

unknown_25: 

unknown_26:

unknown_27: 

unknown_28:

unknown_29: 

unknown_30:

unknown_31: 

unknown_32:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *`
_output_shapesN
L:?????????:?????????:?????????:?????????*:
_read_only_resource_inputs
	 !"*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_1463472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145484

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????TT@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????TT@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????TT@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????TT@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148617

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
r
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_145400

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_1_layer_call_fn_148750

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1459112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
@__inference_side_layer_call_and_return_conditional_losses_148819

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_146747	
input!
sequential_1_146627:	!
sequential_1_146629:	*
batch_normalization_4_146632:*
batch_normalization_4_146634:*
batch_normalization_4_146636:*
batch_normalization_4_146638:)
conv2d_4_146641:@*
batch_normalization_5_146646:@*
batch_normalization_5_146648:@*
batch_normalization_5_146650:@*
batch_normalization_5_146652:@*
conv2d_5_146655:@?+
batch_normalization_6_146660:	?+
batch_normalization_6_146662:	?+
batch_normalization_6_146664:	?+
batch_normalization_6_146666:	?+
conv2d_6_146669:??+
batch_normalization_7_146674:	?+
batch_normalization_7_146676:	?+
batch_normalization_7_146678:	?+
batch_normalization_7_146680:	?+
conv2d_7_146683:??!
dense_2_146689:	?@
dense_2_146691:@ 
dense_3_146694:@ 
dense_3_146696: 
main_146699: 
main_146701:
footer_146704: 
footer_146706:
side_146709: 
side_146711:

nav_146714: 

nav_146716:
identity

identity_1

identity_2

identity_3??-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall?-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?1conv2d_4/kernel/Regularizer/Square/ReadVariableOp? conv2d_5/StatefulPartitionedCall?1conv2d_5/kernel/Regularizer/Square/ReadVariableOp? conv2d_6/StatefulPartitionedCall?1conv2d_6/kernel/Regularizer/Square/ReadVariableOp? conv2d_7/StatefulPartitionedCall?1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?footer/StatefulPartitionedCall?main/StatefulPartitionedCall?nav/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?side/StatefulPartitionedCall?
sequential/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1443232
sequential/PartitionedCall?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_1_146627sequential_1_146629*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1446012&
$sequential_1/StatefulPartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0batch_normalization_4_146632batch_normalization_4_146634batch_normalization_4_146636batch_normalization_4_146638*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1461352/
-batch_normalization_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv2d_4_146641*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1454552"
 conv2d_4/StatefulPartitionedCall?
activation_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_1454642
activation_4/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????TT@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1449852!
max_pooling2d_3/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0batch_normalization_5_146646batch_normalization_5_146648batch_normalization_5_146650batch_normalization_5_146652*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????TT@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1460772/
-batch_normalization_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_5_146655*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????RR?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1455072"
 conv2d_5/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????RR?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_1455162
activation_5/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????))?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1451232!
max_pooling2d_4/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_146660batch_normalization_6_146662batch_normalization_6_146664batch_normalization_6_146666*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????))?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1460192/
-batch_normalization_6/StatefulPartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_6_146669*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????''?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_1455592"
 conv2d_6/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????''?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_1455682
activation_6/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1452612!
max_pooling2d_5/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_146674batch_normalization_7_146676batch_normalization_7_146678batch_normalization_7_146680*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1459612/
-batch_normalization_7/StatefulPartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0conv2d_7_146683*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_1456112"
 conv2d_7/StatefulPartitionedCall?
activation_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_1456202
activation_7/PartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_1454002,
*global_average_pooling2d_1/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1459112#
!dropout_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_146689dense_2_146691*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1456402!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_146694dense_3_146696*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1456562!
dense_3/StatefulPartitionedCall?
main/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0main_146699main_146701*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_main_layer_call_and_return_conditional_losses_1456732
main/StatefulPartitionedCall?
footer/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0footer_146704footer_146706*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_footer_layer_call_and_return_conditional_losses_1456902 
footer/StatefulPartitionedCall?
side/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0side_146709side_146711*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_side_layer_call_and_return_conditional_losses_1457072
side/StatefulPartitionedCall?
nav/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0
nav_146714
nav_146716*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_nav_layer_call_and_return_conditional_losses_1457242
nav/StatefulPartitionedCall?
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_4_146641*&
_output_shapes
:@*
dtype023
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2$
"conv2d_4/kernel/Regularizer/Square?
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_4/kernel/Regularizer/Const?
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/Sum?
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_4/kernel/Regularizer/mul/x?
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/mul?
1conv2d_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_5_146655*'
_output_shapes
:@?*
dtype023
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_5/kernel/Regularizer/SquareSquare9conv2d_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2$
"conv2d_5/kernel/Regularizer/Square?
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_5/kernel/Regularizer/Const?
conv2d_5/kernel/Regularizer/SumSum&conv2d_5/kernel/Regularizer/Square:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/Sum?
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_5/kernel/Regularizer/mul/x?
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/mul?
1conv2d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_6_146669*(
_output_shapes
:??*
dtype023
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_6/kernel/Regularizer/SquareSquare9conv2d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_6/kernel/Regularizer/Square?
!conv2d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_6/kernel/Regularizer/Const?
conv2d_6/kernel/Regularizer/SumSum&conv2d_6/kernel/Regularizer/Square:y:0*conv2d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/Sum?
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_6/kernel/Regularizer/mul/x?
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0(conv2d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/mul?
1conv2d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_7_146683*(
_output_shapes
:??*
dtype023
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_7/kernel/Regularizer/SquareSquare9conv2d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_7/kernel/Regularizer/Square?
!conv2d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_7/kernel/Regularizer/Const?
conv2d_7/kernel/Regularizer/SumSum&conv2d_7/kernel/Regularizer/Square:y:0*conv2d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/Sum?
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_7/kernel/Regularizer/mul/x?
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0(conv2d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/mul?
IdentityIdentity$nav/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity%side/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity'footer/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity%main/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2f
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp1conv2d_5/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2f
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp1conv2d_6/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2f
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp1conv2d_7/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2@
footer/StatefulPartitionedCallfooter/StatefulPartitionedCall2<
main/StatefulPartitionedCallmain/StatefulPartitionedCall2:
nav/StatefulPartitionedCallnav/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2<
side/StatefulPartitionedCallside/StatefulPartitionedCall:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148599

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_3_layer_call_and_return_conditional_losses_148779

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_146135

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:???????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
H__inference_activation_7_layer_call_and_return_conditional_losses_145620

inputs
identityT
EluEluinputs*
T0*0
_output_shapes
:??????????2
Elun
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
@__inference_main_layer_call_and_return_conditional_losses_148859

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_145588

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_144875

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_148901V
:conv2d_6_kernel_regularizer_square_readvariableop_resource:??
identity??1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
1conv2d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_6_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:??*
dtype023
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_6/kernel/Regularizer/SquareSquare9conv2d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_6/kernel/Regularizer/Square?
!conv2d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_6/kernel/Regularizer/Const?
conv2d_6/kernel/Regularizer/SumSum&conv2d_6/kernel/Regularizer/Square:y:0*conv2d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/Sum?
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_6/kernel/Regularizer/mul/x?
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0(conv2d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/mul?
IdentityIdentity#conv2d_6/kernel/Regularizer/mul:z:02^conv2d_6/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp1conv2d_6/kernel/Regularizer/Square/ReadVariableOp
?
?
D__inference_conv2d_6_layer_call_and_return_conditional_losses_145559

inputs:
conv2d_readvariableop_resource:??
identity??Conv2D/ReadVariableOp?1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????''?*
paddingVALID*
strides
2
Conv2D?
1conv2d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_6/kernel/Regularizer/SquareSquare9conv2d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_6/kernel/Regularizer/Square?
!conv2d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_6/kernel/Regularizer/Const?
conv2d_6/kernel/Regularizer/SumSum&conv2d_6/kernel/Regularizer/Square:y:0*conv2d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/Sum?
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_6/kernel/Regularizer/mul/x?
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0(conv2d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/mul?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:?????????''?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:?????????))?: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp1conv2d_6/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:?????????))?
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_145123

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_5_layer_call_fn_145267

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1452612
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_146019

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????))?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????))?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????))?: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????))?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_4_layer_call_and_return_conditional_losses_148226

inputs8
conv2d_readvariableop_resource:@
identity??Conv2D/ReadVariableOp?1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
Conv2D?
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype023
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2$
"conv2d_4/kernel/Regularizer/Square?
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_4/kernel/Regularizer/Const?
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/Sum?
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_4/kernel/Regularizer/mul/x?
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/mul?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_148879T
:conv2d_4_kernel_regularizer_square_readvariableop_resource:@
identity??1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_4_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:@*
dtype023
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2$
"conv2d_4/kernel/Regularizer/Square?
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_4/kernel/Regularizer/Const?
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/Sum?
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_4/kernel/Regularizer/mul/x?
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/mul?
IdentityIdentity#conv2d_4/kernel/Regularizer/mul:z:02^conv2d_4/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148261

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145057

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?2
"__inference__traced_restore_149444
file_prefix:
,assignvariableop_batch_normalization_4_gamma:;
-assignvariableop_1_batch_normalization_4_beta:B
4assignvariableop_2_batch_normalization_4_moving_mean:F
8assignvariableop_3_batch_normalization_4_moving_variance:<
"assignvariableop_4_conv2d_4_kernel:@<
.assignvariableop_5_batch_normalization_5_gamma:@;
-assignvariableop_6_batch_normalization_5_beta:@B
4assignvariableop_7_batch_normalization_5_moving_mean:@F
8assignvariableop_8_batch_normalization_5_moving_variance:@=
"assignvariableop_9_conv2d_5_kernel:@?>
/assignvariableop_10_batch_normalization_6_gamma:	?=
.assignvariableop_11_batch_normalization_6_beta:	?D
5assignvariableop_12_batch_normalization_6_moving_mean:	?H
9assignvariableop_13_batch_normalization_6_moving_variance:	??
#assignvariableop_14_conv2d_6_kernel:??>
/assignvariableop_15_batch_normalization_7_gamma:	?=
.assignvariableop_16_batch_normalization_7_beta:	?D
5assignvariableop_17_batch_normalization_7_moving_mean:	?H
9assignvariableop_18_batch_normalization_7_moving_variance:	??
#assignvariableop_19_conv2d_7_kernel:??5
"assignvariableop_20_dense_2_kernel:	?@.
 assignvariableop_21_dense_2_bias:@4
"assignvariableop_22_dense_3_kernel:@ .
 assignvariableop_23_dense_3_bias: 0
assignvariableop_24_nav_kernel: *
assignvariableop_25_nav_bias:1
assignvariableop_26_side_kernel: +
assignvariableop_27_side_bias:3
!assignvariableop_28_footer_kernel: -
assignvariableop_29_footer_bias:1
assignvariableop_30_main_kernel: +
assignvariableop_31_main_bias:*
 assignvariableop_32_rmsprop_iter:	 +
!assignvariableop_33_rmsprop_decay: 3
)assignvariableop_34_rmsprop_learning_rate: .
$assignvariableop_35_rmsprop_momentum: )
assignvariableop_36_rmsprop_rho: *
assignvariableop_37_variable:	,
assignvariableop_38_variable_1:	#
assignvariableop_39_total: #
assignvariableop_40_count: %
assignvariableop_41_total_1: %
assignvariableop_42_count_1: %
assignvariableop_43_total_2: %
assignvariableop_44_count_2: %
assignvariableop_45_total_3: %
assignvariableop_46_count_3: %
assignvariableop_47_total_4: %
assignvariableop_48_count_4: 0
"assignvariableop_49_true_positives:1
#assignvariableop_50_false_positives:2
$assignvariableop_51_true_positives_1:3
%assignvariableop_52_false_positives_1:2
$assignvariableop_53_true_positives_2:3
%assignvariableop_54_false_positives_2:%
assignvariableop_55_total_5: %
assignvariableop_56_count_5: I
;assignvariableop_57_rmsprop_batch_normalization_4_gamma_rms:H
:assignvariableop_58_rmsprop_batch_normalization_4_beta_rms:I
/assignvariableop_59_rmsprop_conv2d_4_kernel_rms:@I
;assignvariableop_60_rmsprop_batch_normalization_5_gamma_rms:@H
:assignvariableop_61_rmsprop_batch_normalization_5_beta_rms:@J
/assignvariableop_62_rmsprop_conv2d_5_kernel_rms:@?J
;assignvariableop_63_rmsprop_batch_normalization_6_gamma_rms:	?I
:assignvariableop_64_rmsprop_batch_normalization_6_beta_rms:	?K
/assignvariableop_65_rmsprop_conv2d_6_kernel_rms:??J
;assignvariableop_66_rmsprop_batch_normalization_7_gamma_rms:	?I
:assignvariableop_67_rmsprop_batch_normalization_7_beta_rms:	?K
/assignvariableop_68_rmsprop_conv2d_7_kernel_rms:??A
.assignvariableop_69_rmsprop_dense_2_kernel_rms:	?@:
,assignvariableop_70_rmsprop_dense_2_bias_rms:@@
.assignvariableop_71_rmsprop_dense_3_kernel_rms:@ :
,assignvariableop_72_rmsprop_dense_3_bias_rms: <
*assignvariableop_73_rmsprop_nav_kernel_rms: 6
(assignvariableop_74_rmsprop_nav_bias_rms:=
+assignvariableop_75_rmsprop_side_kernel_rms: 7
)assignvariableop_76_rmsprop_side_bias_rms:?
-assignvariableop_77_rmsprop_footer_kernel_rms: 9
+assignvariableop_78_rmsprop_footer_bias_rms:=
+assignvariableop_79_rmsprop_main_kernel_rms: 7
)assignvariableop_80_rmsprop_main_bias_rms:
identity_82??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_9?*
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*?)
value?)B?)RB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB:layer-2/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-2/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/6/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/6/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/7/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/7/false_positives/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*?
value?B?RB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*`
dtypesV
T2R			2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_4_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_4_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_4_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_4_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_4_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batch_normalization_5_gammaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp-assignvariableop_6_batch_normalization_5_betaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp4assignvariableop_7_batch_normalization_5_moving_meanIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp8assignvariableop_8_batch_normalization_5_moving_varianceIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_5_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp/assignvariableop_10_batch_normalization_6_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp.assignvariableop_11_batch_normalization_6_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp5assignvariableop_12_batch_normalization_6_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp9assignvariableop_13_batch_normalization_6_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_6_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_7_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp.assignvariableop_16_batch_normalization_7_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp5assignvariableop_17_batch_normalization_7_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp9assignvariableop_18_batch_normalization_7_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_7_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_2_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_2_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp"assignvariableop_22_dense_3_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp assignvariableop_23_dense_3_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_nav_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_nav_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_side_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_side_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp!assignvariableop_28_footer_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_footer_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_main_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_main_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp assignvariableop_32_rmsprop_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp!assignvariableop_33_rmsprop_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_rmsprop_learning_rateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp$assignvariableop_35_rmsprop_momentumIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpassignvariableop_36_rmsprop_rhoIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_variableIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_variable_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_totalIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpassignvariableop_40_countIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_1Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpassignvariableop_43_total_2Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpassignvariableop_44_count_2Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpassignvariableop_45_total_3Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpassignvariableop_46_count_3Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOpassignvariableop_47_total_4Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpassignvariableop_48_count_4Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp"assignvariableop_49_true_positivesIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp#assignvariableop_50_false_positivesIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp$assignvariableop_51_true_positives_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp%assignvariableop_52_false_positives_1Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp$assignvariableop_53_true_positives_2Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp%assignvariableop_54_false_positives_2Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_5Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_5Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp;assignvariableop_57_rmsprop_batch_normalization_4_gamma_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp:assignvariableop_58_rmsprop_batch_normalization_4_beta_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp/assignvariableop_59_rmsprop_conv2d_4_kernel_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp;assignvariableop_60_rmsprop_batch_normalization_5_gamma_rmsIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp:assignvariableop_61_rmsprop_batch_normalization_5_beta_rmsIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp/assignvariableop_62_rmsprop_conv2d_5_kernel_rmsIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp;assignvariableop_63_rmsprop_batch_normalization_6_gamma_rmsIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp:assignvariableop_64_rmsprop_batch_normalization_6_beta_rmsIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp/assignvariableop_65_rmsprop_conv2d_6_kernel_rmsIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp;assignvariableop_66_rmsprop_batch_normalization_7_gamma_rmsIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp:assignvariableop_67_rmsprop_batch_normalization_7_beta_rmsIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp/assignvariableop_68_rmsprop_conv2d_7_kernel_rmsIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp.assignvariableop_69_rmsprop_dense_2_kernel_rmsIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp,assignvariableop_70_rmsprop_dense_2_bias_rmsIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp.assignvariableop_71_rmsprop_dense_3_kernel_rmsIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp,assignvariableop_72_rmsprop_dense_3_bias_rmsIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp*assignvariableop_73_rmsprop_nav_kernel_rmsIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp(assignvariableop_74_rmsprop_nav_bias_rmsIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp+assignvariableop_75_rmsprop_side_kernel_rmsIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp)assignvariableop_76_rmsprop_side_bias_rmsIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp-assignvariableop_77_rmsprop_footer_kernel_rmsIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp+assignvariableop_78_rmsprop_footer_bias_rmsIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp+assignvariableop_79_rmsprop_main_kernel_rmsIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp)assignvariableop_80_rmsprop_main_bias_rmsIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_809
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_81Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_81?
Identity_82IdentityIdentity_81:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_82"#
identity_82Identity_82:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
??
?!
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_147399

inputsS
Esequential_1_random_rotation_stateful_uniform_rngreadandskip_resource:	O
Asequential_1_random_zoom_stateful_uniform_rngreadandskip_resource:	;
-batch_normalization_4_readvariableop_resource:=
/batch_normalization_4_readvariableop_1_resource:L
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_4_conv2d_readvariableop_resource:@;
-batch_normalization_5_readvariableop_resource:@=
/batch_normalization_5_readvariableop_1_resource:@L
>batch_normalization_5_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_5_conv2d_readvariableop_resource:@?<
-batch_normalization_6_readvariableop_resource:	?>
/batch_normalization_6_readvariableop_1_resource:	?M
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	?C
'conv2d_6_conv2d_readvariableop_resource:??<
-batch_normalization_7_readvariableop_resource:	?>
/batch_normalization_7_readvariableop_1_resource:	?M
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?C
'conv2d_7_conv2d_readvariableop_resource:??9
&dense_2_matmul_readvariableop_resource:	?@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@ 5
'dense_3_biasadd_readvariableop_resource: 5
#main_matmul_readvariableop_resource: 2
$main_biasadd_readvariableop_resource:7
%footer_matmul_readvariableop_resource: 4
&footer_biasadd_readvariableop_resource:5
#side_matmul_readvariableop_resource: 2
$side_biasadd_readvariableop_resource:4
"nav_matmul_readvariableop_resource: 1
#nav_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??$batch_normalization_4/AssignNewValue?&batch_normalization_4/AssignNewValue_1?5batch_normalization_4/FusedBatchNormV3/ReadVariableOp?7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_4/ReadVariableOp?&batch_normalization_4/ReadVariableOp_1?$batch_normalization_5/AssignNewValue?&batch_normalization_5/AssignNewValue_1?5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_5/ReadVariableOp?&batch_normalization_5/ReadVariableOp_1?$batch_normalization_6/AssignNewValue?&batch_normalization_6/AssignNewValue_1?5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?$batch_normalization_7/AssignNewValue?&batch_normalization_7/AssignNewValue_1?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?conv2d_4/Conv2D/ReadVariableOp?1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?conv2d_5/Conv2D/ReadVariableOp?1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?conv2d_6/Conv2D/ReadVariableOp?1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?conv2d_7/Conv2D/ReadVariableOp?1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?footer/BiasAdd/ReadVariableOp?footer/MatMul/ReadVariableOp?main/BiasAdd/ReadVariableOp?main/MatMul/ReadVariableOp?nav/BiasAdd/ReadVariableOp?nav/MatMul/ReadVariableOp?<sequential_1/random_rotation/stateful_uniform/RngReadAndSkip?8sequential_1/random_zoom/stateful_uniform/RngReadAndSkip?side/BiasAdd/ReadVariableOp?side/MatMul/ReadVariableOp?
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2!
sequential/resizing/resize/size?
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(2+
)sequential/resizing/resize/ResizeBilinear
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
sequential/rescaling/Cast/x?
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/rescaling/Cast_1/x?
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
sequential/rescaling/mul?
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
sequential/rescaling/add?
"sequential_1/random_rotation/ShapeShapesequential/rescaling/add:z:0*
T0*
_output_shapes
:2$
"sequential_1/random_rotation/Shape?
0sequential_1/random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential_1/random_rotation/strided_slice/stack?
2sequential_1/random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_1/random_rotation/strided_slice/stack_1?
2sequential_1/random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_1/random_rotation/strided_slice/stack_2?
*sequential_1/random_rotation/strided_sliceStridedSlice+sequential_1/random_rotation/Shape:output:09sequential_1/random_rotation/strided_slice/stack:output:0;sequential_1/random_rotation/strided_slice/stack_1:output:0;sequential_1/random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_1/random_rotation/strided_slice?
2sequential_1/random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_1/random_rotation/strided_slice_1/stack?
4sequential_1/random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_1/random_rotation/strided_slice_1/stack_1?
4sequential_1/random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_1/random_rotation/strided_slice_1/stack_2?
,sequential_1/random_rotation/strided_slice_1StridedSlice+sequential_1/random_rotation/Shape:output:0;sequential_1/random_rotation/strided_slice_1/stack:output:0=sequential_1/random_rotation/strided_slice_1/stack_1:output:0=sequential_1/random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,sequential_1/random_rotation/strided_slice_1?
!sequential_1/random_rotation/CastCast5sequential_1/random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!sequential_1/random_rotation/Cast?
2sequential_1/random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2sequential_1/random_rotation/strided_slice_2/stack?
4sequential_1/random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_1/random_rotation/strided_slice_2/stack_1?
4sequential_1/random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_1/random_rotation/strided_slice_2/stack_2?
,sequential_1/random_rotation/strided_slice_2StridedSlice+sequential_1/random_rotation/Shape:output:0;sequential_1/random_rotation/strided_slice_2/stack:output:0=sequential_1/random_rotation/strided_slice_2/stack_1:output:0=sequential_1/random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,sequential_1/random_rotation/strided_slice_2?
#sequential_1/random_rotation/Cast_1Cast5sequential_1/random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#sequential_1/random_rotation/Cast_1?
3sequential_1/random_rotation/stateful_uniform/shapePack3sequential_1/random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:25
3sequential_1/random_rotation/stateful_uniform/shape?
1sequential_1/random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *????23
1sequential_1/random_rotation/stateful_uniform/min?
1sequential_1/random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=23
1sequential_1/random_rotation/stateful_uniform/max?
3sequential_1/random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/random_rotation/stateful_uniform/Const?
2sequential_1/random_rotation/stateful_uniform/ProdProd<sequential_1/random_rotation/stateful_uniform/shape:output:0<sequential_1/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 24
2sequential_1/random_rotation/stateful_uniform/Prod?
4sequential_1/random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_1/random_rotation/stateful_uniform/Cast/x?
4sequential_1/random_rotation/stateful_uniform/Cast_1Cast;sequential_1/random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 26
4sequential_1/random_rotation/stateful_uniform/Cast_1?
<sequential_1/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkipEsequential_1_random_rotation_stateful_uniform_rngreadandskip_resource=sequential_1/random_rotation/stateful_uniform/Cast/x:output:08sequential_1/random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:2>
<sequential_1/random_rotation/stateful_uniform/RngReadAndSkip?
Asequential_1/random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential_1/random_rotation/stateful_uniform/strided_slice/stack?
Csequential_1/random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential_1/random_rotation/stateful_uniform/strided_slice/stack_1?
Csequential_1/random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential_1/random_rotation/stateful_uniform/strided_slice/stack_2?
;sequential_1/random_rotation/stateful_uniform/strided_sliceStridedSliceDsequential_1/random_rotation/stateful_uniform/RngReadAndSkip:value:0Jsequential_1/random_rotation/stateful_uniform/strided_slice/stack:output:0Lsequential_1/random_rotation/stateful_uniform/strided_slice/stack_1:output:0Lsequential_1/random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2=
;sequential_1/random_rotation/stateful_uniform/strided_slice?
5sequential_1/random_rotation/stateful_uniform/BitcastBitcastDsequential_1/random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type027
5sequential_1/random_rotation/stateful_uniform/Bitcast?
Csequential_1/random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2E
Csequential_1/random_rotation/stateful_uniform/strided_slice_1/stack?
Esequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_1?
Esequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_2?
=sequential_1/random_rotation/stateful_uniform/strided_slice_1StridedSliceDsequential_1/random_rotation/stateful_uniform/RngReadAndSkip:value:0Lsequential_1/random_rotation/stateful_uniform/strided_slice_1/stack:output:0Nsequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Nsequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2?
=sequential_1/random_rotation/stateful_uniform/strided_slice_1?
7sequential_1/random_rotation/stateful_uniform/Bitcast_1BitcastFsequential_1/random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type029
7sequential_1/random_rotation/stateful_uniform/Bitcast_1?
Jsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2L
Jsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2/alg?
Fsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2<sequential_1/random_rotation/stateful_uniform/shape:output:0@sequential_1/random_rotation/stateful_uniform/Bitcast_1:output:0>sequential_1/random_rotation/stateful_uniform/Bitcast:output:0Ssequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????2H
Fsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2?
1sequential_1/random_rotation/stateful_uniform/subSub:sequential_1/random_rotation/stateful_uniform/max:output:0:sequential_1/random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 23
1sequential_1/random_rotation/stateful_uniform/sub?
1sequential_1/random_rotation/stateful_uniform/mulMulOsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2:output:05sequential_1/random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????23
1sequential_1/random_rotation/stateful_uniform/mul?
-sequential_1/random_rotation/stateful_uniformAdd5sequential_1/random_rotation/stateful_uniform/mul:z:0:sequential_1/random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2/
-sequential_1/random_rotation/stateful_uniform?
2sequential_1/random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2sequential_1/random_rotation/rotation_matrix/sub/y?
0sequential_1/random_rotation/rotation_matrix/subSub'sequential_1/random_rotation/Cast_1:y:0;sequential_1/random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 22
0sequential_1/random_rotation/rotation_matrix/sub?
0sequential_1/random_rotation/rotation_matrix/CosCos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????22
0sequential_1/random_rotation/rotation_matrix/Cos?
4sequential_1/random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential_1/random_rotation/rotation_matrix/sub_1/y?
2sequential_1/random_rotation/rotation_matrix/sub_1Sub'sequential_1/random_rotation/Cast_1:y:0=sequential_1/random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 24
2sequential_1/random_rotation/rotation_matrix/sub_1?
0sequential_1/random_rotation/rotation_matrix/mulMul4sequential_1/random_rotation/rotation_matrix/Cos:y:06sequential_1/random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????22
0sequential_1/random_rotation/rotation_matrix/mul?
0sequential_1/random_rotation/rotation_matrix/SinSin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????22
0sequential_1/random_rotation/rotation_matrix/Sin?
4sequential_1/random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential_1/random_rotation/rotation_matrix/sub_2/y?
2sequential_1/random_rotation/rotation_matrix/sub_2Sub%sequential_1/random_rotation/Cast:y:0=sequential_1/random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 24
2sequential_1/random_rotation/rotation_matrix/sub_2?
2sequential_1/random_rotation/rotation_matrix/mul_1Mul4sequential_1/random_rotation/rotation_matrix/Sin:y:06sequential_1/random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/mul_1?
2sequential_1/random_rotation/rotation_matrix/sub_3Sub4sequential_1/random_rotation/rotation_matrix/mul:z:06sequential_1/random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/sub_3?
2sequential_1/random_rotation/rotation_matrix/sub_4Sub4sequential_1/random_rotation/rotation_matrix/sub:z:06sequential_1/random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/sub_4?
6sequential_1/random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @28
6sequential_1/random_rotation/rotation_matrix/truediv/y?
4sequential_1/random_rotation/rotation_matrix/truedivRealDiv6sequential_1/random_rotation/rotation_matrix/sub_4:z:0?sequential_1/random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????26
4sequential_1/random_rotation/rotation_matrix/truediv?
4sequential_1/random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential_1/random_rotation/rotation_matrix/sub_5/y?
2sequential_1/random_rotation/rotation_matrix/sub_5Sub%sequential_1/random_rotation/Cast:y:0=sequential_1/random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 24
2sequential_1/random_rotation/rotation_matrix/sub_5?
2sequential_1/random_rotation/rotation_matrix/Sin_1Sin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/Sin_1?
4sequential_1/random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential_1/random_rotation/rotation_matrix/sub_6/y?
2sequential_1/random_rotation/rotation_matrix/sub_6Sub'sequential_1/random_rotation/Cast_1:y:0=sequential_1/random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 24
2sequential_1/random_rotation/rotation_matrix/sub_6?
2sequential_1/random_rotation/rotation_matrix/mul_2Mul6sequential_1/random_rotation/rotation_matrix/Sin_1:y:06sequential_1/random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/mul_2?
2sequential_1/random_rotation/rotation_matrix/Cos_1Cos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/Cos_1?
4sequential_1/random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential_1/random_rotation/rotation_matrix/sub_7/y?
2sequential_1/random_rotation/rotation_matrix/sub_7Sub%sequential_1/random_rotation/Cast:y:0=sequential_1/random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 24
2sequential_1/random_rotation/rotation_matrix/sub_7?
2sequential_1/random_rotation/rotation_matrix/mul_3Mul6sequential_1/random_rotation/rotation_matrix/Cos_1:y:06sequential_1/random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/mul_3?
0sequential_1/random_rotation/rotation_matrix/addAddV26sequential_1/random_rotation/rotation_matrix/mul_2:z:06sequential_1/random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????22
0sequential_1/random_rotation/rotation_matrix/add?
2sequential_1/random_rotation/rotation_matrix/sub_8Sub6sequential_1/random_rotation/rotation_matrix/sub_5:z:04sequential_1/random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/sub_8?
8sequential_1/random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2:
8sequential_1/random_rotation/rotation_matrix/truediv_1/y?
6sequential_1/random_rotation/rotation_matrix/truediv_1RealDiv6sequential_1/random_rotation/rotation_matrix/sub_8:z:0Asequential_1/random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????28
6sequential_1/random_rotation/rotation_matrix/truediv_1?
2sequential_1/random_rotation/rotation_matrix/ShapeShape1sequential_1/random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:24
2sequential_1/random_rotation/rotation_matrix/Shape?
@sequential_1/random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@sequential_1/random_rotation/rotation_matrix/strided_slice/stack?
Bsequential_1/random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bsequential_1/random_rotation/rotation_matrix/strided_slice/stack_1?
Bsequential_1/random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bsequential_1/random_rotation/rotation_matrix/strided_slice/stack_2?
:sequential_1/random_rotation/rotation_matrix/strided_sliceStridedSlice;sequential_1/random_rotation/rotation_matrix/Shape:output:0Isequential_1/random_rotation/rotation_matrix/strided_slice/stack:output:0Ksequential_1/random_rotation/rotation_matrix/strided_slice/stack_1:output:0Ksequential_1/random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:sequential_1/random_rotation/rotation_matrix/strided_slice?
2sequential_1/random_rotation/rotation_matrix/Cos_2Cos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/Cos_2?
Bsequential_1/random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_1/random_rotation/rotation_matrix/strided_slice_1/stack?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_1?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_2?
<sequential_1/random_rotation/rotation_matrix/strided_slice_1StridedSlice6sequential_1/random_rotation/rotation_matrix/Cos_2:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_1/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_1/random_rotation/rotation_matrix/strided_slice_1?
2sequential_1/random_rotation/rotation_matrix/Sin_2Sin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/Sin_2?
Bsequential_1/random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_1/random_rotation/rotation_matrix/strided_slice_2/stack?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_1?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_2?
<sequential_1/random_rotation/rotation_matrix/strided_slice_2StridedSlice6sequential_1/random_rotation/rotation_matrix/Sin_2:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_2/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_1/random_rotation/rotation_matrix/strided_slice_2?
0sequential_1/random_rotation/rotation_matrix/NegNegEsequential_1/random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????22
0sequential_1/random_rotation/rotation_matrix/Neg?
Bsequential_1/random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_1/random_rotation/rotation_matrix/strided_slice_3/stack?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_1?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_2?
<sequential_1/random_rotation/rotation_matrix/strided_slice_3StridedSlice8sequential_1/random_rotation/rotation_matrix/truediv:z:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_3/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_1/random_rotation/rotation_matrix/strided_slice_3?
2sequential_1/random_rotation/rotation_matrix/Sin_3Sin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/Sin_3?
Bsequential_1/random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_1/random_rotation/rotation_matrix/strided_slice_4/stack?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_1?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_2?
<sequential_1/random_rotation/rotation_matrix/strided_slice_4StridedSlice6sequential_1/random_rotation/rotation_matrix/Sin_3:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_4/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_1/random_rotation/rotation_matrix/strided_slice_4?
2sequential_1/random_rotation/rotation_matrix/Cos_3Cos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/Cos_3?
Bsequential_1/random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_1/random_rotation/rotation_matrix/strided_slice_5/stack?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_1?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_2?
<sequential_1/random_rotation/rotation_matrix/strided_slice_5StridedSlice6sequential_1/random_rotation/rotation_matrix/Cos_3:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_5/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_1/random_rotation/rotation_matrix/strided_slice_5?
Bsequential_1/random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bsequential_1/random_rotation/rotation_matrix/strided_slice_6/stack?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_1?
Dsequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dsequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_2?
<sequential_1/random_rotation/rotation_matrix/strided_slice_6StridedSlice:sequential_1/random_rotation/rotation_matrix/truediv_1:z:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_6/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2>
<sequential_1/random_rotation/rotation_matrix/strided_slice_6?
8sequential_1/random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_1/random_rotation/rotation_matrix/zeros/mul/y?
6sequential_1/random_rotation/rotation_matrix/zeros/mulMulCsequential_1/random_rotation/rotation_matrix/strided_slice:output:0Asequential_1/random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 28
6sequential_1/random_rotation/rotation_matrix/zeros/mul?
9sequential_1/random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2;
9sequential_1/random_rotation/rotation_matrix/zeros/Less/y?
7sequential_1/random_rotation/rotation_matrix/zeros/LessLess:sequential_1/random_rotation/rotation_matrix/zeros/mul:z:0Bsequential_1/random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 29
7sequential_1/random_rotation/rotation_matrix/zeros/Less?
;sequential_1/random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_1/random_rotation/rotation_matrix/zeros/packed/1?
9sequential_1/random_rotation/rotation_matrix/zeros/packedPackCsequential_1/random_rotation/rotation_matrix/strided_slice:output:0Dsequential_1/random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2;
9sequential_1/random_rotation/rotation_matrix/zeros/packed?
8sequential_1/random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8sequential_1/random_rotation/rotation_matrix/zeros/Const?
2sequential_1/random_rotation/rotation_matrix/zerosFillBsequential_1/random_rotation/rotation_matrix/zeros/packed:output:0Asequential_1/random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????24
2sequential_1/random_rotation/rotation_matrix/zeros?
8sequential_1/random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_1/random_rotation/rotation_matrix/concat/axis?
3sequential_1/random_rotation/rotation_matrix/concatConcatV2Esequential_1/random_rotation/rotation_matrix/strided_slice_1:output:04sequential_1/random_rotation/rotation_matrix/Neg:y:0Esequential_1/random_rotation/rotation_matrix/strided_slice_3:output:0Esequential_1/random_rotation/rotation_matrix/strided_slice_4:output:0Esequential_1/random_rotation/rotation_matrix/strided_slice_5:output:0Esequential_1/random_rotation/rotation_matrix/strided_slice_6:output:0;sequential_1/random_rotation/rotation_matrix/zeros:output:0Asequential_1/random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????25
3sequential_1/random_rotation/rotation_matrix/concat?
,sequential_1/random_rotation/transform/ShapeShapesequential/rescaling/add:z:0*
T0*
_output_shapes
:2.
,sequential_1/random_rotation/transform/Shape?
:sequential_1/random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_1/random_rotation/transform/strided_slice/stack?
<sequential_1/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_1/random_rotation/transform/strided_slice/stack_1?
<sequential_1/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_1/random_rotation/transform/strided_slice/stack_2?
4sequential_1/random_rotation/transform/strided_sliceStridedSlice5sequential_1/random_rotation/transform/Shape:output:0Csequential_1/random_rotation/transform/strided_slice/stack:output:0Esequential_1/random_rotation/transform/strided_slice/stack_1:output:0Esequential_1/random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:26
4sequential_1/random_rotation/transform/strided_slice?
1sequential_1/random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1sequential_1/random_rotation/transform/fill_value?
Asequential_1/random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3sequential/rescaling/add:z:0<sequential_1/random_rotation/rotation_matrix/concat:output:0=sequential_1/random_rotation/transform/strided_slice:output:0:sequential_1/random_rotation/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2C
Asequential_1/random_rotation/transform/ImageProjectiveTransformV3?
sequential_1/random_zoom/ShapeShapeVsequential_1/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2 
sequential_1/random_zoom/Shape?
,sequential_1/random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_1/random_zoom/strided_slice/stack?
.sequential_1/random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_1/random_zoom/strided_slice/stack_1?
.sequential_1/random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_1/random_zoom/strided_slice/stack_2?
&sequential_1/random_zoom/strided_sliceStridedSlice'sequential_1/random_zoom/Shape:output:05sequential_1/random_zoom/strided_slice/stack:output:07sequential_1/random_zoom/strided_slice/stack_1:output:07sequential_1/random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_1/random_zoom/strided_slice?
.sequential_1/random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.sequential_1/random_zoom/strided_slice_1/stack?
0sequential_1/random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_1/random_zoom/strided_slice_1/stack_1?
0sequential_1/random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_1/random_zoom/strided_slice_1/stack_2?
(sequential_1/random_zoom/strided_slice_1StridedSlice'sequential_1/random_zoom/Shape:output:07sequential_1/random_zoom/strided_slice_1/stack:output:09sequential_1/random_zoom/strided_slice_1/stack_1:output:09sequential_1/random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_1/random_zoom/strided_slice_1?
sequential_1/random_zoom/CastCast1sequential_1/random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
sequential_1/random_zoom/Cast?
.sequential_1/random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.sequential_1/random_zoom/strided_slice_2/stack?
0sequential_1/random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_1/random_zoom/strided_slice_2/stack_1?
0sequential_1/random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_1/random_zoom/strided_slice_2/stack_2?
(sequential_1/random_zoom/strided_slice_2StridedSlice'sequential_1/random_zoom/Shape:output:07sequential_1/random_zoom/strided_slice_2/stack:output:09sequential_1/random_zoom/strided_slice_2/stack_1:output:09sequential_1/random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_1/random_zoom/strided_slice_2?
sequential_1/random_zoom/Cast_1Cast1sequential_1/random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
sequential_1/random_zoom/Cast_1?
1sequential_1/random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1sequential_1/random_zoom/stateful_uniform/shape/1?
/sequential_1/random_zoom/stateful_uniform/shapePack/sequential_1/random_zoom/strided_slice:output:0:sequential_1/random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:21
/sequential_1/random_zoom/stateful_uniform/shape?
-sequential_1/random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *33s?2/
-sequential_1/random_zoom/stateful_uniform/min?
-sequential_1/random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff??2/
-sequential_1/random_zoom/stateful_uniform/max?
/sequential_1/random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_1/random_zoom/stateful_uniform/Const?
.sequential_1/random_zoom/stateful_uniform/ProdProd8sequential_1/random_zoom/stateful_uniform/shape:output:08sequential_1/random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 20
.sequential_1/random_zoom/stateful_uniform/Prod?
0sequential_1/random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_1/random_zoom/stateful_uniform/Cast/x?
0sequential_1/random_zoom/stateful_uniform/Cast_1Cast7sequential_1/random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 22
0sequential_1/random_zoom/stateful_uniform/Cast_1?
8sequential_1/random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkipAsequential_1_random_zoom_stateful_uniform_rngreadandskip_resource9sequential_1/random_zoom/stateful_uniform/Cast/x:output:04sequential_1/random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:2:
8sequential_1/random_zoom/stateful_uniform/RngReadAndSkip?
=sequential_1/random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential_1/random_zoom/stateful_uniform/strided_slice/stack?
?sequential_1/random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_1/random_zoom/stateful_uniform/strided_slice/stack_1?
?sequential_1/random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_1/random_zoom/stateful_uniform/strided_slice/stack_2?
7sequential_1/random_zoom/stateful_uniform/strided_sliceStridedSlice@sequential_1/random_zoom/stateful_uniform/RngReadAndSkip:value:0Fsequential_1/random_zoom/stateful_uniform/strided_slice/stack:output:0Hsequential_1/random_zoom/stateful_uniform/strided_slice/stack_1:output:0Hsequential_1/random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask29
7sequential_1/random_zoom/stateful_uniform/strided_slice?
1sequential_1/random_zoom/stateful_uniform/BitcastBitcast@sequential_1/random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type023
1sequential_1/random_zoom/stateful_uniform/Bitcast?
?sequential_1/random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_1/random_zoom/stateful_uniform/strided_slice_1/stack?
Asequential_1/random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_1/random_zoom/stateful_uniform/strided_slice_1/stack_1?
Asequential_1/random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_1/random_zoom/stateful_uniform/strided_slice_1/stack_2?
9sequential_1/random_zoom/stateful_uniform/strided_slice_1StridedSlice@sequential_1/random_zoom/stateful_uniform/RngReadAndSkip:value:0Hsequential_1/random_zoom/stateful_uniform/strided_slice_1/stack:output:0Jsequential_1/random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0Jsequential_1/random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2;
9sequential_1/random_zoom/stateful_uniform/strided_slice_1?
3sequential_1/random_zoom/stateful_uniform/Bitcast_1BitcastBsequential_1/random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type025
3sequential_1/random_zoom/stateful_uniform/Bitcast_1?
Fsequential_1/random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2H
Fsequential_1/random_zoom/stateful_uniform/StatelessRandomUniformV2/alg?
Bsequential_1/random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV28sequential_1/random_zoom/stateful_uniform/shape:output:0<sequential_1/random_zoom/stateful_uniform/Bitcast_1:output:0:sequential_1/random_zoom/stateful_uniform/Bitcast:output:0Osequential_1/random_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????2D
Bsequential_1/random_zoom/stateful_uniform/StatelessRandomUniformV2?
-sequential_1/random_zoom/stateful_uniform/subSub6sequential_1/random_zoom/stateful_uniform/max:output:06sequential_1/random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2/
-sequential_1/random_zoom/stateful_uniform/sub?
-sequential_1/random_zoom/stateful_uniform/mulMulKsequential_1/random_zoom/stateful_uniform/StatelessRandomUniformV2:output:01sequential_1/random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2/
-sequential_1/random_zoom/stateful_uniform/mul?
)sequential_1/random_zoom/stateful_uniformAdd1sequential_1/random_zoom/stateful_uniform/mul:z:06sequential_1/random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2+
)sequential_1/random_zoom/stateful_uniform?
$sequential_1/random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/random_zoom/concat/axis?
sequential_1/random_zoom/concatConcatV2-sequential_1/random_zoom/stateful_uniform:z:0-sequential_1/random_zoom/stateful_uniform:z:0-sequential_1/random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2!
sequential_1/random_zoom/concat?
*sequential_1/random_zoom/zoom_matrix/ShapeShape(sequential_1/random_zoom/concat:output:0*
T0*
_output_shapes
:2,
*sequential_1/random_zoom/zoom_matrix/Shape?
8sequential_1/random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8sequential_1/random_zoom/zoom_matrix/strided_slice/stack?
:sequential_1/random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_1/random_zoom/zoom_matrix/strided_slice/stack_1?
:sequential_1/random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_1/random_zoom/zoom_matrix/strided_slice/stack_2?
2sequential_1/random_zoom/zoom_matrix/strided_sliceStridedSlice3sequential_1/random_zoom/zoom_matrix/Shape:output:0Asequential_1/random_zoom/zoom_matrix/strided_slice/stack:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice/stack_1:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2sequential_1/random_zoom/zoom_matrix/strided_slice?
*sequential_1/random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*sequential_1/random_zoom/zoom_matrix/sub/y?
(sequential_1/random_zoom/zoom_matrix/subSub#sequential_1/random_zoom/Cast_1:y:03sequential_1/random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2*
(sequential_1/random_zoom/zoom_matrix/sub?
.sequential_1/random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.sequential_1/random_zoom/zoom_matrix/truediv/y?
,sequential_1/random_zoom/zoom_matrix/truedivRealDiv,sequential_1/random_zoom/zoom_matrix/sub:z:07sequential_1/random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2.
,sequential_1/random_zoom/zoom_matrix/truediv?
:sequential_1/random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2<
:sequential_1/random_zoom/zoom_matrix/strided_slice_1/stack?
<sequential_1/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_1/random_zoom/zoom_matrix/strided_slice_1/stack_1?
<sequential_1/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2>
<sequential_1/random_zoom/zoom_matrix/strided_slice_1/stack_2?
4sequential_1/random_zoom/zoom_matrix/strided_slice_1StridedSlice(sequential_1/random_zoom/concat:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice_1/stack:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_1/stack_1:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask26
4sequential_1/random_zoom/zoom_matrix/strided_slice_1?
,sequential_1/random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential_1/random_zoom/zoom_matrix/sub_1/x?
*sequential_1/random_zoom/zoom_matrix/sub_1Sub5sequential_1/random_zoom/zoom_matrix/sub_1/x:output:0=sequential_1/random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2,
*sequential_1/random_zoom/zoom_matrix/sub_1?
(sequential_1/random_zoom/zoom_matrix/mulMul0sequential_1/random_zoom/zoom_matrix/truediv:z:0.sequential_1/random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2*
(sequential_1/random_zoom/zoom_matrix/mul?
,sequential_1/random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential_1/random_zoom/zoom_matrix/sub_2/y?
*sequential_1/random_zoom/zoom_matrix/sub_2Sub!sequential_1/random_zoom/Cast:y:05sequential_1/random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2,
*sequential_1/random_zoom/zoom_matrix/sub_2?
0sequential_1/random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @22
0sequential_1/random_zoom/zoom_matrix/truediv_1/y?
.sequential_1/random_zoom/zoom_matrix/truediv_1RealDiv.sequential_1/random_zoom/zoom_matrix/sub_2:z:09sequential_1/random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 20
.sequential_1/random_zoom/zoom_matrix/truediv_1?
:sequential_1/random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2<
:sequential_1/random_zoom/zoom_matrix/strided_slice_2/stack?
<sequential_1/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_1/random_zoom/zoom_matrix/strided_slice_2/stack_1?
<sequential_1/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2>
<sequential_1/random_zoom/zoom_matrix/strided_slice_2/stack_2?
4sequential_1/random_zoom/zoom_matrix/strided_slice_2StridedSlice(sequential_1/random_zoom/concat:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice_2/stack:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_2/stack_1:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask26
4sequential_1/random_zoom/zoom_matrix/strided_slice_2?
,sequential_1/random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential_1/random_zoom/zoom_matrix/sub_3/x?
*sequential_1/random_zoom/zoom_matrix/sub_3Sub5sequential_1/random_zoom/zoom_matrix/sub_3/x:output:0=sequential_1/random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2,
*sequential_1/random_zoom/zoom_matrix/sub_3?
*sequential_1/random_zoom/zoom_matrix/mul_1Mul2sequential_1/random_zoom/zoom_matrix/truediv_1:z:0.sequential_1/random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2,
*sequential_1/random_zoom/zoom_matrix/mul_1?
:sequential_1/random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2<
:sequential_1/random_zoom/zoom_matrix/strided_slice_3/stack?
<sequential_1/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_1/random_zoom/zoom_matrix/strided_slice_3/stack_1?
<sequential_1/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2>
<sequential_1/random_zoom/zoom_matrix/strided_slice_3/stack_2?
4sequential_1/random_zoom/zoom_matrix/strided_slice_3StridedSlice(sequential_1/random_zoom/concat:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice_3/stack:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_3/stack_1:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask26
4sequential_1/random_zoom/zoom_matrix/strided_slice_3?
0sequential_1/random_zoom/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_1/random_zoom/zoom_matrix/zeros/mul/y?
.sequential_1/random_zoom/zoom_matrix/zeros/mulMul;sequential_1/random_zoom/zoom_matrix/strided_slice:output:09sequential_1/random_zoom/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 20
.sequential_1/random_zoom/zoom_matrix/zeros/mul?
1sequential_1/random_zoom/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?23
1sequential_1/random_zoom/zoom_matrix/zeros/Less/y?
/sequential_1/random_zoom/zoom_matrix/zeros/LessLess2sequential_1/random_zoom/zoom_matrix/zeros/mul:z:0:sequential_1/random_zoom/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 21
/sequential_1/random_zoom/zoom_matrix/zeros/Less?
3sequential_1/random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :25
3sequential_1/random_zoom/zoom_matrix/zeros/packed/1?
1sequential_1/random_zoom/zoom_matrix/zeros/packedPack;sequential_1/random_zoom/zoom_matrix/strided_slice:output:0<sequential_1/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:23
1sequential_1/random_zoom/zoom_matrix/zeros/packed?
0sequential_1/random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0sequential_1/random_zoom/zoom_matrix/zeros/Const?
*sequential_1/random_zoom/zoom_matrix/zerosFill:sequential_1/random_zoom/zoom_matrix/zeros/packed:output:09sequential_1/random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2,
*sequential_1/random_zoom/zoom_matrix/zeros?
2sequential_1/random_zoom/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_1/random_zoom/zoom_matrix/zeros_1/mul/y?
0sequential_1/random_zoom/zoom_matrix/zeros_1/mulMul;sequential_1/random_zoom/zoom_matrix/strided_slice:output:0;sequential_1/random_zoom/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 22
0sequential_1/random_zoom/zoom_matrix/zeros_1/mul?
3sequential_1/random_zoom/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3sequential_1/random_zoom/zoom_matrix/zeros_1/Less/y?
1sequential_1/random_zoom/zoom_matrix/zeros_1/LessLess4sequential_1/random_zoom/zoom_matrix/zeros_1/mul:z:0<sequential_1/random_zoom/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 23
1sequential_1/random_zoom/zoom_matrix/zeros_1/Less?
5sequential_1/random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/random_zoom/zoom_matrix/zeros_1/packed/1?
3sequential_1/random_zoom/zoom_matrix/zeros_1/packedPack;sequential_1/random_zoom/zoom_matrix/strided_slice:output:0>sequential_1/random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:25
3sequential_1/random_zoom/zoom_matrix/zeros_1/packed?
2sequential_1/random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential_1/random_zoom/zoom_matrix/zeros_1/Const?
,sequential_1/random_zoom/zoom_matrix/zeros_1Fill<sequential_1/random_zoom/zoom_matrix/zeros_1/packed:output:0;sequential_1/random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_1/random_zoom/zoom_matrix/zeros_1?
:sequential_1/random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2<
:sequential_1/random_zoom/zoom_matrix/strided_slice_4/stack?
<sequential_1/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_1/random_zoom/zoom_matrix/strided_slice_4/stack_1?
<sequential_1/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2>
<sequential_1/random_zoom/zoom_matrix/strided_slice_4/stack_2?
4sequential_1/random_zoom/zoom_matrix/strided_slice_4StridedSlice(sequential_1/random_zoom/concat:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice_4/stack:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_4/stack_1:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask26
4sequential_1/random_zoom/zoom_matrix/strided_slice_4?
2sequential_1/random_zoom/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_1/random_zoom/zoom_matrix/zeros_2/mul/y?
0sequential_1/random_zoom/zoom_matrix/zeros_2/mulMul;sequential_1/random_zoom/zoom_matrix/strided_slice:output:0;sequential_1/random_zoom/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 22
0sequential_1/random_zoom/zoom_matrix/zeros_2/mul?
3sequential_1/random_zoom/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3sequential_1/random_zoom/zoom_matrix/zeros_2/Less/y?
1sequential_1/random_zoom/zoom_matrix/zeros_2/LessLess4sequential_1/random_zoom/zoom_matrix/zeros_2/mul:z:0<sequential_1/random_zoom/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 23
1sequential_1/random_zoom/zoom_matrix/zeros_2/Less?
5sequential_1/random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential_1/random_zoom/zoom_matrix/zeros_2/packed/1?
3sequential_1/random_zoom/zoom_matrix/zeros_2/packedPack;sequential_1/random_zoom/zoom_matrix/strided_slice:output:0>sequential_1/random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:25
3sequential_1/random_zoom/zoom_matrix/zeros_2/packed?
2sequential_1/random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential_1/random_zoom/zoom_matrix/zeros_2/Const?
,sequential_1/random_zoom/zoom_matrix/zeros_2Fill<sequential_1/random_zoom/zoom_matrix/zeros_2/packed:output:0;sequential_1/random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_1/random_zoom/zoom_matrix/zeros_2?
0sequential_1/random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_1/random_zoom/zoom_matrix/concat/axis?
+sequential_1/random_zoom/zoom_matrix/concatConcatV2=sequential_1/random_zoom/zoom_matrix/strided_slice_3:output:03sequential_1/random_zoom/zoom_matrix/zeros:output:0,sequential_1/random_zoom/zoom_matrix/mul:z:05sequential_1/random_zoom/zoom_matrix/zeros_1:output:0=sequential_1/random_zoom/zoom_matrix/strided_slice_4:output:0.sequential_1/random_zoom/zoom_matrix/mul_1:z:05sequential_1/random_zoom/zoom_matrix/zeros_2:output:09sequential_1/random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2-
+sequential_1/random_zoom/zoom_matrix/concat?
(sequential_1/random_zoom/transform/ShapeShapeVsequential_1/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2*
(sequential_1/random_zoom/transform/Shape?
6sequential_1/random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6sequential_1/random_zoom/transform/strided_slice/stack?
8sequential_1/random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_1/random_zoom/transform/strided_slice/stack_1?
8sequential_1/random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_1/random_zoom/transform/strided_slice/stack_2?
0sequential_1/random_zoom/transform/strided_sliceStridedSlice1sequential_1/random_zoom/transform/Shape:output:0?sequential_1/random_zoom/transform/strided_slice/stack:output:0Asequential_1/random_zoom/transform/strided_slice/stack_1:output:0Asequential_1/random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:22
0sequential_1/random_zoom/transform/strided_slice?
-sequential_1/random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-sequential_1/random_zoom/transform/fill_value?
=sequential_1/random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Vsequential_1/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:04sequential_1/random_zoom/zoom_matrix/concat:output:09sequential_1/random_zoom/transform/strided_slice:output:06sequential_1/random_zoom/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2?
=sequential_1/random_zoom/transform/ImageProjectiveTransformV3?
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_4/ReadVariableOp?
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_4/ReadVariableOp_1?
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3Rsequential_1/random_zoom/transform/ImageProjectiveTransformV3:transformed_images:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:???????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_4/FusedBatchNormV3?
$batch_normalization_4/AssignNewValueAssignVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource3batch_normalization_4/FusedBatchNormV3:batch_mean:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_4/AssignNewValue?
&batch_normalization_4/AssignNewValue_1AssignVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_4/FusedBatchNormV3:batch_variance:08^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_4/AssignNewValue_1?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2D*batch_normalization_4/FusedBatchNormV3:y:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
conv2d_4/Conv2D?
activation_4/EluEluconv2d_4/Conv2D:output:0*
T0*1
_output_shapes
:???????????@2
activation_4/Elu?
max_pooling2d_3/MaxPoolMaxPoolactivation_4/Elu:activations:0*/
_output_shapes
:?????????TT@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool?
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_5/ReadVariableOp?
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_5/ReadVariableOp_1?
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_3/MaxPool:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????TT@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_5/FusedBatchNormV3?
$batch_normalization_5/AssignNewValueAssignVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource3batch_normalization_5/FusedBatchNormV3:batch_mean:06^batch_normalization_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_5/AssignNewValue?
&batch_normalization_5/AssignNewValue_1AssignVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_5/FusedBatchNormV3:batch_variance:08^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_5/AssignNewValue_1?
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2DConv2D*batch_normalization_5/FusedBatchNormV3:y:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????RR?*
paddingVALID*
strides
2
conv2d_5/Conv2D?
activation_5/EluEluconv2d_5/Conv2D:output:0*
T0*0
_output_shapes
:?????????RR?2
activation_5/Elu?
max_pooling2d_4/MaxPoolMaxPoolactivation_5/Elu:activations:0*0
_output_shapes
:?????????))?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPool?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_6/ReadVariableOp?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_6/ReadVariableOp_1?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_4/MaxPool:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????))?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_6/FusedBatchNormV3?
$batch_normalization_6/AssignNewValueAssignVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource3batch_normalization_6/FusedBatchNormV3:batch_mean:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_6/AssignNewValue?
&batch_normalization_6/AssignNewValue_1AssignVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_6/FusedBatchNormV3:batch_variance:08^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_6/AssignNewValue_1?
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_6/Conv2D/ReadVariableOp?
conv2d_6/Conv2DConv2D*batch_normalization_6/FusedBatchNormV3:y:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????''?*
paddingVALID*
strides
2
conv2d_6/Conv2D?
activation_6/EluEluconv2d_6/Conv2D:output:0*
T0*0
_output_shapes
:?????????''?2
activation_6/Elu?
max_pooling2d_5/MaxPoolMaxPoolactivation_6/Elu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_5/MaxPool?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_7/ReadVariableOp?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_7/ReadVariableOp_1?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3 max_pooling2d_5/MaxPool:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_7/FusedBatchNormV3?
$batch_normalization_7/AssignNewValueAssignVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource3batch_normalization_7/FusedBatchNormV3:batch_mean:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_7/AssignNewValue?
&batch_normalization_7/AssignNewValue_1AssignVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_7/FusedBatchNormV3:batch_variance:08^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_7/AssignNewValue_1?
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_7/Conv2D/ReadVariableOp?
conv2d_7/Conv2DConv2D*batch_normalization_7/FusedBatchNormV3:y:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_7/Conv2D?
activation_7/EluEluconv2d_7/Conv2D:output:0*
T0*0
_output_shapes
:??????????2
activation_7/Elu?
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_1/Mean/reduction_indices?
global_average_pooling2d_1/MeanMeanactivation_7/Elu:activations:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2!
global_average_pooling2d_1/Meanw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const?
dropout_1/dropout/MulMul(global_average_pooling2d_1/Mean:output:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShape(global_average_pooling2d_1/Mean:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/dropout/Mul_1?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_2/BiasAdd?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/BiasAdd:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_3/BiasAdd?
main/MatMul/ReadVariableOpReadVariableOp#main_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
main/MatMul/ReadVariableOp?
main/MatMulMatMuldense_3/BiasAdd:output:0"main/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
main/MatMul?
main/BiasAdd/ReadVariableOpReadVariableOp$main_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
main/BiasAdd/ReadVariableOp?
main/BiasAddBiasAddmain/MatMul:product:0#main/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
main/BiasAddg
	main/ReluRelumain/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
	main/Relu?
footer/MatMul/ReadVariableOpReadVariableOp%footer_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
footer/MatMul/ReadVariableOp?
footer/MatMulMatMuldense_3/BiasAdd:output:0$footer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
footer/MatMul?
footer/BiasAdd/ReadVariableOpReadVariableOp&footer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
footer/BiasAdd/ReadVariableOp?
footer/BiasAddBiasAddfooter/MatMul:product:0%footer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
footer/BiasAddv
footer/SigmoidSigmoidfooter/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
footer/Sigmoid?
side/MatMul/ReadVariableOpReadVariableOp#side_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
side/MatMul/ReadVariableOp?
side/MatMulMatMuldense_3/BiasAdd:output:0"side/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
side/MatMul?
side/BiasAdd/ReadVariableOpReadVariableOp$side_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
side/BiasAdd/ReadVariableOp?
side/BiasAddBiasAddside/MatMul:product:0#side/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
side/BiasAddp
side/SigmoidSigmoidside/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
side/Sigmoid?
nav/MatMul/ReadVariableOpReadVariableOp"nav_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
nav/MatMul/ReadVariableOp?

nav/MatMulMatMuldense_3/BiasAdd:output:0!nav/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

nav/MatMul?
nav/BiasAdd/ReadVariableOpReadVariableOp#nav_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
nav/BiasAdd/ReadVariableOp?
nav/BiasAddBiasAddnav/MatMul:product:0"nav/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
nav/BiasAddm
nav/SigmoidSigmoidnav/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
nav/Sigmoid?
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype023
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2$
"conv2d_4/kernel/Regularizer/Square?
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_4/kernel/Regularizer/Const?
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/Sum?
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_4/kernel/Regularizer/mul/x?
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/mul?
1conv2d_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype023
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_5/kernel/Regularizer/SquareSquare9conv2d_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2$
"conv2d_5/kernel/Regularizer/Square?
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_5/kernel/Regularizer/Const?
conv2d_5/kernel/Regularizer/SumSum&conv2d_5/kernel/Regularizer/Square:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/Sum?
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_5/kernel/Regularizer/mul/x?
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/mul?
1conv2d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_6/kernel/Regularizer/SquareSquare9conv2d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_6/kernel/Regularizer/Square?
!conv2d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_6/kernel/Regularizer/Const?
conv2d_6/kernel/Regularizer/SumSum&conv2d_6/kernel/Regularizer/Square:y:0*conv2d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/Sum?
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_6/kernel/Regularizer/mul/x?
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0(conv2d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/mul?
1conv2d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_7/kernel/Regularizer/SquareSquare9conv2d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_7/kernel/Regularizer/Square?
!conv2d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_7/kernel/Regularizer/Const?
conv2d_7/kernel/Regularizer/SumSum&conv2d_7/kernel/Regularizer/Square:y:0*conv2d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/Sum?
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_7/kernel/Regularizer/mul/x?
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0(conv2d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/mul?
IdentityIdentitynav/Sigmoid:y:0%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1%^batch_normalization_5/AssignNewValue'^batch_normalization_5/AssignNewValue_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1^conv2d_4/Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^footer/BiasAdd/ReadVariableOp^footer/MatMul/ReadVariableOp^main/BiasAdd/ReadVariableOp^main/MatMul/ReadVariableOp^nav/BiasAdd/ReadVariableOp^nav/MatMul/ReadVariableOp=^sequential_1/random_rotation/stateful_uniform/RngReadAndSkip9^sequential_1/random_zoom/stateful_uniform/RngReadAndSkip^side/BiasAdd/ReadVariableOp^side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identityside/Sigmoid:y:0%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1%^batch_normalization_5/AssignNewValue'^batch_normalization_5/AssignNewValue_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1^conv2d_4/Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^footer/BiasAdd/ReadVariableOp^footer/MatMul/ReadVariableOp^main/BiasAdd/ReadVariableOp^main/MatMul/ReadVariableOp^nav/BiasAdd/ReadVariableOp^nav/MatMul/ReadVariableOp=^sequential_1/random_rotation/stateful_uniform/RngReadAndSkip9^sequential_1/random_zoom/stateful_uniform/RngReadAndSkip^side/BiasAdd/ReadVariableOp^side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identityfooter/Sigmoid:y:0%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1%^batch_normalization_5/AssignNewValue'^batch_normalization_5/AssignNewValue_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1^conv2d_4/Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^footer/BiasAdd/ReadVariableOp^footer/MatMul/ReadVariableOp^main/BiasAdd/ReadVariableOp^main/MatMul/ReadVariableOp^nav/BiasAdd/ReadVariableOp^nav/MatMul/ReadVariableOp=^sequential_1/random_rotation/stateful_uniform/RngReadAndSkip9^sequential_1/random_zoom/stateful_uniform/RngReadAndSkip^side/BiasAdd/ReadVariableOp^side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identitymain/Relu:activations:0%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1%^batch_normalization_5/AssignNewValue'^batch_normalization_5/AssignNewValue_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1^conv2d_4/Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^footer/BiasAdd/ReadVariableOp^footer/MatMul/ReadVariableOp^main/BiasAdd/ReadVariableOp^main/MatMul/ReadVariableOp^nav/BiasAdd/ReadVariableOp^nav/MatMul/ReadVariableOp=^sequential_1/random_rotation/stateful_uniform/RngReadAndSkip9^sequential_1/random_zoom/stateful_uniform/RngReadAndSkip^side/BiasAdd/ReadVariableOp^side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2P
&batch_normalization_4/AssignNewValue_1&batch_normalization_4/AssignNewValue_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12L
$batch_normalization_5/AssignNewValue$batch_normalization_5/AssignNewValue2P
&batch_normalization_5/AssignNewValue_1&batch_normalization_5/AssignNewValue_12n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2P
&batch_normalization_6/AssignNewValue_1&batch_normalization_6/AssignNewValue_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2P
&batch_normalization_7/AssignNewValue_1&batch_normalization_7/AssignNewValue_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2f
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp1conv2d_5/kernel/Regularizer/Square/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2f
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp1conv2d_6/kernel/Regularizer/Square/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2f
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp1conv2d_7/kernel/Regularizer/Square/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2>
footer/BiasAdd/ReadVariableOpfooter/BiasAdd/ReadVariableOp2<
footer/MatMul/ReadVariableOpfooter/MatMul/ReadVariableOp2:
main/BiasAdd/ReadVariableOpmain/BiasAdd/ReadVariableOp28
main/MatMul/ReadVariableOpmain/MatMul/ReadVariableOp28
nav/BiasAdd/ReadVariableOpnav/BiasAdd/ReadVariableOp26
nav/MatMul/ReadVariableOpnav/MatMul/ReadVariableOp2|
<sequential_1/random_rotation/stateful_uniform/RngReadAndSkip<sequential_1/random_rotation/stateful_uniform/RngReadAndSkip2t
8sequential_1/random_zoom/stateful_uniform/RngReadAndSkip8sequential_1/random_zoom/stateful_uniform/RngReadAndSkip2:
side/BiasAdd/ReadVariableOpside/BiasAdd/ReadVariableOp28
side/MatMul/ReadVariableOpside/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

b
F__inference_sequential_layer_call_and_return_conditional_losses_147573

inputs
identity}
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing/resize/size?
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(2 
resizing/resize/ResizeBilineari
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/addo
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_145432

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:???????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
H__inference_activation_7_layer_call_and_return_conditional_losses_148718

inputs
identityT
EluEluinputs*
T0*0
_output_shapes
:??????????2
Elun
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_7_layer_call_and_return_conditional_losses_145611

inputs:
conv2d_readvariableop_resource:??
identity??Conv2D/ReadVariableOp?1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
1conv2d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_7/kernel/Regularizer/SquareSquare9conv2d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_7/kernel/Regularizer/Square?
!conv2d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_7/kernel/Regularizer/Const?
conv2d_7/kernel/Regularizer/SumSum&conv2d_7/kernel/Regularizer/Square:y:0*conv2d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/Sum?
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_7/kernel/Regularizer/mul/x?
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0(conv2d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/mul?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp1conv2d_7/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
I
-__inference_activation_4_layer_call_fn_148243

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_1454642
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????@:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?

?
B__inference_footer_layer_call_and_return_conditional_losses_145690

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
I
-__inference_activation_6_layer_call_fn_148563

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????''?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_1455682
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????''?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????''?:X T
0
_output_shapes
:?????????''?
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_7_layer_call_fn_148648

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1452892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_145195

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_model_1_simple_model_layer_call_fn_145831	
input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@$
	unknown_8:@?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?&

unknown_13:??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?&

unknown_18:??

unknown_19:	?@

unknown_20:@

unknown_21:@ 

unknown_22: 

unknown_23: 

unknown_24:

unknown_25: 

unknown_26:

unknown_27: 

unknown_28:

unknown_29: 

unknown_30:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *`
_output_shapesN
L:?????????:?????????:?????????:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_1457582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?
?
6__inference_batch_normalization_4_layer_call_fn_148181

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1449192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_145289

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
G
+__inference_sequential_layer_call_fn_147578

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1443032
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148279

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

b
F__inference_sequential_layer_call_and_return_conditional_losses_144323

inputs
identity}
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing/resize/size?
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(2 
resizing/resize/ResizeBilineari
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/addo
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_4_layer_call_fn_148194

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1454322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_4_layer_call_fn_148207

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1461352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_144601

inputsF
8random_rotation_stateful_uniform_rngreadandskip_resource:	B
4random_zoom_stateful_uniform_rngreadandskip_resource:	
identity??/random_rotation/stateful_uniform/RngReadAndSkip?+random_zoom/stateful_uniform/RngReadAndSkipd
random_rotation/ShapeShapeinputs*
T0*
_output_shapes
:2
random_rotation/Shape?
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#random_rotation/strided_slice/stack?
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_1?
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_2?
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_rotation/strided_slice?
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_1/stack?
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_1?
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_2?
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_1?
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast?
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_2/stack?
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_1?
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_2?
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_2?
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast_1?
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&random_rotation/stateful_uniform/shape?
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$random_rotation/stateful_uniform/min?
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$random_rotation/stateful_uniform/max?
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation/stateful_uniform/Const?
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2'
%random_rotation/stateful_uniform/Prod?
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_rotation/stateful_uniform/Cast/x?
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'random_rotation/stateful_uniform/Cast_1?
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:21
/random_rotation/stateful_uniform/RngReadAndSkip?
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4random_rotation/stateful_uniform/strided_slice/stack?
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_1?
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_2?
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask20
.random_rotation/stateful_uniform/strided_slice?
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02*
(random_rotation/stateful_uniform/Bitcast?
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice_1/stack?
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_1?
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_2?
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:22
0random_rotation/stateful_uniform/strided_slice_1?
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation/stateful_uniform/Bitcast_1?
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2?
=random_rotation/stateful_uniform/StatelessRandomUniformV2/alg?
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????2;
9random_rotation/stateful_uniform/StatelessRandomUniformV2?
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_rotation/stateful_uniform/sub?
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2&
$random_rotation/stateful_uniform/mul?
 random_rotation/stateful_uniformAdd(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2"
 random_rotation/stateful_uniform?
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%random_rotation/rotation_matrix/sub/y?
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2%
#random_rotation/rotation_matrix/sub?
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Cos?
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_1/y?
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_1?
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/mul?
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Sin?
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_2/y?
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_2?
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_1?
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_3?
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_4?
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)random_rotation/rotation_matrix/truediv/y?
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2)
'random_rotation/rotation_matrix/truediv?
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_5/y?
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_5?
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_1?
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_6/y?
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_6?
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_2?
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_1?
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_7/y?
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_7?
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_3?
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/add?
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_8?
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation/rotation_matrix/truediv_1/y?
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation/rotation_matrix/truediv_1?
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:2'
%random_rotation/rotation_matrix/Shape?
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3random_rotation/rotation_matrix/strided_slice/stack?
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_1?
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_2?
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-random_rotation/rotation_matrix/strided_slice?
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_2?
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_1/stack?
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_1/stack_1?
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_1/stack_2?
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_1?
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_2?
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_2/stack?
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_2/stack_1?
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_2/stack_2?
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_2?
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Neg?
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_3/stack?
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_3/stack_1?
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_3/stack_2?
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_3?
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_3?
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_4/stack?
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_4/stack_1?
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_4/stack_2?
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_4?
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_3?
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_5/stack?
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_5/stack_1?
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_5/stack_2?
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_5?
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_6/stack?
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_6/stack_1?
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_6/stack_2?
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_6?
+random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/zeros/mul/y?
)random_rotation/rotation_matrix/zeros/mulMul6random_rotation/rotation_matrix/strided_slice:output:04random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2+
)random_rotation/rotation_matrix/zeros/mul?
,random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2.
,random_rotation/rotation_matrix/zeros/Less/y?
*random_rotation/rotation_matrix/zeros/LessLess-random_rotation/rotation_matrix/zeros/mul:z:05random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2,
*random_rotation/rotation_matrix/zeros/Less?
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation/rotation_matrix/zeros/packed/1?
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,random_rotation/rotation_matrix/zeros/packed?
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+random_rotation/rotation_matrix/zeros/Const?
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/zeros?
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/concat/axis?
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2(
&random_rotation/rotation_matrix/concatx
random_rotation/transform/ShapeShapeinputs*
T0*
_output_shapes
:2!
random_rotation/transform/Shape?
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_rotation/transform/strided_slice/stack?
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_1?
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_2?
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'random_rotation/transform/strided_slice?
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$random_rotation/transform/fill_value?
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR26
4random_rotation/transform/ImageProjectiveTransformV3?
random_zoom/ShapeShapeIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom/Shape?
random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
random_zoom/strided_slice/stack?
!random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice/stack_1?
!random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice/stack_2?
random_zoom/strided_sliceStridedSlicerandom_zoom/Shape:output:0(random_zoom/strided_slice/stack:output:0*random_zoom/strided_slice/stack_1:output:0*random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice?
!random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice_1/stack?
#random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_1/stack_1?
#random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_1/stack_2?
random_zoom/strided_slice_1StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_1/stack:output:0,random_zoom/strided_slice_1/stack_1:output:0,random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice_1?
random_zoom/CastCast$random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom/Cast?
!random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice_2/stack?
#random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_2/stack_1?
#random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_2/stack_2?
random_zoom/strided_slice_2StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_2/stack:output:0,random_zoom/strided_slice_2/stack_1:output:0,random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice_2?
random_zoom/Cast_1Cast$random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom/Cast_1?
$random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$random_zoom/stateful_uniform/shape/1?
"random_zoom/stateful_uniform/shapePack"random_zoom/strided_slice:output:0-random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"random_zoom/stateful_uniform/shape?
 random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *33s?2"
 random_zoom/stateful_uniform/min?
 random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff??2"
 random_zoom/stateful_uniform/max?
"random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"random_zoom/stateful_uniform/Const?
!random_zoom/stateful_uniform/ProdProd+random_zoom/stateful_uniform/shape:output:0+random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2#
!random_zoom/stateful_uniform/Prod?
#random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/stateful_uniform/Cast/x?
#random_zoom/stateful_uniform/Cast_1Cast*random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#random_zoom/stateful_uniform/Cast_1?
+random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkip4random_zoom_stateful_uniform_rngreadandskip_resource,random_zoom/stateful_uniform/Cast/x:output:0'random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:2-
+random_zoom/stateful_uniform/RngReadAndSkip?
0random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0random_zoom/stateful_uniform/strided_slice/stack?
2random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice/stack_1?
2random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice/stack_2?
*random_zoom/stateful_uniform/strided_sliceStridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:09random_zoom/stateful_uniform/strided_slice/stack:output:0;random_zoom/stateful_uniform/strided_slice/stack_1:output:0;random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2,
*random_zoom/stateful_uniform/strided_slice?
$random_zoom/stateful_uniform/BitcastBitcast3random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02&
$random_zoom/stateful_uniform/Bitcast?
2random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice_1/stack?
4random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom/stateful_uniform/strided_slice_1/stack_1?
4random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom/stateful_uniform/strided_slice_1/stack_2?
,random_zoom/stateful_uniform/strided_slice_1StridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:0;random_zoom/stateful_uniform/strided_slice_1/stack:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2.
,random_zoom/stateful_uniform/strided_slice_1?
&random_zoom/stateful_uniform/Bitcast_1Bitcast5random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom/stateful_uniform/Bitcast_1?
9random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2;
9random_zoom/stateful_uniform/StatelessRandomUniformV2/alg?
5random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2+random_zoom/stateful_uniform/shape:output:0/random_zoom/stateful_uniform/Bitcast_1:output:0-random_zoom/stateful_uniform/Bitcast:output:0Brandom_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????27
5random_zoom/stateful_uniform/StatelessRandomUniformV2?
 random_zoom/stateful_uniform/subSub)random_zoom/stateful_uniform/max:output:0)random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2"
 random_zoom/stateful_uniform/sub?
 random_zoom/stateful_uniform/mulMul>random_zoom/stateful_uniform/StatelessRandomUniformV2:output:0$random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2"
 random_zoom/stateful_uniform/mul?
random_zoom/stateful_uniformAdd$random_zoom/stateful_uniform/mul:z:0)random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/stateful_uniformt
random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom/concat/axis?
random_zoom/concatConcatV2 random_zoom/stateful_uniform:z:0 random_zoom/stateful_uniform:z:0 random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom/concat?
random_zoom/zoom_matrix/ShapeShaperandom_zoom/concat:output:0*
T0*
_output_shapes
:2
random_zoom/zoom_matrix/Shape?
+random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_zoom/zoom_matrix/strided_slice/stack?
-random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom/zoom_matrix/strided_slice/stack_1?
-random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom/zoom_matrix/strided_slice/stack_2?
%random_zoom/zoom_matrix/strided_sliceStridedSlice&random_zoom/zoom_matrix/Shape:output:04random_zoom/zoom_matrix/strided_slice/stack:output:06random_zoom/zoom_matrix/strided_slice/stack_1:output:06random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%random_zoom/zoom_matrix/strided_slice?
random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_zoom/zoom_matrix/sub/y?
random_zoom/zoom_matrix/subSubrandom_zoom/Cast_1:y:0&random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom/zoom_matrix/sub?
!random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!random_zoom/zoom_matrix/truediv/y?
random_zoom/zoom_matrix/truedivRealDivrandom_zoom/zoom_matrix/sub:z:0*random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2!
random_zoom/zoom_matrix/truediv?
-random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2/
-random_zoom/zoom_matrix/strided_slice_1/stack?
/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_1/stack_1?
/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_1/stack_2?
'random_zoom/zoom_matrix/strided_slice_1StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_1/stack:output:08random_zoom/zoom_matrix/strided_slice_1/stack_1:output:08random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_1?
random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom/zoom_matrix/sub_1/x?
random_zoom/zoom_matrix/sub_1Sub(random_zoom/zoom_matrix/sub_1/x:output:00random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/sub_1?
random_zoom/zoom_matrix/mulMul#random_zoom/zoom_matrix/truediv:z:0!random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/mul?
random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom/zoom_matrix/sub_2/y?
random_zoom/zoom_matrix/sub_2Subrandom_zoom/Cast:y:0(random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
random_zoom/zoom_matrix/sub_2?
#random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom/zoom_matrix/truediv_1/y?
!random_zoom/zoom_matrix/truediv_1RealDiv!random_zoom/zoom_matrix/sub_2:z:0,random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom/zoom_matrix/truediv_1?
-random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2/
-random_zoom/zoom_matrix/strided_slice_2/stack?
/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_2/stack_1?
/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_2/stack_2?
'random_zoom/zoom_matrix/strided_slice_2StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_2/stack:output:08random_zoom/zoom_matrix/strided_slice_2/stack_1:output:08random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_2?
random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom/zoom_matrix/sub_3/x?
random_zoom/zoom_matrix/sub_3Sub(random_zoom/zoom_matrix/sub_3/x:output:00random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/sub_3?
random_zoom/zoom_matrix/mul_1Mul%random_zoom/zoom_matrix/truediv_1:z:0!random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/mul_1?
-random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2/
-random_zoom/zoom_matrix/strided_slice_3/stack?
/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_3/stack_1?
/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_3/stack_2?
'random_zoom/zoom_matrix/strided_slice_3StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_3/stack:output:08random_zoom/zoom_matrix/strided_slice_3/stack_1:output:08random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_3?
#random_zoom/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/zoom_matrix/zeros/mul/y?
!random_zoom/zoom_matrix/zeros/mulMul.random_zoom/zoom_matrix/strided_slice:output:0,random_zoom/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom/zoom_matrix/zeros/mul?
$random_zoom/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$random_zoom/zoom_matrix/zeros/Less/y?
"random_zoom/zoom_matrix/zeros/LessLess%random_zoom/zoom_matrix/zeros/mul:z:0-random_zoom/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"random_zoom/zoom_matrix/zeros/Less?
&random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom/zoom_matrix/zeros/packed/1?
$random_zoom/zoom_matrix/zeros/packedPack.random_zoom/zoom_matrix/strided_slice:output:0/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom/zoom_matrix/zeros/packed?
#random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#random_zoom/zoom_matrix/zeros/Const?
random_zoom/zoom_matrix/zerosFill-random_zoom/zoom_matrix/zeros/packed:output:0,random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/zeros?
%random_zoom/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom/zoom_matrix/zeros_1/mul/y?
#random_zoom/zoom_matrix/zeros_1/mulMul.random_zoom/zoom_matrix/strided_slice:output:0.random_zoom/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom/zoom_matrix/zeros_1/mul?
&random_zoom/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom/zoom_matrix/zeros_1/Less/y?
$random_zoom/zoom_matrix/zeros_1/LessLess'random_zoom/zoom_matrix/zeros_1/mul:z:0/random_zoom/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom/zoom_matrix/zeros_1/Less?
(random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom/zoom_matrix/zeros_1/packed/1?
&random_zoom/zoom_matrix/zeros_1/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom/zoom_matrix/zeros_1/packed?
%random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom/zoom_matrix/zeros_1/Const?
random_zoom/zoom_matrix/zeros_1Fill/random_zoom/zoom_matrix/zeros_1/packed:output:0.random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom/zoom_matrix/zeros_1?
-random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2/
-random_zoom/zoom_matrix/strided_slice_4/stack?
/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_4/stack_1?
/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_4/stack_2?
'random_zoom/zoom_matrix/strided_slice_4StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_4/stack:output:08random_zoom/zoom_matrix/strided_slice_4/stack_1:output:08random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_4?
%random_zoom/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom/zoom_matrix/zeros_2/mul/y?
#random_zoom/zoom_matrix/zeros_2/mulMul.random_zoom/zoom_matrix/strided_slice:output:0.random_zoom/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom/zoom_matrix/zeros_2/mul?
&random_zoom/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom/zoom_matrix/zeros_2/Less/y?
$random_zoom/zoom_matrix/zeros_2/LessLess'random_zoom/zoom_matrix/zeros_2/mul:z:0/random_zoom/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom/zoom_matrix/zeros_2/Less?
(random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom/zoom_matrix/zeros_2/packed/1?
&random_zoom/zoom_matrix/zeros_2/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom/zoom_matrix/zeros_2/packed?
%random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom/zoom_matrix/zeros_2/Const?
random_zoom/zoom_matrix/zeros_2Fill/random_zoom/zoom_matrix/zeros_2/packed:output:0.random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom/zoom_matrix/zeros_2?
#random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/zoom_matrix/concat/axis?
random_zoom/zoom_matrix/concatConcatV20random_zoom/zoom_matrix/strided_slice_3:output:0&random_zoom/zoom_matrix/zeros:output:0random_zoom/zoom_matrix/mul:z:0(random_zoom/zoom_matrix/zeros_1:output:00random_zoom/zoom_matrix/strided_slice_4:output:0!random_zoom/zoom_matrix/mul_1:z:0(random_zoom/zoom_matrix/zeros_2:output:0,random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2 
random_zoom/zoom_matrix/concat?
random_zoom/transform/ShapeShapeIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom/transform/Shape?
)random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)random_zoom/transform/strided_slice/stack?
+random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom/transform/strided_slice/stack_1?
+random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom/transform/strided_slice/stack_2?
#random_zoom/transform/strided_sliceStridedSlice$random_zoom/transform/Shape:output:02random_zoom/transform/strided_slice/stack:output:04random_zoom/transform/strided_slice/stack_1:output:04random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2%
#random_zoom/transform/strided_slice?
 random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 random_zoom/transform/fill_value?
0random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Irandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0'random_zoom/zoom_matrix/concat:output:0,random_zoom/transform/strided_slice:output:0)random_zoom/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR22
0random_zoom/transform/ImageProjectiveTransformV3?
IdentityIdentityErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:00^random_rotation/stateful_uniform/RngReadAndSkip,^random_zoom/stateful_uniform/RngReadAndSkip*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip2Z
+random_zoom/stateful_uniform/RngReadAndSkip+random_zoom/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_2_layer_call_and_return_conditional_losses_145640

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_footer_layer_call_and_return_conditional_losses_148839

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148119

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_5_layer_call_fn_148328

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1450132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
I
-__inference_activation_5_layer_call_fn_148403

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????RR?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_1455162
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????RR?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????RR?:X T
0
_output_shapes
:?????????RR?
 
_user_specified_nameinputs
?
?
'__inference_footer_layer_call_fn_148848

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_footer_layer_call_and_return_conditional_losses_1456902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
ř
?"
__inference__traced_save_149191
file_prefix:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop)
%savev2_nav_kernel_read_readvariableop'
#savev2_nav_bias_read_readvariableop*
&savev2_side_kernel_read_readvariableop(
$savev2_side_bias_read_readvariableop,
(savev2_footer_kernel_read_readvariableop*
&savev2_footer_bias_read_readvariableop*
&savev2_main_kernel_read_readvariableop(
$savev2_main_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop0
,savev2_false_positives_1_read_readvariableop/
+savev2_true_positives_2_read_readvariableop0
,savev2_false_positives_2_read_readvariableop&
"savev2_total_5_read_readvariableop&
"savev2_count_5_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_4_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_4_beta_rms_read_readvariableop:
6savev2_rmsprop_conv2d_4_kernel_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_5_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_5_beta_rms_read_readvariableop:
6savev2_rmsprop_conv2d_5_kernel_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_6_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_6_beta_rms_read_readvariableop:
6savev2_rmsprop_conv2d_6_kernel_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_7_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_7_beta_rms_read_readvariableop:
6savev2_rmsprop_conv2d_7_kernel_rms_read_readvariableop9
5savev2_rmsprop_dense_2_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_2_bias_rms_read_readvariableop9
5savev2_rmsprop_dense_3_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_3_bias_rms_read_readvariableop5
1savev2_rmsprop_nav_kernel_rms_read_readvariableop3
/savev2_rmsprop_nav_bias_rms_read_readvariableop6
2savev2_rmsprop_side_kernel_rms_read_readvariableop4
0savev2_rmsprop_side_bias_rms_read_readvariableop8
4savev2_rmsprop_footer_kernel_rms_read_readvariableop6
2savev2_rmsprop_footer_bias_rms_read_readvariableop6
2savev2_rmsprop_main_kernel_rms_read_readvariableop4
0savev2_rmsprop_main_bias_rms_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?*
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*?)
value?)B?)RB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB:layer-2/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-2/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/5/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/5/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/6/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/6/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/7/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/7/false_positives/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*?
value?B?RB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?!
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop%savev2_nav_kernel_read_readvariableop#savev2_nav_bias_read_readvariableop&savev2_side_kernel_read_readvariableop$savev2_side_bias_read_readvariableop(savev2_footer_kernel_read_readvariableop&savev2_footer_bias_read_readvariableop&savev2_main_kernel_read_readvariableop$savev2_main_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop,savev2_false_positives_1_read_readvariableop+savev2_true_positives_2_read_readvariableop,savev2_false_positives_2_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableopBsavev2_rmsprop_batch_normalization_4_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_4_beta_rms_read_readvariableop6savev2_rmsprop_conv2d_4_kernel_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_5_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_5_beta_rms_read_readvariableop6savev2_rmsprop_conv2d_5_kernel_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_6_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_6_beta_rms_read_readvariableop6savev2_rmsprop_conv2d_6_kernel_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_7_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_7_beta_rms_read_readvariableop6savev2_rmsprop_conv2d_7_kernel_rms_read_readvariableop5savev2_rmsprop_dense_2_kernel_rms_read_readvariableop3savev2_rmsprop_dense_2_bias_rms_read_readvariableop5savev2_rmsprop_dense_3_kernel_rms_read_readvariableop3savev2_rmsprop_dense_3_bias_rms_read_readvariableop1savev2_rmsprop_nav_kernel_rms_read_readvariableop/savev2_rmsprop_nav_bias_rms_read_readvariableop2savev2_rmsprop_side_kernel_rms_read_readvariableop0savev2_rmsprop_side_bias_rms_read_readvariableop4savev2_rmsprop_footer_kernel_rms_read_readvariableop2savev2_rmsprop_footer_bias_rms_read_readvariableop2savev2_rmsprop_main_kernel_rms_read_readvariableop0savev2_rmsprop_main_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *`
dtypesV
T2R			2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::@:@:@:@:@:@?:?:?:?:?:??:?:?:?:?:??:	?@:@:@ : : :: :: :: :: : : : : ::: : : : : : : : : : ::::::: : :::@:@:@:@?:?:?:??:?:?:??:	?@:@:@ : : :: :: :: :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 	

_output_shapes
:@:-
)
'
_output_shapes
:@?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

: :  

_output_shapes
::!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: : &

_output_shapes
:: '

_output_shapes
::(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: : 2

_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
:: 6

_output_shapes
:: 7

_output_shapes
::8

_output_shapes
: :9

_output_shapes
: : :

_output_shapes
:: ;

_output_shapes
::,<(
&
_output_shapes
:@: =

_output_shapes
:@: >

_output_shapes
:@:-?)
'
_output_shapes
:@?:!@

_output_shapes	
:?:!A

_output_shapes	
:?:.B*
(
_output_shapes
:??:!C

_output_shapes	
:?:!D

_output_shapes	
:?:.E*
(
_output_shapes
:??:%F!

_output_shapes
:	?@: G

_output_shapes
:@:$H 

_output_shapes

:@ : I

_output_shapes
: :$J 

_output_shapes

: : K

_output_shapes
::$L 

_output_shapes

: : M

_output_shapes
::$N 

_output_shapes

: : O

_output_shapes
::$P 

_output_shapes

: : Q

_output_shapes
::R

_output_shapes
: 
?
?
D__inference_conv2d_5_layer_call_and_return_conditional_losses_148386

inputs9
conv2d_readvariableop_resource:@?
identity??Conv2D/ReadVariableOp?1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????RR?*
paddingVALID*
strides
2
Conv2D?
1conv2d_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype023
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_5/kernel/Regularizer/SquareSquare9conv2d_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2$
"conv2d_5/kernel/Regularizer/Square?
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_5/kernel/Regularizer/Const?
conv2d_5/kernel/Regularizer/SumSum&conv2d_5/kernel/Regularizer/Square:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/Sum?
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_5/kernel/Regularizer/mul/x?
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/mul?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:?????????RR?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????TT@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp1conv2d_5/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????TT@
 
_user_specified_nameinputs
?

j
F__inference_sequential_layer_call_and_return_conditional_losses_144351
resizing_input
identity}
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing/resize/size?
resizing/resize/ResizeBilinearResizeBilinearresizing_inputresizing/resize/size:output:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(2 
resizing/resize/ResizeBilineari
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/addo
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:a ]
1
_output_shapes
:???????????
(
_user_specified_nameresizing_input
?
?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148155

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:???????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_6_layer_call_fn_148488

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1451512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148421

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
I
-__inference_sequential_1_layer_call_fn_148065

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1443592
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_4_layer_call_fn_145129

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1451232
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_148912V
:conv2d_7_kernel_regularizer_square_readvariableop_resource:??
identity??1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
1conv2d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_7_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:??*
dtype023
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_7/kernel/Regularizer/SquareSquare9conv2d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_7/kernel/Regularizer/Square?
!conv2d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_7/kernel/Regularizer/Const?
conv2d_7/kernel/Regularizer/SumSum&conv2d_7/kernel/Regularizer/Square:y:0*conv2d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/Sum?
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_7/kernel/Regularizer/mul/x?
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0(conv2d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/mul?
IdentityIdentity#conv2d_7/kernel/Regularizer/mul:z:02^conv2d_7/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp1conv2d_7/kernel/Regularizer/Square/ReadVariableOp
β
?
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_146623	
input*
batch_normalization_4_146508:*
batch_normalization_4_146510:*
batch_normalization_4_146512:*
batch_normalization_4_146514:)
conv2d_4_146517:@*
batch_normalization_5_146522:@*
batch_normalization_5_146524:@*
batch_normalization_5_146526:@*
batch_normalization_5_146528:@*
conv2d_5_146531:@?+
batch_normalization_6_146536:	?+
batch_normalization_6_146538:	?+
batch_normalization_6_146540:	?+
batch_normalization_6_146542:	?+
conv2d_6_146545:??+
batch_normalization_7_146550:	?+
batch_normalization_7_146552:	?+
batch_normalization_7_146554:	?+
batch_normalization_7_146556:	?+
conv2d_7_146559:??!
dense_2_146565:	?@
dense_2_146567:@ 
dense_3_146570:@ 
dense_3_146572: 
main_146575: 
main_146577:
footer_146580: 
footer_146582:
side_146585: 
side_146587:

nav_146590: 

nav_146592:
identity

identity_1

identity_2

identity_3??-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall?-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?1conv2d_4/kernel/Regularizer/Square/ReadVariableOp? conv2d_5/StatefulPartitionedCall?1conv2d_5/kernel/Regularizer/Square/ReadVariableOp? conv2d_6/StatefulPartitionedCall?1conv2d_6/kernel/Regularizer/Square/ReadVariableOp? conv2d_7/StatefulPartitionedCall?1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?footer/StatefulPartitionedCall?main/StatefulPartitionedCall?nav/StatefulPartitionedCall?side/StatefulPartitionedCall?
sequential/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1443032
sequential/PartitionedCall?
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1443592
sequential_1/PartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0batch_normalization_4_146508batch_normalization_4_146510batch_normalization_4_146512batch_normalization_4_146514*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1454322/
-batch_normalization_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv2d_4_146517*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1454552"
 conv2d_4/StatefulPartitionedCall?
activation_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_1454642
activation_4/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????TT@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1449852!
max_pooling2d_3/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0batch_normalization_5_146522batch_normalization_5_146524batch_normalization_5_146526batch_normalization_5_146528*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????TT@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1454842/
-batch_normalization_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_5_146531*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????RR?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1455072"
 conv2d_5/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????RR?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_1455162
activation_5/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????))?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1451232!
max_pooling2d_4/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_146536batch_normalization_6_146538batch_normalization_6_146540batch_normalization_6_146542*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????))?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1455362/
-batch_normalization_6/StatefulPartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_6_146545*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????''?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_1455592"
 conv2d_6/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????''?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_1455682
activation_6/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1452612!
max_pooling2d_5/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_146550batch_normalization_7_146552batch_normalization_7_146554batch_normalization_7_146556*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1455882/
-batch_normalization_7/StatefulPartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0conv2d_7_146559*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_1456112"
 conv2d_7/StatefulPartitionedCall?
activation_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_1456202
activation_7/PartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_1454002,
*global_average_pooling2d_1/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1456282
dropout_1/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_146565dense_2_146567*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1456402!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_146570dense_3_146572*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1456562!
dense_3/StatefulPartitionedCall?
main/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0main_146575main_146577*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_main_layer_call_and_return_conditional_losses_1456732
main/StatefulPartitionedCall?
footer/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0footer_146580footer_146582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_footer_layer_call_and_return_conditional_losses_1456902 
footer/StatefulPartitionedCall?
side/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0side_146585side_146587*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_side_layer_call_and_return_conditional_losses_1457072
side/StatefulPartitionedCall?
nav/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0
nav_146590
nav_146592*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_nav_layer_call_and_return_conditional_losses_1457242
nav/StatefulPartitionedCall?
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_4_146517*&
_output_shapes
:@*
dtype023
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2$
"conv2d_4/kernel/Regularizer/Square?
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_4/kernel/Regularizer/Const?
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/Sum?
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_4/kernel/Regularizer/mul/x?
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/mul?
1conv2d_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_5_146531*'
_output_shapes
:@?*
dtype023
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_5/kernel/Regularizer/SquareSquare9conv2d_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2$
"conv2d_5/kernel/Regularizer/Square?
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_5/kernel/Regularizer/Const?
conv2d_5/kernel/Regularizer/SumSum&conv2d_5/kernel/Regularizer/Square:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/Sum?
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_5/kernel/Regularizer/mul/x?
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/mul?
1conv2d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_6_146545*(
_output_shapes
:??*
dtype023
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_6/kernel/Regularizer/SquareSquare9conv2d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_6/kernel/Regularizer/Square?
!conv2d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_6/kernel/Regularizer/Const?
conv2d_6/kernel/Regularizer/SumSum&conv2d_6/kernel/Regularizer/Square:y:0*conv2d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/Sum?
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_6/kernel/Regularizer/mul/x?
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0(conv2d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/mul?
1conv2d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_7_146559*(
_output_shapes
:??*
dtype023
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_7/kernel/Regularizer/SquareSquare9conv2d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_7/kernel/Regularizer/Square?
!conv2d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_7/kernel/Regularizer/Const?
conv2d_7/kernel/Regularizer/SumSum&conv2d_7/kernel/Regularizer/Square:y:0*conv2d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/Sum?
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_7/kernel/Regularizer/mul/x?
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0(conv2d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/mul?
IdentityIdentity$nav/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity%side/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity'footer/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity%main/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2f
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp1conv2d_5/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2f
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp1conv2d_6/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2f
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp1conv2d_7/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
footer/StatefulPartitionedCallfooter/StatefulPartitionedCall2<
main/StatefulPartitionedCallmain/StatefulPartitionedCall2:
nav/StatefulPartitionedCallnav/StatefulPartitionedCall2<
side/StatefulPartitionedCallside/StatefulPartitionedCall:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?
d
H__inference_activation_6_layer_call_and_return_conditional_losses_148558

inputs
identityT
EluEluinputs*
T0*0
_output_shapes
:?????????''?2
Elun
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:?????????''?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????''?:X T
0
_output_shapes
:?????????''?
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_145536

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????))?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????))?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????))?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????))?
 
_user_specified_nameinputs
?
?
5__inference_model_1_simple_model_layer_call_fn_147474

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@$
	unknown_8:@?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?&

unknown_13:??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?&

unknown_18:??

unknown_19:	?@

unknown_20:@

unknown_21:@ 

unknown_22: 

unknown_23: 

unknown_24:

unknown_25: 

unknown_26:

unknown_27: 

unknown_28:

unknown_29: 

unknown_30:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *`
_output_shapesN
L:?????????:?????????:?????????:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_1457582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148581

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_1_layer_call_fn_148074

inputs
unknown:	
	unknown_0:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1446012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
?__inference_nav_layer_call_and_return_conditional_losses_145724

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_147819

inputsF
8random_rotation_stateful_uniform_rngreadandskip_resource:	B
4random_zoom_stateful_uniform_rngreadandskip_resource:	
identity??/random_rotation/stateful_uniform/RngReadAndSkip?+random_zoom/stateful_uniform/RngReadAndSkipd
random_rotation/ShapeShapeinputs*
T0*
_output_shapes
:2
random_rotation/Shape?
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#random_rotation/strided_slice/stack?
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_1?
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_2?
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_rotation/strided_slice?
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_1/stack?
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_1?
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_2?
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_1?
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast?
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_2/stack?
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_1?
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_2?
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_2?
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast_1?
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&random_rotation/stateful_uniform/shape?
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$random_rotation/stateful_uniform/min?
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$random_rotation/stateful_uniform/max?
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation/stateful_uniform/Const?
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2'
%random_rotation/stateful_uniform/Prod?
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_rotation/stateful_uniform/Cast/x?
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'random_rotation/stateful_uniform/Cast_1?
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:21
/random_rotation/stateful_uniform/RngReadAndSkip?
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4random_rotation/stateful_uniform/strided_slice/stack?
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_1?
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice/stack_2?
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask20
.random_rotation/stateful_uniform/strided_slice?
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02*
(random_rotation/stateful_uniform/Bitcast?
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6random_rotation/stateful_uniform/strided_slice_1/stack?
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_1?
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation/stateful_uniform/strided_slice_1/stack_2?
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:22
0random_rotation/stateful_uniform/strided_slice_1?
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation/stateful_uniform/Bitcast_1?
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2?
=random_rotation/stateful_uniform/StatelessRandomUniformV2/alg?
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????2;
9random_rotation/stateful_uniform/StatelessRandomUniformV2?
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_rotation/stateful_uniform/sub?
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2&
$random_rotation/stateful_uniform/mul?
 random_rotation/stateful_uniformAdd(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2"
 random_rotation/stateful_uniform?
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%random_rotation/rotation_matrix/sub/y?
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2%
#random_rotation/rotation_matrix/sub?
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Cos?
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_1/y?
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_1?
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/mul?
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Sin?
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_2/y?
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_2?
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_1?
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_3?
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_4?
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)random_rotation/rotation_matrix/truediv/y?
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2)
'random_rotation/rotation_matrix/truediv?
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_5/y?
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_5?
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_1?
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_6/y?
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_6?
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_2?
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_1?
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_7/y?
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_7?
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_3?
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/add?
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_8?
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation/rotation_matrix/truediv_1/y?
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation/rotation_matrix/truediv_1?
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:2'
%random_rotation/rotation_matrix/Shape?
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3random_rotation/rotation_matrix/strided_slice/stack?
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_1?
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_2?
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-random_rotation/rotation_matrix/strided_slice?
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_2?
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_1/stack?
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_1/stack_1?
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_1/stack_2?
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_1?
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_2?
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_2/stack?
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_2/stack_1?
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_2/stack_2?
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_2?
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Neg?
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_3/stack?
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_3/stack_1?
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_3/stack_2?
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_3?
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_3?
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_4/stack?
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_4/stack_1?
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_4/stack_2?
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_4?
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_3?
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_5/stack?
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_5/stack_1?
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_5/stack_2?
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_5?
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_6/stack?
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_6/stack_1?
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_6/stack_2?
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_6?
+random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/zeros/mul/y?
)random_rotation/rotation_matrix/zeros/mulMul6random_rotation/rotation_matrix/strided_slice:output:04random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2+
)random_rotation/rotation_matrix/zeros/mul?
,random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2.
,random_rotation/rotation_matrix/zeros/Less/y?
*random_rotation/rotation_matrix/zeros/LessLess-random_rotation/rotation_matrix/zeros/mul:z:05random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2,
*random_rotation/rotation_matrix/zeros/Less?
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation/rotation_matrix/zeros/packed/1?
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,random_rotation/rotation_matrix/zeros/packed?
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+random_rotation/rotation_matrix/zeros/Const?
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/zeros?
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/concat/axis?
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2(
&random_rotation/rotation_matrix/concatx
random_rotation/transform/ShapeShapeinputs*
T0*
_output_shapes
:2!
random_rotation/transform/Shape?
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_rotation/transform/strided_slice/stack?
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_1?
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_2?
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'random_rotation/transform/strided_slice?
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$random_rotation/transform/fill_value?
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR26
4random_rotation/transform/ImageProjectiveTransformV3?
random_zoom/ShapeShapeIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom/Shape?
random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
random_zoom/strided_slice/stack?
!random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice/stack_1?
!random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice/stack_2?
random_zoom/strided_sliceStridedSlicerandom_zoom/Shape:output:0(random_zoom/strided_slice/stack:output:0*random_zoom/strided_slice/stack_1:output:0*random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice?
!random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice_1/stack?
#random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_1/stack_1?
#random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_1/stack_2?
random_zoom/strided_slice_1StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_1/stack:output:0,random_zoom/strided_slice_1/stack_1:output:0,random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice_1?
random_zoom/CastCast$random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom/Cast?
!random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2#
!random_zoom/strided_slice_2/stack?
#random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_2/stack_1?
#random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom/strided_slice_2/stack_2?
random_zoom/strided_slice_2StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_2/stack:output:0,random_zoom/strided_slice_2/stack_1:output:0,random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom/strided_slice_2?
random_zoom/Cast_1Cast$random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom/Cast_1?
$random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$random_zoom/stateful_uniform/shape/1?
"random_zoom/stateful_uniform/shapePack"random_zoom/strided_slice:output:0-random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2$
"random_zoom/stateful_uniform/shape?
 random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *33s?2"
 random_zoom/stateful_uniform/min?
 random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff??2"
 random_zoom/stateful_uniform/max?
"random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"random_zoom/stateful_uniform/Const?
!random_zoom/stateful_uniform/ProdProd+random_zoom/stateful_uniform/shape:output:0+random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2#
!random_zoom/stateful_uniform/Prod?
#random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/stateful_uniform/Cast/x?
#random_zoom/stateful_uniform/Cast_1Cast*random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#random_zoom/stateful_uniform/Cast_1?
+random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkip4random_zoom_stateful_uniform_rngreadandskip_resource,random_zoom/stateful_uniform/Cast/x:output:0'random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:2-
+random_zoom/stateful_uniform/RngReadAndSkip?
0random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0random_zoom/stateful_uniform/strided_slice/stack?
2random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice/stack_1?
2random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice/stack_2?
*random_zoom/stateful_uniform/strided_sliceStridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:09random_zoom/stateful_uniform/strided_slice/stack:output:0;random_zoom/stateful_uniform/strided_slice/stack_1:output:0;random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2,
*random_zoom/stateful_uniform/strided_slice?
$random_zoom/stateful_uniform/BitcastBitcast3random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02&
$random_zoom/stateful_uniform/Bitcast?
2random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:24
2random_zoom/stateful_uniform/strided_slice_1/stack?
4random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom/stateful_uniform/strided_slice_1/stack_1?
4random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4random_zoom/stateful_uniform/strided_slice_1/stack_2?
,random_zoom/stateful_uniform/strided_slice_1StridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:0;random_zoom/stateful_uniform/strided_slice_1/stack:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2.
,random_zoom/stateful_uniform/strided_slice_1?
&random_zoom/stateful_uniform/Bitcast_1Bitcast5random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02(
&random_zoom/stateful_uniform/Bitcast_1?
9random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2;
9random_zoom/stateful_uniform/StatelessRandomUniformV2/alg?
5random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2+random_zoom/stateful_uniform/shape:output:0/random_zoom/stateful_uniform/Bitcast_1:output:0-random_zoom/stateful_uniform/Bitcast:output:0Brandom_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????27
5random_zoom/stateful_uniform/StatelessRandomUniformV2?
 random_zoom/stateful_uniform/subSub)random_zoom/stateful_uniform/max:output:0)random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2"
 random_zoom/stateful_uniform/sub?
 random_zoom/stateful_uniform/mulMul>random_zoom/stateful_uniform/StatelessRandomUniformV2:output:0$random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2"
 random_zoom/stateful_uniform/mul?
random_zoom/stateful_uniformAdd$random_zoom/stateful_uniform/mul:z:0)random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/stateful_uniformt
random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom/concat/axis?
random_zoom/concatConcatV2 random_zoom/stateful_uniform:z:0 random_zoom/stateful_uniform:z:0 random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom/concat?
random_zoom/zoom_matrix/ShapeShaperandom_zoom/concat:output:0*
T0*
_output_shapes
:2
random_zoom/zoom_matrix/Shape?
+random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+random_zoom/zoom_matrix/strided_slice/stack?
-random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom/zoom_matrix/strided_slice/stack_1?
-random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom/zoom_matrix/strided_slice/stack_2?
%random_zoom/zoom_matrix/strided_sliceStridedSlice&random_zoom/zoom_matrix/Shape:output:04random_zoom/zoom_matrix/strided_slice/stack:output:06random_zoom/zoom_matrix/strided_slice/stack_1:output:06random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%random_zoom/zoom_matrix/strided_slice?
random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_zoom/zoom_matrix/sub/y?
random_zoom/zoom_matrix/subSubrandom_zoom/Cast_1:y:0&random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom/zoom_matrix/sub?
!random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2#
!random_zoom/zoom_matrix/truediv/y?
random_zoom/zoom_matrix/truedivRealDivrandom_zoom/zoom_matrix/sub:z:0*random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2!
random_zoom/zoom_matrix/truediv?
-random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2/
-random_zoom/zoom_matrix/strided_slice_1/stack?
/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_1/stack_1?
/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_1/stack_2?
'random_zoom/zoom_matrix/strided_slice_1StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_1/stack:output:08random_zoom/zoom_matrix/strided_slice_1/stack_1:output:08random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_1?
random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom/zoom_matrix/sub_1/x?
random_zoom/zoom_matrix/sub_1Sub(random_zoom/zoom_matrix/sub_1/x:output:00random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/sub_1?
random_zoom/zoom_matrix/mulMul#random_zoom/zoom_matrix/truediv:z:0!random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/mul?
random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom/zoom_matrix/sub_2/y?
random_zoom/zoom_matrix/sub_2Subrandom_zoom/Cast:y:0(random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2
random_zoom/zoom_matrix/sub_2?
#random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom/zoom_matrix/truediv_1/y?
!random_zoom/zoom_matrix/truediv_1RealDiv!random_zoom/zoom_matrix/sub_2:z:0,random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom/zoom_matrix/truediv_1?
-random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2/
-random_zoom/zoom_matrix/strided_slice_2/stack?
/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_2/stack_1?
/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_2/stack_2?
'random_zoom/zoom_matrix/strided_slice_2StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_2/stack:output:08random_zoom/zoom_matrix/strided_slice_2/stack_1:output:08random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_2?
random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom/zoom_matrix/sub_3/x?
random_zoom/zoom_matrix/sub_3Sub(random_zoom/zoom_matrix/sub_3/x:output:00random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/sub_3?
random_zoom/zoom_matrix/mul_1Mul%random_zoom/zoom_matrix/truediv_1:z:0!random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/mul_1?
-random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2/
-random_zoom/zoom_matrix/strided_slice_3/stack?
/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_3/stack_1?
/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_3/stack_2?
'random_zoom/zoom_matrix/strided_slice_3StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_3/stack:output:08random_zoom/zoom_matrix/strided_slice_3/stack_1:output:08random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_3?
#random_zoom/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/zoom_matrix/zeros/mul/y?
!random_zoom/zoom_matrix/zeros/mulMul.random_zoom/zoom_matrix/strided_slice:output:0,random_zoom/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom/zoom_matrix/zeros/mul?
$random_zoom/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$random_zoom/zoom_matrix/zeros/Less/y?
"random_zoom/zoom_matrix/zeros/LessLess%random_zoom/zoom_matrix/zeros/mul:z:0-random_zoom/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"random_zoom/zoom_matrix/zeros/Less?
&random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom/zoom_matrix/zeros/packed/1?
$random_zoom/zoom_matrix/zeros/packedPack.random_zoom/zoom_matrix/strided_slice:output:0/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom/zoom_matrix/zeros/packed?
#random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#random_zoom/zoom_matrix/zeros/Const?
random_zoom/zoom_matrix/zerosFill-random_zoom/zoom_matrix/zeros/packed:output:0,random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
random_zoom/zoom_matrix/zeros?
%random_zoom/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom/zoom_matrix/zeros_1/mul/y?
#random_zoom/zoom_matrix/zeros_1/mulMul.random_zoom/zoom_matrix/strided_slice:output:0.random_zoom/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom/zoom_matrix/zeros_1/mul?
&random_zoom/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom/zoom_matrix/zeros_1/Less/y?
$random_zoom/zoom_matrix/zeros_1/LessLess'random_zoom/zoom_matrix/zeros_1/mul:z:0/random_zoom/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom/zoom_matrix/zeros_1/Less?
(random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom/zoom_matrix/zeros_1/packed/1?
&random_zoom/zoom_matrix/zeros_1/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom/zoom_matrix/zeros_1/packed?
%random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom/zoom_matrix/zeros_1/Const?
random_zoom/zoom_matrix/zeros_1Fill/random_zoom/zoom_matrix/zeros_1/packed:output:0.random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom/zoom_matrix/zeros_1?
-random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2/
-random_zoom/zoom_matrix/strided_slice_4/stack?
/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom/zoom_matrix/strided_slice_4/stack_1?
/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/random_zoom/zoom_matrix/strided_slice_4/stack_2?
'random_zoom/zoom_matrix/strided_slice_4StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_4/stack:output:08random_zoom/zoom_matrix/strided_slice_4/stack_1:output:08random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2)
'random_zoom/zoom_matrix/strided_slice_4?
%random_zoom/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom/zoom_matrix/zeros_2/mul/y?
#random_zoom/zoom_matrix/zeros_2/mulMul.random_zoom/zoom_matrix/strided_slice:output:0.random_zoom/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom/zoom_matrix/zeros_2/mul?
&random_zoom/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom/zoom_matrix/zeros_2/Less/y?
$random_zoom/zoom_matrix/zeros_2/LessLess'random_zoom/zoom_matrix/zeros_2/mul:z:0/random_zoom/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom/zoom_matrix/zeros_2/Less?
(random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom/zoom_matrix/zeros_2/packed/1?
&random_zoom/zoom_matrix/zeros_2/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom/zoom_matrix/zeros_2/packed?
%random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom/zoom_matrix/zeros_2/Const?
random_zoom/zoom_matrix/zeros_2Fill/random_zoom/zoom_matrix/zeros_2/packed:output:0.random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom/zoom_matrix/zeros_2?
#random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2%
#random_zoom/zoom_matrix/concat/axis?
random_zoom/zoom_matrix/concatConcatV20random_zoom/zoom_matrix/strided_slice_3:output:0&random_zoom/zoom_matrix/zeros:output:0random_zoom/zoom_matrix/mul:z:0(random_zoom/zoom_matrix/zeros_1:output:00random_zoom/zoom_matrix/strided_slice_4:output:0!random_zoom/zoom_matrix/mul_1:z:0(random_zoom/zoom_matrix/zeros_2:output:0,random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2 
random_zoom/zoom_matrix/concat?
random_zoom/transform/ShapeShapeIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom/transform/Shape?
)random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)random_zoom/transform/strided_slice/stack?
+random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom/transform/strided_slice/stack_1?
+random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom/transform/strided_slice/stack_2?
#random_zoom/transform/strided_sliceStridedSlice$random_zoom/transform/Shape:output:02random_zoom/transform/strided_slice/stack:output:04random_zoom/transform/strided_slice/stack_1:output:04random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2%
#random_zoom/transform/strided_slice?
 random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 random_zoom/transform/fill_value?
0random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Irandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0'random_zoom/zoom_matrix/concat:output:0,random_zoom/transform/strided_slice:output:0)random_zoom/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR22
0random_zoom/transform/ImageProjectiveTransformV3?
IdentityIdentityErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:00^random_rotation/stateful_uniform/RngReadAndSkip,^random_zoom/stateful_uniform/RngReadAndSkip*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip2Z
+random_zoom/stateful_uniform/RngReadAndSkip+random_zoom/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_6_layer_call_fn_148501

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1451952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_146077

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????TT@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????TT@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????TT@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????TT@
 
_user_specified_nameinputs
??
?%
!__inference__wrapped_model_144289	
inputP
Bmodel_1_simple_model_batch_normalization_4_readvariableop_resource:R
Dmodel_1_simple_model_batch_normalization_4_readvariableop_1_resource:a
Smodel_1_simple_model_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:c
Umodel_1_simple_model_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:V
<model_1_simple_model_conv2d_4_conv2d_readvariableop_resource:@P
Bmodel_1_simple_model_batch_normalization_5_readvariableop_resource:@R
Dmodel_1_simple_model_batch_normalization_5_readvariableop_1_resource:@a
Smodel_1_simple_model_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:@c
Umodel_1_simple_model_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:@W
<model_1_simple_model_conv2d_5_conv2d_readvariableop_resource:@?Q
Bmodel_1_simple_model_batch_normalization_6_readvariableop_resource:	?S
Dmodel_1_simple_model_batch_normalization_6_readvariableop_1_resource:	?b
Smodel_1_simple_model_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	?d
Umodel_1_simple_model_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	?X
<model_1_simple_model_conv2d_6_conv2d_readvariableop_resource:??Q
Bmodel_1_simple_model_batch_normalization_7_readvariableop_resource:	?S
Dmodel_1_simple_model_batch_normalization_7_readvariableop_1_resource:	?b
Smodel_1_simple_model_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?d
Umodel_1_simple_model_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?X
<model_1_simple_model_conv2d_7_conv2d_readvariableop_resource:??N
;model_1_simple_model_dense_2_matmul_readvariableop_resource:	?@J
<model_1_simple_model_dense_2_biasadd_readvariableop_resource:@M
;model_1_simple_model_dense_3_matmul_readvariableop_resource:@ J
<model_1_simple_model_dense_3_biasadd_readvariableop_resource: J
8model_1_simple_model_main_matmul_readvariableop_resource: G
9model_1_simple_model_main_biasadd_readvariableop_resource:L
:model_1_simple_model_footer_matmul_readvariableop_resource: I
;model_1_simple_model_footer_biasadd_readvariableop_resource:J
8model_1_simple_model_side_matmul_readvariableop_resource: G
9model_1_simple_model_side_biasadd_readvariableop_resource:I
7model_1_simple_model_nav_matmul_readvariableop_resource: F
8model_1_simple_model_nav_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??Jmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp?Lmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?9model_1_simple_model/batch_normalization_4/ReadVariableOp?;model_1_simple_model/batch_normalization_4/ReadVariableOp_1?Jmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?Lmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?9model_1_simple_model/batch_normalization_5/ReadVariableOp?;model_1_simple_model/batch_normalization_5/ReadVariableOp_1?Jmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Lmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?9model_1_simple_model/batch_normalization_6/ReadVariableOp?;model_1_simple_model/batch_normalization_6/ReadVariableOp_1?Jmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Lmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?9model_1_simple_model/batch_normalization_7/ReadVariableOp?;model_1_simple_model/batch_normalization_7/ReadVariableOp_1?3model_1_simple_model/conv2d_4/Conv2D/ReadVariableOp?3model_1_simple_model/conv2d_5/Conv2D/ReadVariableOp?3model_1_simple_model/conv2d_6/Conv2D/ReadVariableOp?3model_1_simple_model/conv2d_7/Conv2D/ReadVariableOp?3model_1_simple_model/dense_2/BiasAdd/ReadVariableOp?2model_1_simple_model/dense_2/MatMul/ReadVariableOp?3model_1_simple_model/dense_3/BiasAdd/ReadVariableOp?2model_1_simple_model/dense_3/MatMul/ReadVariableOp?2model_1_simple_model/footer/BiasAdd/ReadVariableOp?1model_1_simple_model/footer/MatMul/ReadVariableOp?0model_1_simple_model/main/BiasAdd/ReadVariableOp?/model_1_simple_model/main/MatMul/ReadVariableOp?/model_1_simple_model/nav/BiasAdd/ReadVariableOp?.model_1_simple_model/nav/MatMul/ReadVariableOp?0model_1_simple_model/side/BiasAdd/ReadVariableOp?/model_1_simple_model/side/MatMul/ReadVariableOp?
4model_1_simple_model/sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      26
4model_1_simple_model/sequential/resizing/resize/size?
>model_1_simple_model/sequential/resizing/resize/ResizeBilinearResizeBilinearinput=model_1_simple_model/sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(2@
>model_1_simple_model/sequential/resizing/resize/ResizeBilinear?
0model_1_simple_model/sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;22
0model_1_simple_model/sequential/rescaling/Cast/x?
2model_1_simple_model/sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2model_1_simple_model/sequential/rescaling/Cast_1/x?
-model_1_simple_model/sequential/rescaling/mulMulOmodel_1_simple_model/sequential/resizing/resize/ResizeBilinear:resized_images:09model_1_simple_model/sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2/
-model_1_simple_model/sequential/rescaling/mul?
-model_1_simple_model/sequential/rescaling/addAddV21model_1_simple_model/sequential/rescaling/mul:z:0;model_1_simple_model/sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2/
-model_1_simple_model/sequential/rescaling/add?
9model_1_simple_model/batch_normalization_4/ReadVariableOpReadVariableOpBmodel_1_simple_model_batch_normalization_4_readvariableop_resource*
_output_shapes
:*
dtype02;
9model_1_simple_model/batch_normalization_4/ReadVariableOp?
;model_1_simple_model/batch_normalization_4/ReadVariableOp_1ReadVariableOpDmodel_1_simple_model_batch_normalization_4_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;model_1_simple_model/batch_normalization_4/ReadVariableOp_1?
Jmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_1_simple_model_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02L
Jmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp?
Lmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_1_simple_model_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02N
Lmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?
;model_1_simple_model/batch_normalization_4/FusedBatchNormV3FusedBatchNormV31model_1_simple_model/sequential/rescaling/add:z:0Amodel_1_simple_model/batch_normalization_4/ReadVariableOp:value:0Cmodel_1_simple_model/batch_normalization_4/ReadVariableOp_1:value:0Rmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:???????????:::::*
epsilon%o?:*
is_training( 2=
;model_1_simple_model/batch_normalization_4/FusedBatchNormV3?
3model_1_simple_model/conv2d_4/Conv2D/ReadVariableOpReadVariableOp<model_1_simple_model_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3model_1_simple_model/conv2d_4/Conv2D/ReadVariableOp?
$model_1_simple_model/conv2d_4/Conv2DConv2D?model_1_simple_model/batch_normalization_4/FusedBatchNormV3:y:0;model_1_simple_model/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2&
$model_1_simple_model/conv2d_4/Conv2D?
%model_1_simple_model/activation_4/EluElu-model_1_simple_model/conv2d_4/Conv2D:output:0*
T0*1
_output_shapes
:???????????@2'
%model_1_simple_model/activation_4/Elu?
,model_1_simple_model/max_pooling2d_3/MaxPoolMaxPool3model_1_simple_model/activation_4/Elu:activations:0*/
_output_shapes
:?????????TT@*
ksize
*
paddingVALID*
strides
2.
,model_1_simple_model/max_pooling2d_3/MaxPool?
9model_1_simple_model/batch_normalization_5/ReadVariableOpReadVariableOpBmodel_1_simple_model_batch_normalization_5_readvariableop_resource*
_output_shapes
:@*
dtype02;
9model_1_simple_model/batch_normalization_5/ReadVariableOp?
;model_1_simple_model/batch_normalization_5/ReadVariableOp_1ReadVariableOpDmodel_1_simple_model_batch_normalization_5_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;model_1_simple_model/batch_normalization_5/ReadVariableOp_1?
Jmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_1_simple_model_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
Lmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_1_simple_model_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02N
Lmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
;model_1_simple_model/batch_normalization_5/FusedBatchNormV3FusedBatchNormV35model_1_simple_model/max_pooling2d_3/MaxPool:output:0Amodel_1_simple_model/batch_normalization_5/ReadVariableOp:value:0Cmodel_1_simple_model/batch_normalization_5/ReadVariableOp_1:value:0Rmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????TT@:@:@:@:@:*
epsilon%o?:*
is_training( 2=
;model_1_simple_model/batch_normalization_5/FusedBatchNormV3?
3model_1_simple_model/conv2d_5/Conv2D/ReadVariableOpReadVariableOp<model_1_simple_model_conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3model_1_simple_model/conv2d_5/Conv2D/ReadVariableOp?
$model_1_simple_model/conv2d_5/Conv2DConv2D?model_1_simple_model/batch_normalization_5/FusedBatchNormV3:y:0;model_1_simple_model/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????RR?*
paddingVALID*
strides
2&
$model_1_simple_model/conv2d_5/Conv2D?
%model_1_simple_model/activation_5/EluElu-model_1_simple_model/conv2d_5/Conv2D:output:0*
T0*0
_output_shapes
:?????????RR?2'
%model_1_simple_model/activation_5/Elu?
,model_1_simple_model/max_pooling2d_4/MaxPoolMaxPool3model_1_simple_model/activation_5/Elu:activations:0*0
_output_shapes
:?????????))?*
ksize
*
paddingVALID*
strides
2.
,model_1_simple_model/max_pooling2d_4/MaxPool?
9model_1_simple_model/batch_normalization_6/ReadVariableOpReadVariableOpBmodel_1_simple_model_batch_normalization_6_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_1_simple_model/batch_normalization_6/ReadVariableOp?
;model_1_simple_model/batch_normalization_6/ReadVariableOp_1ReadVariableOpDmodel_1_simple_model_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02=
;model_1_simple_model/batch_normalization_6/ReadVariableOp_1?
Jmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_1_simple_model_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02L
Jmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Lmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_1_simple_model_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02N
Lmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
;model_1_simple_model/batch_normalization_6/FusedBatchNormV3FusedBatchNormV35model_1_simple_model/max_pooling2d_4/MaxPool:output:0Amodel_1_simple_model/batch_normalization_6/ReadVariableOp:value:0Cmodel_1_simple_model/batch_normalization_6/ReadVariableOp_1:value:0Rmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????))?:?:?:?:?:*
epsilon%o?:*
is_training( 2=
;model_1_simple_model/batch_normalization_6/FusedBatchNormV3?
3model_1_simple_model/conv2d_6/Conv2D/ReadVariableOpReadVariableOp<model_1_simple_model_conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3model_1_simple_model/conv2d_6/Conv2D/ReadVariableOp?
$model_1_simple_model/conv2d_6/Conv2DConv2D?model_1_simple_model/batch_normalization_6/FusedBatchNormV3:y:0;model_1_simple_model/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????''?*
paddingVALID*
strides
2&
$model_1_simple_model/conv2d_6/Conv2D?
%model_1_simple_model/activation_6/EluElu-model_1_simple_model/conv2d_6/Conv2D:output:0*
T0*0
_output_shapes
:?????????''?2'
%model_1_simple_model/activation_6/Elu?
,model_1_simple_model/max_pooling2d_5/MaxPoolMaxPool3model_1_simple_model/activation_6/Elu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2.
,model_1_simple_model/max_pooling2d_5/MaxPool?
9model_1_simple_model/batch_normalization_7/ReadVariableOpReadVariableOpBmodel_1_simple_model_batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9model_1_simple_model/batch_normalization_7/ReadVariableOp?
;model_1_simple_model/batch_normalization_7/ReadVariableOp_1ReadVariableOpDmodel_1_simple_model_batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype02=
;model_1_simple_model/batch_normalization_7/ReadVariableOp_1?
Jmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_1_simple_model_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02L
Jmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Lmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_1_simple_model_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02N
Lmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
;model_1_simple_model/batch_normalization_7/FusedBatchNormV3FusedBatchNormV35model_1_simple_model/max_pooling2d_5/MaxPool:output:0Amodel_1_simple_model/batch_normalization_7/ReadVariableOp:value:0Cmodel_1_simple_model/batch_normalization_7/ReadVariableOp_1:value:0Rmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2=
;model_1_simple_model/batch_normalization_7/FusedBatchNormV3?
3model_1_simple_model/conv2d_7/Conv2D/ReadVariableOpReadVariableOp<model_1_simple_model_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3model_1_simple_model/conv2d_7/Conv2D/ReadVariableOp?
$model_1_simple_model/conv2d_7/Conv2DConv2D?model_1_simple_model/batch_normalization_7/FusedBatchNormV3:y:0;model_1_simple_model/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2&
$model_1_simple_model/conv2d_7/Conv2D?
%model_1_simple_model/activation_7/EluElu-model_1_simple_model/conv2d_7/Conv2D:output:0*
T0*0
_output_shapes
:??????????2'
%model_1_simple_model/activation_7/Elu?
Fmodel_1_simple_model/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2H
Fmodel_1_simple_model/global_average_pooling2d_1/Mean/reduction_indices?
4model_1_simple_model/global_average_pooling2d_1/MeanMean3model_1_simple_model/activation_7/Elu:activations:0Omodel_1_simple_model/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????26
4model_1_simple_model/global_average_pooling2d_1/Mean?
'model_1_simple_model/dropout_1/IdentityIdentity=model_1_simple_model/global_average_pooling2d_1/Mean:output:0*
T0*(
_output_shapes
:??????????2)
'model_1_simple_model/dropout_1/Identity?
2model_1_simple_model/dense_2/MatMul/ReadVariableOpReadVariableOp;model_1_simple_model_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype024
2model_1_simple_model/dense_2/MatMul/ReadVariableOp?
#model_1_simple_model/dense_2/MatMulMatMul0model_1_simple_model/dropout_1/Identity:output:0:model_1_simple_model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2%
#model_1_simple_model/dense_2/MatMul?
3model_1_simple_model/dense_2/BiasAdd/ReadVariableOpReadVariableOp<model_1_simple_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype025
3model_1_simple_model/dense_2/BiasAdd/ReadVariableOp?
$model_1_simple_model/dense_2/BiasAddBiasAdd-model_1_simple_model/dense_2/MatMul:product:0;model_1_simple_model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2&
$model_1_simple_model/dense_2/BiasAdd?
2model_1_simple_model/dense_3/MatMul/ReadVariableOpReadVariableOp;model_1_simple_model_dense_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype024
2model_1_simple_model/dense_3/MatMul/ReadVariableOp?
#model_1_simple_model/dense_3/MatMulMatMul-model_1_simple_model/dense_2/BiasAdd:output:0:model_1_simple_model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2%
#model_1_simple_model/dense_3/MatMul?
3model_1_simple_model/dense_3/BiasAdd/ReadVariableOpReadVariableOp<model_1_simple_model_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype025
3model_1_simple_model/dense_3/BiasAdd/ReadVariableOp?
$model_1_simple_model/dense_3/BiasAddBiasAdd-model_1_simple_model/dense_3/MatMul:product:0;model_1_simple_model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2&
$model_1_simple_model/dense_3/BiasAdd?
/model_1_simple_model/main/MatMul/ReadVariableOpReadVariableOp8model_1_simple_model_main_matmul_readvariableop_resource*
_output_shapes

: *
dtype021
/model_1_simple_model/main/MatMul/ReadVariableOp?
 model_1_simple_model/main/MatMulMatMul-model_1_simple_model/dense_3/BiasAdd:output:07model_1_simple_model/main/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 model_1_simple_model/main/MatMul?
0model_1_simple_model/main/BiasAdd/ReadVariableOpReadVariableOp9model_1_simple_model_main_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0model_1_simple_model/main/BiasAdd/ReadVariableOp?
!model_1_simple_model/main/BiasAddBiasAdd*model_1_simple_model/main/MatMul:product:08model_1_simple_model/main/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!model_1_simple_model/main/BiasAdd?
model_1_simple_model/main/ReluRelu*model_1_simple_model/main/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
model_1_simple_model/main/Relu?
1model_1_simple_model/footer/MatMul/ReadVariableOpReadVariableOp:model_1_simple_model_footer_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1model_1_simple_model/footer/MatMul/ReadVariableOp?
"model_1_simple_model/footer/MatMulMatMul-model_1_simple_model/dense_3/BiasAdd:output:09model_1_simple_model/footer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"model_1_simple_model/footer/MatMul?
2model_1_simple_model/footer/BiasAdd/ReadVariableOpReadVariableOp;model_1_simple_model_footer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2model_1_simple_model/footer/BiasAdd/ReadVariableOp?
#model_1_simple_model/footer/BiasAddBiasAdd,model_1_simple_model/footer/MatMul:product:0:model_1_simple_model/footer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2%
#model_1_simple_model/footer/BiasAdd?
#model_1_simple_model/footer/SigmoidSigmoid,model_1_simple_model/footer/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#model_1_simple_model/footer/Sigmoid?
/model_1_simple_model/side/MatMul/ReadVariableOpReadVariableOp8model_1_simple_model_side_matmul_readvariableop_resource*
_output_shapes

: *
dtype021
/model_1_simple_model/side/MatMul/ReadVariableOp?
 model_1_simple_model/side/MatMulMatMul-model_1_simple_model/dense_3/BiasAdd:output:07model_1_simple_model/side/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 model_1_simple_model/side/MatMul?
0model_1_simple_model/side/BiasAdd/ReadVariableOpReadVariableOp9model_1_simple_model_side_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0model_1_simple_model/side/BiasAdd/ReadVariableOp?
!model_1_simple_model/side/BiasAddBiasAdd*model_1_simple_model/side/MatMul:product:08model_1_simple_model/side/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!model_1_simple_model/side/BiasAdd?
!model_1_simple_model/side/SigmoidSigmoid*model_1_simple_model/side/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!model_1_simple_model/side/Sigmoid?
.model_1_simple_model/nav/MatMul/ReadVariableOpReadVariableOp7model_1_simple_model_nav_matmul_readvariableop_resource*
_output_shapes

: *
dtype020
.model_1_simple_model/nav/MatMul/ReadVariableOp?
model_1_simple_model/nav/MatMulMatMul-model_1_simple_model/dense_3/BiasAdd:output:06model_1_simple_model/nav/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
model_1_simple_model/nav/MatMul?
/model_1_simple_model/nav/BiasAdd/ReadVariableOpReadVariableOp8model_1_simple_model_nav_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/model_1_simple_model/nav/BiasAdd/ReadVariableOp?
 model_1_simple_model/nav/BiasAddBiasAdd)model_1_simple_model/nav/MatMul:product:07model_1_simple_model/nav/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 model_1_simple_model/nav/BiasAdd?
 model_1_simple_model/nav/SigmoidSigmoid)model_1_simple_model/nav/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2"
 model_1_simple_model/nav/Sigmoid?
IdentityIdentity'model_1_simple_model/footer/Sigmoid:y:0K^model_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_4/ReadVariableOp<^model_1_simple_model/batch_normalization_4/ReadVariableOp_1K^model_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_5/ReadVariableOp<^model_1_simple_model/batch_normalization_5/ReadVariableOp_1K^model_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_6/ReadVariableOp<^model_1_simple_model/batch_normalization_6/ReadVariableOp_1K^model_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_7/ReadVariableOp<^model_1_simple_model/batch_normalization_7/ReadVariableOp_14^model_1_simple_model/conv2d_4/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_5/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_6/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_7/Conv2D/ReadVariableOp4^model_1_simple_model/dense_2/BiasAdd/ReadVariableOp3^model_1_simple_model/dense_2/MatMul/ReadVariableOp4^model_1_simple_model/dense_3/BiasAdd/ReadVariableOp3^model_1_simple_model/dense_3/MatMul/ReadVariableOp3^model_1_simple_model/footer/BiasAdd/ReadVariableOp2^model_1_simple_model/footer/MatMul/ReadVariableOp1^model_1_simple_model/main/BiasAdd/ReadVariableOp0^model_1_simple_model/main/MatMul/ReadVariableOp0^model_1_simple_model/nav/BiasAdd/ReadVariableOp/^model_1_simple_model/nav/MatMul/ReadVariableOp1^model_1_simple_model/side/BiasAdd/ReadVariableOp0^model_1_simple_model/side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity,model_1_simple_model/main/Relu:activations:0K^model_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_4/ReadVariableOp<^model_1_simple_model/batch_normalization_4/ReadVariableOp_1K^model_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_5/ReadVariableOp<^model_1_simple_model/batch_normalization_5/ReadVariableOp_1K^model_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_6/ReadVariableOp<^model_1_simple_model/batch_normalization_6/ReadVariableOp_1K^model_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_7/ReadVariableOp<^model_1_simple_model/batch_normalization_7/ReadVariableOp_14^model_1_simple_model/conv2d_4/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_5/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_6/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_7/Conv2D/ReadVariableOp4^model_1_simple_model/dense_2/BiasAdd/ReadVariableOp3^model_1_simple_model/dense_2/MatMul/ReadVariableOp4^model_1_simple_model/dense_3/BiasAdd/ReadVariableOp3^model_1_simple_model/dense_3/MatMul/ReadVariableOp3^model_1_simple_model/footer/BiasAdd/ReadVariableOp2^model_1_simple_model/footer/MatMul/ReadVariableOp1^model_1_simple_model/main/BiasAdd/ReadVariableOp0^model_1_simple_model/main/MatMul/ReadVariableOp0^model_1_simple_model/nav/BiasAdd/ReadVariableOp/^model_1_simple_model/nav/MatMul/ReadVariableOp1^model_1_simple_model/side/BiasAdd/ReadVariableOp0^model_1_simple_model/side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity$model_1_simple_model/nav/Sigmoid:y:0K^model_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_4/ReadVariableOp<^model_1_simple_model/batch_normalization_4/ReadVariableOp_1K^model_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_5/ReadVariableOp<^model_1_simple_model/batch_normalization_5/ReadVariableOp_1K^model_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_6/ReadVariableOp<^model_1_simple_model/batch_normalization_6/ReadVariableOp_1K^model_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_7/ReadVariableOp<^model_1_simple_model/batch_normalization_7/ReadVariableOp_14^model_1_simple_model/conv2d_4/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_5/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_6/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_7/Conv2D/ReadVariableOp4^model_1_simple_model/dense_2/BiasAdd/ReadVariableOp3^model_1_simple_model/dense_2/MatMul/ReadVariableOp4^model_1_simple_model/dense_3/BiasAdd/ReadVariableOp3^model_1_simple_model/dense_3/MatMul/ReadVariableOp3^model_1_simple_model/footer/BiasAdd/ReadVariableOp2^model_1_simple_model/footer/MatMul/ReadVariableOp1^model_1_simple_model/main/BiasAdd/ReadVariableOp0^model_1_simple_model/main/MatMul/ReadVariableOp0^model_1_simple_model/nav/BiasAdd/ReadVariableOp/^model_1_simple_model/nav/MatMul/ReadVariableOp1^model_1_simple_model/side/BiasAdd/ReadVariableOp0^model_1_simple_model/side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity%model_1_simple_model/side/Sigmoid:y:0K^model_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_4/ReadVariableOp<^model_1_simple_model/batch_normalization_4/ReadVariableOp_1K^model_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_5/ReadVariableOp<^model_1_simple_model/batch_normalization_5/ReadVariableOp_1K^model_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_6/ReadVariableOp<^model_1_simple_model/batch_normalization_6/ReadVariableOp_1K^model_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOpM^model_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:^model_1_simple_model/batch_normalization_7/ReadVariableOp<^model_1_simple_model/batch_normalization_7/ReadVariableOp_14^model_1_simple_model/conv2d_4/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_5/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_6/Conv2D/ReadVariableOp4^model_1_simple_model/conv2d_7/Conv2D/ReadVariableOp4^model_1_simple_model/dense_2/BiasAdd/ReadVariableOp3^model_1_simple_model/dense_2/MatMul/ReadVariableOp4^model_1_simple_model/dense_3/BiasAdd/ReadVariableOp3^model_1_simple_model/dense_3/MatMul/ReadVariableOp3^model_1_simple_model/footer/BiasAdd/ReadVariableOp2^model_1_simple_model/footer/MatMul/ReadVariableOp1^model_1_simple_model/main/BiasAdd/ReadVariableOp0^model_1_simple_model/main/MatMul/ReadVariableOp0^model_1_simple_model/nav/BiasAdd/ReadVariableOp/^model_1_simple_model/nav/MatMul/ReadVariableOp1^model_1_simple_model/side/BiasAdd/ReadVariableOp0^model_1_simple_model/side/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Jmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOpJmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2?
Lmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Lmodel_1_simple_model/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12v
9model_1_simple_model/batch_normalization_4/ReadVariableOp9model_1_simple_model/batch_normalization_4/ReadVariableOp2z
;model_1_simple_model/batch_normalization_4/ReadVariableOp_1;model_1_simple_model/batch_normalization_4/ReadVariableOp_12?
Jmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOpJmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2?
Lmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Lmodel_1_simple_model/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12v
9model_1_simple_model/batch_normalization_5/ReadVariableOp9model_1_simple_model/batch_normalization_5/ReadVariableOp2z
;model_1_simple_model/batch_normalization_5/ReadVariableOp_1;model_1_simple_model/batch_normalization_5/ReadVariableOp_12?
Jmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOpJmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Lmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Lmodel_1_simple_model/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12v
9model_1_simple_model/batch_normalization_6/ReadVariableOp9model_1_simple_model/batch_normalization_6/ReadVariableOp2z
;model_1_simple_model/batch_normalization_6/ReadVariableOp_1;model_1_simple_model/batch_normalization_6/ReadVariableOp_12?
Jmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOpJmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Lmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Lmodel_1_simple_model/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12v
9model_1_simple_model/batch_normalization_7/ReadVariableOp9model_1_simple_model/batch_normalization_7/ReadVariableOp2z
;model_1_simple_model/batch_normalization_7/ReadVariableOp_1;model_1_simple_model/batch_normalization_7/ReadVariableOp_12j
3model_1_simple_model/conv2d_4/Conv2D/ReadVariableOp3model_1_simple_model/conv2d_4/Conv2D/ReadVariableOp2j
3model_1_simple_model/conv2d_5/Conv2D/ReadVariableOp3model_1_simple_model/conv2d_5/Conv2D/ReadVariableOp2j
3model_1_simple_model/conv2d_6/Conv2D/ReadVariableOp3model_1_simple_model/conv2d_6/Conv2D/ReadVariableOp2j
3model_1_simple_model/conv2d_7/Conv2D/ReadVariableOp3model_1_simple_model/conv2d_7/Conv2D/ReadVariableOp2j
3model_1_simple_model/dense_2/BiasAdd/ReadVariableOp3model_1_simple_model/dense_2/BiasAdd/ReadVariableOp2h
2model_1_simple_model/dense_2/MatMul/ReadVariableOp2model_1_simple_model/dense_2/MatMul/ReadVariableOp2j
3model_1_simple_model/dense_3/BiasAdd/ReadVariableOp3model_1_simple_model/dense_3/BiasAdd/ReadVariableOp2h
2model_1_simple_model/dense_3/MatMul/ReadVariableOp2model_1_simple_model/dense_3/MatMul/ReadVariableOp2h
2model_1_simple_model/footer/BiasAdd/ReadVariableOp2model_1_simple_model/footer/BiasAdd/ReadVariableOp2f
1model_1_simple_model/footer/MatMul/ReadVariableOp1model_1_simple_model/footer/MatMul/ReadVariableOp2d
0model_1_simple_model/main/BiasAdd/ReadVariableOp0model_1_simple_model/main/BiasAdd/ReadVariableOp2b
/model_1_simple_model/main/MatMul/ReadVariableOp/model_1_simple_model/main/MatMul/ReadVariableOp2b
/model_1_simple_model/nav/BiasAdd/ReadVariableOp/model_1_simple_model/nav/BiasAdd/ReadVariableOp2`
.model_1_simple_model/nav/MatMul/ReadVariableOp.model_1_simple_model/nav/MatMul/ReadVariableOp2d
0model_1_simple_model/side/BiasAdd/ReadVariableOp0model_1_simple_model/side/BiasAdd/ReadVariableOp2b
/model_1_simple_model/side/MatMul/ReadVariableOp/model_1_simple_model/side/MatMul/ReadVariableOp:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?
d
H__inference_sequential_1_layer_call_and_return_conditional_losses_144359

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
O
+__inference_sequential_layer_call_fn_144331
resizing_input
identity?
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1443232
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:a ]
1
_output_shapes
:???????????
(
_user_specified_nameresizing_input
??
?
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_146347

inputs!
sequential_1_146227:	!
sequential_1_146229:	*
batch_normalization_4_146232:*
batch_normalization_4_146234:*
batch_normalization_4_146236:*
batch_normalization_4_146238:)
conv2d_4_146241:@*
batch_normalization_5_146246:@*
batch_normalization_5_146248:@*
batch_normalization_5_146250:@*
batch_normalization_5_146252:@*
conv2d_5_146255:@?+
batch_normalization_6_146260:	?+
batch_normalization_6_146262:	?+
batch_normalization_6_146264:	?+
batch_normalization_6_146266:	?+
conv2d_6_146269:??+
batch_normalization_7_146274:	?+
batch_normalization_7_146276:	?+
batch_normalization_7_146278:	?+
batch_normalization_7_146280:	?+
conv2d_7_146283:??!
dense_2_146289:	?@
dense_2_146291:@ 
dense_3_146294:@ 
dense_3_146296: 
main_146299: 
main_146301:
footer_146304: 
footer_146306:
side_146309: 
side_146311:

nav_146314: 

nav_146316:
identity

identity_1

identity_2

identity_3??-batch_normalization_4/StatefulPartitionedCall?-batch_normalization_5/StatefulPartitionedCall?-batch_normalization_6/StatefulPartitionedCall?-batch_normalization_7/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?1conv2d_4/kernel/Regularizer/Square/ReadVariableOp? conv2d_5/StatefulPartitionedCall?1conv2d_5/kernel/Regularizer/Square/ReadVariableOp? conv2d_6/StatefulPartitionedCall?1conv2d_6/kernel/Regularizer/Square/ReadVariableOp? conv2d_7/StatefulPartitionedCall?1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?footer/StatefulPartitionedCall?main/StatefulPartitionedCall?nav/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?side/StatefulPartitionedCall?
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1443232
sequential/PartitionedCall?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_1_146227sequential_1_146229*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1446012&
$sequential_1/StatefulPartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0batch_normalization_4_146232batch_normalization_4_146234batch_normalization_4_146236batch_normalization_4_146238*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1461352/
-batch_normalization_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv2d_4_146241*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1454552"
 conv2d_4/StatefulPartitionedCall?
activation_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_1454642
activation_4/PartitionedCall?
max_pooling2d_3/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????TT@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1449852!
max_pooling2d_3/PartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0batch_normalization_5_146246batch_normalization_5_146248batch_normalization_5_146250batch_normalization_5_146252*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????TT@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1460772/
-batch_normalization_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_5_146255*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????RR?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1455072"
 conv2d_5/StatefulPartitionedCall?
activation_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????RR?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_1455162
activation_5/PartitionedCall?
max_pooling2d_4/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????))?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1451232!
max_pooling2d_4/PartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_146260batch_normalization_6_146262batch_normalization_6_146264batch_normalization_6_146266*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????))?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1460192/
-batch_normalization_6/StatefulPartitionedCall?
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_6_146269*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????''?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_1455592"
 conv2d_6/StatefulPartitionedCall?
activation_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????''?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_1455682
activation_6/PartitionedCall?
max_pooling2d_5/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1452612!
max_pooling2d_5/PartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_146274batch_normalization_7_146276batch_normalization_7_146278batch_normalization_7_146280*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1459612/
-batch_normalization_7/StatefulPartitionedCall?
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0conv2d_7_146283*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_1456112"
 conv2d_7/StatefulPartitionedCall?
activation_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_1456202
activation_7/PartitionedCall?
*global_average_pooling2d_1/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_1454002,
*global_average_pooling2d_1/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1459112#
!dropout_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_146289dense_2_146291*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1456402!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_146294dense_3_146296*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1456562!
dense_3/StatefulPartitionedCall?
main/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0main_146299main_146301*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_main_layer_call_and_return_conditional_losses_1456732
main/StatefulPartitionedCall?
footer/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0footer_146304footer_146306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_footer_layer_call_and_return_conditional_losses_1456902 
footer/StatefulPartitionedCall?
side/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0side_146309side_146311*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_side_layer_call_and_return_conditional_losses_1457072
side/StatefulPartitionedCall?
nav/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0
nav_146314
nav_146316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_nav_layer_call_and_return_conditional_losses_1457242
nav/StatefulPartitionedCall?
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_4_146241*&
_output_shapes
:@*
dtype023
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2$
"conv2d_4/kernel/Regularizer/Square?
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_4/kernel/Regularizer/Const?
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/Sum?
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_4/kernel/Regularizer/mul/x?
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/mul?
1conv2d_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_5_146255*'
_output_shapes
:@?*
dtype023
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_5/kernel/Regularizer/SquareSquare9conv2d_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2$
"conv2d_5/kernel/Regularizer/Square?
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_5/kernel/Regularizer/Const?
conv2d_5/kernel/Regularizer/SumSum&conv2d_5/kernel/Regularizer/Square:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/Sum?
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_5/kernel/Regularizer/mul/x?
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_5/kernel/Regularizer/mul?
1conv2d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_6_146269*(
_output_shapes
:??*
dtype023
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_6/kernel/Regularizer/SquareSquare9conv2d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_6/kernel/Regularizer/Square?
!conv2d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_6/kernel/Regularizer/Const?
conv2d_6/kernel/Regularizer/SumSum&conv2d_6/kernel/Regularizer/Square:y:0*conv2d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/Sum?
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_6/kernel/Regularizer/mul/x?
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0(conv2d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_6/kernel/Regularizer/mul?
1conv2d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_7_146283*(
_output_shapes
:??*
dtype023
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_7/kernel/Regularizer/SquareSquare9conv2d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2$
"conv2d_7/kernel/Regularizer/Square?
!conv2d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_7/kernel/Regularizer/Const?
conv2d_7/kernel/Regularizer/SumSum&conv2d_7/kernel/Regularizer/Square:y:0*conv2d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/Sum?
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_7/kernel/Regularizer/mul/x?
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0(conv2d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_7/kernel/Regularizer/mul?
IdentityIdentity$nav/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity%side/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity'footer/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity%main/StatefulPartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/Square/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/Square/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^footer/StatefulPartitionedCall^main/StatefulPartitionedCall^nav/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall^side/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2f
1conv2d_5/kernel/Regularizer/Square/ReadVariableOp1conv2d_5/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2f
1conv2d_6/kernel/Regularizer/Square/ReadVariableOp1conv2d_6/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2f
1conv2d_7/kernel/Regularizer/Square/ReadVariableOp1conv2d_7/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2@
footer/StatefulPartitionedCallfooter/StatefulPartitionedCall2<
main/StatefulPartitionedCallmain/StatefulPartitionedCall2:
nav/StatefulPartitionedCallnav/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2<
side/StatefulPartitionedCallside/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
%__inference_side_layer_call_fn_148828

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_side_layer_call_and_return_conditional_losses_1457072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_146854	
input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@$
	unknown_8:@?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?&

unknown_13:??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?&

unknown_18:??

unknown_19:	?@

unknown_20:@

unknown_21:@ 

unknown_22: 

unknown_23: 

unknown_24:

unknown_25: 

unknown_26:

unknown_27: 

unknown_28:

unknown_29: 

unknown_30:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *`
_output_shapesN
L:?????????:?????????:?????????:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_1442892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:???????????

_user_specified_nameinput
?
?
6__inference_batch_normalization_7_layer_call_fn_148674

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_1455882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_7_layer_call_fn_148713

inputs#
unknown:??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_1456112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

b
F__inference_sequential_layer_call_and_return_conditional_losses_147563

inputs
identity}
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing/resize/size?
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(2 
resizing/resize/ResizeBilineari
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/addo
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_145911

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148297

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????TT@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????TT@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????TT@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????TT@
 
_user_specified_nameinputs
?
?
$__inference_nav_layer_call_fn_148808

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_nav_layer_call_and_return_conditional_losses_1457242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
?__inference_nav_layer_call_and_return_conditional_losses_148799

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_145261

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148457

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????))?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????))?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????))?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????))?
 
_user_specified_nameinputs
?
d
H__inference_activation_4_layer_call_and_return_conditional_losses_148238

inputs
identityU
EluEluinputs*
T0*1
_output_shapes
:???????????@2
Eluo
IdentityIdentityElu:activations:0*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????@:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_6_layer_call_fn_148527

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????))?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_1460192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????))?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????))?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????))?
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145013

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
F
*__inference_dropout_1_layer_call_fn_148745

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1456282
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_145151

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_144985

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_3_layer_call_fn_144991

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1449852
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_4_layer_call_and_return_conditional_losses_145455

inputs8
conv2d_readvariableop_resource:@
identity??Conv2D/ReadVariableOp?1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingVALID*
strides
2
Conv2D?
1conv2d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype023
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_4/kernel/Regularizer/SquareSquare9conv2d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2$
"conv2d_4/kernel/Regularizer/Square?
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2#
!conv2d_4/kernel/Regularizer/Const?
conv2d_4/kernel/Regularizer/SumSum&conv2d_4/kernel/Regularizer/Square:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/Sum?
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!conv2d_4/kernel/Regularizer/mul/x?
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv2d_4/kernel/Regularizer/mul?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/Square/ReadVariableOp*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:???????????: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/Square/ReadVariableOp1conv2d_4/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
H__inference_activation_5_layer_call_and_return_conditional_losses_148398

inputs
identityT
EluEluinputs*
T0*0
_output_shapes
:?????????RR?2
Elun
IdentityIdentityElu:activations:0*
T0*0
_output_shapes
:?????????RR?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????RR?:X T
0
_output_shapes
:?????????RR?
 
_user_specified_nameinputs
?
?
-__inference_sequential_1_layer_call_fn_148083
random_rotation_input
unknown:	
	unknown_0:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_rotation_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1446012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
1
_output_shapes
:???????????
/
_user_specified_namerandom_rotation_input
?
?
6__inference_batch_normalization_5_layer_call_fn_148341

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_1450572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

j
F__inference_sequential_layer_call_and_return_conditional_losses_144341
resizing_input
identity}
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing/resize/size?
resizing/resize/ResizeBilinearResizeBilinearresizing_inputresizing/resize/size:output:0*
T0*1
_output_shapes
:???????????*
half_pixel_centers(2 
resizing/resize/ResizeBilineari
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling/Cast/xm
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling/Cast_1/x?
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/mul?
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
rescaling/addo
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:a ]
1
_output_shapes
:???????????
(
_user_specified_nameresizing_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
A
input8
serving_default_input:0???????????:
footer0
StatefulPartitionedCall:0?????????8
main0
StatefulPartitionedCall:1?????????7
nav0
StatefulPartitionedCall:2?????????8
side0
StatefulPartitionedCall:3?????????tensorflow/serving/predict:??
??
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
layer-17
layer-18
layer-19
layer_with_weights-8
layer-20
layer_with_weights-9
layer-21
layer_with_weights-10
layer-22
layer_with_weights-11
layer-23
layer_with_weights-12
layer-24
layer_with_weights-13
layer-25
	optimizer
loss
	variables
trainable_variables
regularization_losses
 	keras_api
!
signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"??
_tf_keras_network??{"name": "model_1_simple_model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_1_simple_model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_input"}}, {"class_name": "Resizing", "config": {"name": "resizing", "trainable": true, "dtype": "float32", "height": 512, "width": 512, "interpolation": "bilinear"}}, {"class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "name": "sequential", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.01, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom", "trainable": true, "dtype": "float32", "height_factor": 0.05, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "name": "sequential_1", "inbound_nodes": [[["sequential", 1, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_4", "inbound_nodes": [[["sequential_1", 1, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_4", "inbound_nodes": [[["batch_normalization_4", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_4", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_4", "inbound_nodes": [[["conv2d_4", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "name": "max_pooling2d_3", "inbound_nodes": [[["activation_4", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_5", "inbound_nodes": [[["max_pooling2d_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_5", "inbound_nodes": [[["batch_normalization_5", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_5", "inbound_nodes": [[["conv2d_5", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_4", "inbound_nodes": [[["activation_5", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_6", "inbound_nodes": [[["max_pooling2d_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_6", "inbound_nodes": [[["batch_normalization_6", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_6", "inbound_nodes": [[["conv2d_6", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_5", "inbound_nodes": [[["activation_6", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_7", "inbound_nodes": [[["max_pooling2d_5", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_7", "inbound_nodes": [[["batch_normalization_7", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_7", "inbound_nodes": [[["conv2d_7", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d_1", "inbound_nodes": [[["activation_7", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["global_average_pooling2d_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "nav", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "nav", "inbound_nodes": [[["dense_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "side", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "side", "inbound_nodes": [[["dense_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "footer", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "footer", "inbound_nodes": [[["dense_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "main", "trainable": true, "dtype": "float32", "units": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "main", "inbound_nodes": [[["dense_3", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["nav", 0, 0], ["side", 0, 0], ["footer", 0, 0], ["main", 0, 0]]}, "shared_object_id": 72, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 512, 512, 1]}, "float32", "input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1_simple_model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_input"}}, {"class_name": "Resizing", "config": {"name": "resizing", "trainable": true, "dtype": "float32", "height": 512, "width": 512, "interpolation": "bilinear"}}, {"class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "name": "sequential", "inbound_nodes": [[["input", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.01, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom", "trainable": true, "dtype": "float32", "height_factor": 0.05, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "name": "sequential_1", "inbound_nodes": [[["sequential", 1, 0, {}]]], "shared_object_id": 8}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 10}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 12}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_4", "inbound_nodes": [[["sequential_1", 1, 0, {}]]], "shared_object_id": 13}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}, "shared_object_id": 16}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_4", "inbound_nodes": [[["batch_normalization_4", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Activation", "config": {"name": "activation_4", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_4", "inbound_nodes": [[["conv2d_4", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "name": "max_pooling2d_3", "inbound_nodes": [[["activation_4", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 21}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 23}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_5", "inbound_nodes": [[["max_pooling2d_3", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}, "shared_object_id": 27}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_5", "inbound_nodes": [[["batch_normalization_5", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_5", "inbound_nodes": [[["conv2d_5", 0, 0, {}]]], "shared_object_id": 29}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_4", "inbound_nodes": [[["activation_5", 0, 0, {}]]], "shared_object_id": 30}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 32}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 34}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_6", "inbound_nodes": [[["max_pooling2d_4", 0, 0, {}]]], "shared_object_id": 35}, {"class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 36}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}, "shared_object_id": 38}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_6", "inbound_nodes": [[["batch_normalization_6", 0, 0, {}]]], "shared_object_id": 39}, {"class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_6", "inbound_nodes": [[["conv2d_6", 0, 0, {}]]], "shared_object_id": 40}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_5", "inbound_nodes": [[["activation_6", 0, 0, {}]]], "shared_object_id": 41}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 43}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 45}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_7", "inbound_nodes": [[["max_pooling2d_5", 0, 0, {}]]], "shared_object_id": 46}, {"class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}, "shared_object_id": 49}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_7", "inbound_nodes": [[["batch_normalization_7", 0, 0, {}]]], "shared_object_id": 50}, {"class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_7", "inbound_nodes": [[["conv2d_7", 0, 0, {}]]], "shared_object_id": 51}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d_1", "inbound_nodes": [[["activation_7", 0, 0, {}]]], "shared_object_id": 52}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["global_average_pooling2d_1", 0, 0, {}]]], "shared_object_id": 53}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 54}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 55}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["dropout_1", 0, 0, {}]]], "shared_object_id": 56}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 59}, {"class_name": "Dense", "config": {"name": "nav", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "nav", "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 62}, {"class_name": "Dense", "config": {"name": "side", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 63}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 64}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "side", "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 65}, {"class_name": "Dense", "config": {"name": "footer", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 66}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 67}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "footer", "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 68}, {"class_name": "Dense", "config": {"name": "main", "trainable": true, "dtype": "float32", "units": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 69}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 70}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "main", "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 71}], "input_layers": [["input", 0, 0]], "output_layers": [["nav", 0, 0], ["side", 0, 0], ["footer", 0, 0], ["main", 0, 0]]}}, "training_config": {"loss": {"nav": "binary_crossentropy", "side": "binary_crossentropy", "footer": "binary_crossentropy", "main": "mae"}, "metrics": [[{"class_name": "Precision", "config": {"name": "nav_precision_3", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 74}], [{"class_name": "Precision", "config": {"name": "side_precision_4", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 75}], [{"class_name": "Precision", "config": {"name": "footer_precision_5", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 76}], [{"class_name": "MeanMetricWrapper", "config": {"name": "main_acc", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 77}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
?
"layer-0
#layer-1
$	variables
%trainable_variables
&regularization_losses
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_sequential?{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_input"}}, {"class_name": "Resizing", "config": {"name": "resizing", "trainable": true, "dtype": "float32", "height": 512, "width": 512, "interpolation": "bilinear"}}, {"class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "inbound_nodes": [[["input", 0, 0, {}]]], "shared_object_id": 4, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 512, 512, 1]}, "float32", "resizing_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_input"}, "shared_object_id": 1}, {"class_name": "Resizing", "config": {"name": "resizing", "trainable": true, "dtype": "float32", "height": 512, "width": 512, "interpolation": "bilinear"}, "shared_object_id": 2}, {"class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 3}]}}}
?
(layer-0
)layer-1
*	variables
+trainable_variables
,regularization_losses
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_sequential?{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_input"}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.01, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom", "trainable": true, "dtype": "float32", "height_factor": 0.05, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "inbound_nodes": [[["sequential", 1, 0, {}]]], "shared_object_id": 8, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [16, 512, 512, 1]}, "float32", "random_rotation_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_rotation_input"}, "shared_object_id": 5}, {"class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.01, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 6}, {"class_name": "RandomZoom", "config": {"name": "random_zoom", "trainable": true, "dtype": "float32", "height_factor": 0.05, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 7}]}}}
?

.axis
	/gamma
0beta
1moving_mean
2moving_variance
3	variables
4trainable_variables
5regularization_losses
6	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "batch_normalization_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 10}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 12}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["sequential_1", 1, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 1}}, "shared_object_id": 78}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 1]}}
?

7kernel
8	variables
9trainable_variables
:regularization_losses
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}, "shared_object_id": 16}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_4", 0, 0, {}]]], "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 79}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 1]}}
?
<	variables
=trainable_variables
>regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_4", "trainable": true, "dtype": "float32", "activation": "elu"}, "inbound_nodes": [[["conv2d_4", 0, 0, {}]]], "shared_object_id": 18}
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "inbound_nodes": [[["activation_4", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 80}}
?
Daxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "batch_normalization_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 21}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 23}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["max_pooling2d_3", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 81}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84, 84, 64]}}
?

Mkernel
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}, "shared_object_id": 27}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_5", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 82}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84, 84, 64]}}
?
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "elu"}, "inbound_nodes": [[["conv2d_5", 0, 0, {}]]], "shared_object_id": 29}
?
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["activation_5", 0, 0, {}]]], "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 83}}
?
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_	variables
`trainable_variables
aregularization_losses
b	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 32}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 34}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["max_pooling2d_4", 0, 0, {}]]], "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 84}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 41, 41, 128]}}
?

ckernel
d	variables
etrainable_variables
fregularization_losses
g	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 36}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}, "shared_object_id": 38}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_6", 0, 0, {}]]], "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 85}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 41, 41, 128]}}
?
h	variables
itrainable_variables
jregularization_losses
k	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "elu"}, "inbound_nodes": [[["conv2d_6", 0, 0, {}]]], "shared_object_id": 40}
?
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "max_pooling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["activation_6", 0, 0, {}]]], "shared_object_id": 41, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 86}}
?
paxis
	qgamma
rbeta
smoving_mean
tmoving_variance
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "batch_normalization_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 43}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 45}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["max_pooling2d_5", 0, 0, {}]]], "shared_object_id": 46, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 87}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19, 19, 128]}}
?

ykernel
z	variables
{trainable_variables
|regularization_losses
}	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.05000000074505806}, "shared_object_id": 49}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_7", 0, 0, {}]]], "shared_object_id": 50, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 88}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19, 19, 128]}}
?
~	variables
trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "elu"}, "inbound_nodes": [[["conv2d_7", 0, 0, {}]]], "shared_object_id": 51}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "global_average_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["activation_7", 0, 0, {}]]], "shared_object_id": 52, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 89}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "inbound_nodes": [[["global_average_pooling2d_1", 0, 0, {}]]], "shared_object_id": 53}
?	
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 54}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 55}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_1", 0, 0, {}]]], "shared_object_id": 56, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 90}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?	
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 59, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 91}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "nav", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "nav", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 60}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 61}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 62, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 92}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?	
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "side", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "side", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 63}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 64}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 65, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 93}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?	
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "footer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "footer", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 66}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 67}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 68, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 94}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "main", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "main", "trainable": true, "dtype": "float32", "units": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 69}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 70}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 71, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 95}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
	?iter

?decay
?learning_rate
?momentum
?rho
/rms?
0rms?
7rms?
Erms?
Frms?
Mrms?
[rms?
\rms?
crms?
qrms?
rrms?
yrms??rms??rms??rms??rms??rms??rms??rms??rms??rms??rms??rms??rms?"
	optimizer
 "
trackable_dict_wrapper
?
/0
01
12
23
74
E5
F6
G7
H8
M9
[10
\11
]12
^13
c14
q15
r16
s17
t18
y19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31"
trackable_list_wrapper
?
/0
01
72
E3
F4
M5
[6
\7
c8
q9
r10
y11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
	variables
?metrics
trainable_variables
?layers
regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
?	keras_api"?
_tf_keras_layer?{"name": "resizing", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Resizing", "config": {"name": "resizing", "trainable": true, "dtype": "float32", "height": 512, "width": 512, "interpolation": "bilinear"}, "shared_object_id": 2}
?
?	keras_api"?
_tf_keras_layer?{"name": "rescaling", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Rescaling", "config": {"name": "rescaling", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 3}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
$	variables
?metrics
%trainable_variables
?layers
&regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"name": "random_rotation", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.01, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 6}
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"name": "random_zoom", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomZoom", "config": {"name": "random_zoom", "trainable": true, "dtype": "float32", "height_factor": 0.05, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 7}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
*	variables
?metrics
+trainable_variables
?layers
,regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'2batch_normalization_4/gamma
(:&2batch_normalization_4/beta
1:/ (2!batch_normalization_4/moving_mean
5:3 (2%batch_normalization_4/moving_variance
<
/0
01
12
23"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3	variables
?non_trainable_variables
?metrics
4trainable_variables
?layers
5regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'@2conv2d_4/kernel
'
70"
trackable_list_wrapper
'
70"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
8	variables
?non_trainable_variables
?metrics
9trainable_variables
?layers
:regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
<	variables
?non_trainable_variables
?metrics
=trainable_variables
?layers
>regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
@	variables
?non_trainable_variables
?metrics
Atrainable_variables
?layers
Bregularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'@2batch_normalization_5/gamma
(:&@2batch_normalization_5/beta
1:/@ (2!batch_normalization_5/moving_mean
5:3@ (2%batch_normalization_5/moving_variance
<
E0
F1
G2
H3"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
I	variables
?non_trainable_variables
?metrics
Jtrainable_variables
?layers
Kregularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@?2conv2d_5/kernel
'
M0"
trackable_list_wrapper
'
M0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
N	variables
?non_trainable_variables
?metrics
Otrainable_variables
?layers
Pregularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
R	variables
?non_trainable_variables
?metrics
Strainable_variables
?layers
Tregularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
V	variables
?non_trainable_variables
?metrics
Wtrainable_variables
?layers
Xregularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?2batch_normalization_6/gamma
):'?2batch_normalization_6/beta
2:0? (2!batch_normalization_6/moving_mean
6:4? (2%batch_normalization_6/moving_variance
<
[0
\1
]2
^3"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_	variables
?non_trainable_variables
?metrics
`trainable_variables
?layers
aregularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)??2conv2d_6/kernel
'
c0"
trackable_list_wrapper
'
c0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
d	variables
?non_trainable_variables
?metrics
etrainable_variables
?layers
fregularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
h	variables
?non_trainable_variables
?metrics
itrainable_variables
?layers
jregularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
l	variables
?non_trainable_variables
?metrics
mtrainable_variables
?layers
nregularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?2batch_normalization_7/gamma
):'?2batch_normalization_7/beta
2:0? (2!batch_normalization_7/moving_mean
6:4? (2%batch_normalization_7/moving_variance
<
q0
r1
s2
t3"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
u	variables
?non_trainable_variables
?metrics
vtrainable_variables
?layers
wregularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)??2conv2d_7/kernel
'
y0"
trackable_list_wrapper
'
y0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
z	variables
?non_trainable_variables
?metrics
{trainable_variables
?layers
|regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~	variables
?non_trainable_variables
?metrics
trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?@2dense_2/kernel
:@2dense_2/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@ 2dense_3/kernel
: 2dense_3/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: 2
nav/kernel
:2nav/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: 2side/kernel
:2	side/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: 2footer/kernel
:2footer/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: 2main/kernel
:2	main/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?non_trainable_variables
?metrics
?trainable_variables
?layers
?regularization_losses
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
h
?0
?1
?2
?3
?4
?5
?6
?7
?8"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25"
trackable_list_wrapper
 "
trackable_list_wrapper
X
10
21
G2
H3
]4
^5
s6
t7"
trackable_list_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
/
?
_state_var"
_generic_user_object
"
_generic_user_object
/
?
_state_var"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 96}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "nav_loss", "dtype": "float32", "config": {"name": "nav_loss", "dtype": "float32"}, "shared_object_id": 97}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "side_loss", "dtype": "float32", "config": {"name": "side_loss", "dtype": "float32"}, "shared_object_id": 98}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "footer_loss", "dtype": "float32", "config": {"name": "footer_loss", "dtype": "float32"}, "shared_object_id": 99}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "main_loss", "dtype": "float32", "config": {"name": "main_loss", "dtype": "float32"}, "shared_object_id": 100}
?
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Precision", "name": "nav_precision_3", "dtype": "float32", "config": {"name": "nav_precision_3", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 74}
?
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Precision", "name": "side_precision_4", "dtype": "float32", "config": {"name": "side_precision_4", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 75}
?
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Precision", "name": "footer_precision_5", "dtype": "float32", "config": {"name": "footer_precision_5", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 76}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "main_acc", "dtype": "float32", "config": {"name": "main_acc", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 77}
:	2Variable
:	2Variable
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
3:12'RMSprop/batch_normalization_4/gamma/rms
2:02&RMSprop/batch_normalization_4/beta/rms
3:1@2RMSprop/conv2d_4/kernel/rms
3:1@2'RMSprop/batch_normalization_5/gamma/rms
2:0@2&RMSprop/batch_normalization_5/beta/rms
4:2@?2RMSprop/conv2d_5/kernel/rms
4:2?2'RMSprop/batch_normalization_6/gamma/rms
3:1?2&RMSprop/batch_normalization_6/beta/rms
5:3??2RMSprop/conv2d_6/kernel/rms
4:2?2'RMSprop/batch_normalization_7/gamma/rms
3:1?2&RMSprop/batch_normalization_7/beta/rms
5:3??2RMSprop/conv2d_7/kernel/rms
+:)	?@2RMSprop/dense_2/kernel/rms
$:"@2RMSprop/dense_2/bias/rms
*:(@ 2RMSprop/dense_3/kernel/rms
$:" 2RMSprop/dense_3/bias/rms
&:$ 2RMSprop/nav/kernel/rms
 :2RMSprop/nav/bias/rms
':% 2RMSprop/side/kernel/rms
!:2RMSprop/side/bias/rms
):' 2RMSprop/footer/kernel/rms
#:!2RMSprop/footer/bias/rms
':% 2RMSprop/main/kernel/rms
!:2RMSprop/main/bias/rms
?2?
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_147009
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_147399
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_146623
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_146747?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_144289?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input???????????
?2?
5__inference_model_1_simple_model_layer_call_fn_145831
5__inference_model_1_simple_model_layer_call_fn_147474
5__inference_model_1_simple_model_layer_call_fn_147553
5__inference_model_1_simple_model_layer_call_fn_146503?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_sequential_layer_call_and_return_conditional_losses_147563
F__inference_sequential_layer_call_and_return_conditional_losses_147573
F__inference_sequential_layer_call_and_return_conditional_losses_144341
F__inference_sequential_layer_call_and_return_conditional_losses_144351?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_sequential_layer_call_fn_144306
+__inference_sequential_layer_call_fn_147578
+__inference_sequential_layer_call_fn_147583
+__inference_sequential_layer_call_fn_144331?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_1_layer_call_and_return_conditional_losses_147587
H__inference_sequential_1_layer_call_and_return_conditional_losses_147819
H__inference_sequential_1_layer_call_and_return_conditional_losses_147823
H__inference_sequential_1_layer_call_and_return_conditional_losses_148055?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_sequential_1_layer_call_fn_148060
-__inference_sequential_1_layer_call_fn_148065
-__inference_sequential_1_layer_call_fn_148074
-__inference_sequential_1_layer_call_fn_148083?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148101
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148119
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148137
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148155?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
6__inference_batch_normalization_4_layer_call_fn_148168
6__inference_batch_normalization_4_layer_call_fn_148181
6__inference_batch_normalization_4_layer_call_fn_148194
6__inference_batch_normalization_4_layer_call_fn_148207?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_conv2d_4_layer_call_and_return_conditional_losses_148226?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_4_layer_call_fn_148233?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_activation_4_layer_call_and_return_conditional_losses_148238?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_activation_4_layer_call_fn_148243?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_144985?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
0__inference_max_pooling2d_3_layer_call_fn_144991?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148261
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148279
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148297
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148315?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
6__inference_batch_normalization_5_layer_call_fn_148328
6__inference_batch_normalization_5_layer_call_fn_148341
6__inference_batch_normalization_5_layer_call_fn_148354
6__inference_batch_normalization_5_layer_call_fn_148367?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_conv2d_5_layer_call_and_return_conditional_losses_148386?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_5_layer_call_fn_148393?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_activation_5_layer_call_and_return_conditional_losses_148398?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_activation_5_layer_call_fn_148403?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_145123?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
0__inference_max_pooling2d_4_layer_call_fn_145129?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148421
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148439
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148457
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148475?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
6__inference_batch_normalization_6_layer_call_fn_148488
6__inference_batch_normalization_6_layer_call_fn_148501
6__inference_batch_normalization_6_layer_call_fn_148514
6__inference_batch_normalization_6_layer_call_fn_148527?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_conv2d_6_layer_call_and_return_conditional_losses_148546?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_6_layer_call_fn_148553?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_activation_6_layer_call_and_return_conditional_losses_148558?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_activation_6_layer_call_fn_148563?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_145261?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
0__inference_max_pooling2d_5_layer_call_fn_145267?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148581
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148599
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148617
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148635?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
6__inference_batch_normalization_7_layer_call_fn_148648
6__inference_batch_normalization_7_layer_call_fn_148661
6__inference_batch_normalization_7_layer_call_fn_148674
6__inference_batch_normalization_7_layer_call_fn_148687?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_conv2d_7_layer_call_and_return_conditional_losses_148706?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_7_layer_call_fn_148713?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_activation_7_layer_call_and_return_conditional_losses_148718?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_activation_7_layer_call_fn_148723?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_145400?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
;__inference_global_average_pooling2d_1_layer_call_fn_145406?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_dropout_1_layer_call_and_return_conditional_losses_148728
E__inference_dropout_1_layer_call_and_return_conditional_losses_148740?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_1_layer_call_fn_148745
*__inference_dropout_1_layer_call_fn_148750?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_dense_2_layer_call_and_return_conditional_losses_148760?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_2_layer_call_fn_148769?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_3_layer_call_and_return_conditional_losses_148779?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_3_layer_call_fn_148788?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_nav_layer_call_and_return_conditional_losses_148799?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_nav_layer_call_fn_148808?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_side_layer_call_and_return_conditional_losses_148819?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_side_layer_call_fn_148828?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_footer_layer_call_and_return_conditional_losses_148839?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_footer_layer_call_fn_148848?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_main_layer_call_and_return_conditional_losses_148859?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_main_layer_call_fn_148868?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_148879?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_148890?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_148901?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_148912?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
$__inference_signature_wrapper_146854input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_144289?,/0127EFGHM[\]^cqrsty????????????8?5
.?+
)?&
input???????????
? "???
*
footer ?
footer?????????
&
main?
main?????????
$
nav?
nav?????????
&
side?
side??????????
H__inference_activation_4_layer_call_and_return_conditional_losses_148238l9?6
/?,
*?'
inputs???????????@
? "/?,
%?"
0???????????@
? ?
-__inference_activation_4_layer_call_fn_148243_9?6
/?,
*?'
inputs???????????@
? ""????????????@?
H__inference_activation_5_layer_call_and_return_conditional_losses_148398j8?5
.?+
)?&
inputs?????????RR?
? ".?+
$?!
0?????????RR?
? ?
-__inference_activation_5_layer_call_fn_148403]8?5
.?+
)?&
inputs?????????RR?
? "!??????????RR??
H__inference_activation_6_layer_call_and_return_conditional_losses_148558j8?5
.?+
)?&
inputs?????????''?
? ".?+
$?!
0?????????''?
? ?
-__inference_activation_6_layer_call_fn_148563]8?5
.?+
)?&
inputs?????????''?
? "!??????????''??
H__inference_activation_7_layer_call_and_return_conditional_losses_148718j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_activation_7_layer_call_fn_148723]8?5
.?+
)?&
inputs??????????
? "!????????????
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148101?/012M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148119?/012M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148137v/012=?:
3?0
*?'
inputs???????????
p 
? "/?,
%?"
0???????????
? ?
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_148155v/012=?:
3?0
*?'
inputs???????????
p
? "/?,
%?"
0???????????
? ?
6__inference_batch_normalization_4_layer_call_fn_148168?/012M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
6__inference_batch_normalization_4_layer_call_fn_148181?/012M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
6__inference_batch_normalization_4_layer_call_fn_148194i/012=?:
3?0
*?'
inputs???????????
p 
? ""?????????????
6__inference_batch_normalization_4_layer_call_fn_148207i/012=?:
3?0
*?'
inputs???????????
p
? ""?????????????
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148261?EFGHM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148279?EFGHM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148297rEFGH;?8
1?.
(?%
inputs?????????TT@
p 
? "-?*
#? 
0?????????TT@
? ?
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_148315rEFGH;?8
1?.
(?%
inputs?????????TT@
p
? "-?*
#? 
0?????????TT@
? ?
6__inference_batch_normalization_5_layer_call_fn_148328?EFGHM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
6__inference_batch_normalization_5_layer_call_fn_148341?EFGHM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
6__inference_batch_normalization_5_layer_call_fn_148354eEFGH;?8
1?.
(?%
inputs?????????TT@
p 
? " ??????????TT@?
6__inference_batch_normalization_5_layer_call_fn_148367eEFGH;?8
1?.
(?%
inputs?????????TT@
p
? " ??????????TT@?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148421?[\]^N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148439?[\]^N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148457t[\]^<?9
2?/
)?&
inputs?????????))?
p 
? ".?+
$?!
0?????????))?
? ?
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_148475t[\]^<?9
2?/
)?&
inputs?????????))?
p
? ".?+
$?!
0?????????))?
? ?
6__inference_batch_normalization_6_layer_call_fn_148488?[\]^N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
6__inference_batch_normalization_6_layer_call_fn_148501?[\]^N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
6__inference_batch_normalization_6_layer_call_fn_148514g[\]^<?9
2?/
)?&
inputs?????????))?
p 
? "!??????????))??
6__inference_batch_normalization_6_layer_call_fn_148527g[\]^<?9
2?/
)?&
inputs?????????))?
p
? "!??????????))??
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148581?qrstN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148599?qrstN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148617tqrst<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_148635tqrst<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
6__inference_batch_normalization_7_layer_call_fn_148648?qrstN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
6__inference_batch_normalization_7_layer_call_fn_148661?qrstN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
6__inference_batch_normalization_7_layer_call_fn_148674gqrst<?9
2?/
)?&
inputs??????????
p 
? "!????????????
6__inference_batch_normalization_7_layer_call_fn_148687gqrst<?9
2?/
)?&
inputs??????????
p
? "!????????????
D__inference_conv2d_4_layer_call_and_return_conditional_losses_148226o79?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????@
? ?
)__inference_conv2d_4_layer_call_fn_148233b79?6
/?,
*?'
inputs???????????
? ""????????????@?
D__inference_conv2d_5_layer_call_and_return_conditional_losses_148386lM7?4
-?*
(?%
inputs?????????TT@
? ".?+
$?!
0?????????RR?
? ?
)__inference_conv2d_5_layer_call_fn_148393_M7?4
-?*
(?%
inputs?????????TT@
? "!??????????RR??
D__inference_conv2d_6_layer_call_and_return_conditional_losses_148546mc8?5
.?+
)?&
inputs?????????))?
? ".?+
$?!
0?????????''?
? ?
)__inference_conv2d_6_layer_call_fn_148553`c8?5
.?+
)?&
inputs?????????))?
? "!??????????''??
D__inference_conv2d_7_layer_call_and_return_conditional_losses_148706my8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_7_layer_call_fn_148713`y8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_dense_2_layer_call_and_return_conditional_losses_148760_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ~
(__inference_dense_2_layer_call_fn_148769R??0?-
&?#
!?
inputs??????????
? "??????????@?
C__inference_dense_3_layer_call_and_return_conditional_losses_148779^??/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? }
(__inference_dense_3_layer_call_fn_148788Q??/?,
%?"
 ?
inputs?????????@
? "?????????? ?
E__inference_dropout_1_layer_call_and_return_conditional_losses_148728^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_1_layer_call_and_return_conditional_losses_148740^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_1_layer_call_fn_148745Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_1_layer_call_fn_148750Q4?1
*?'
!?
inputs??????????
p
? "????????????
B__inference_footer_layer_call_and_return_conditional_losses_148839^??/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? |
'__inference_footer_layer_call_fn_148848Q??/?,
%?"
 ?
inputs????????? 
? "???????????
V__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_145400?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
;__inference_global_average_pooling2d_1_layer_call_fn_145406wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!???????????????????;
__inference_loss_fn_0_1488797?

? 
? "? ;
__inference_loss_fn_1_148890M?

? 
? "? ;
__inference_loss_fn_2_148901c?

? 
? "? ;
__inference_loss_fn_3_148912y?

? 
? "? ?
@__inference_main_layer_call_and_return_conditional_losses_148859^??/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? z
%__inference_main_layer_call_fn_148868Q??/?,
%?"
 ?
inputs????????? 
? "???????????
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_144985?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_3_layer_call_fn_144991?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_145123?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_4_layer_call_fn_145129?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_145261?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_5_layer_call_fn_145267?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_146623?,/0127EFGHM[\]^cqrsty????????????@?=
6?3
)?&
input???????????
p 

 
? "???
?|
?
0/0?????????
?
0/1?????????
?
0/2?????????
?
0/3?????????
? ?
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_146747?0??/0127EFGHM[\]^cqrsty????????????@?=
6?3
)?&
input???????????
p

 
? "???
?|
?
0/0?????????
?
0/1?????????
?
0/2?????????
?
0/3?????????
? ?
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_147009?,/0127EFGHM[\]^cqrsty????????????A?>
7?4
*?'
inputs???????????
p 

 
? "???
?|
?
0/0?????????
?
0/1?????????
?
0/2?????????
?
0/3?????????
? ?
P__inference_model_1_simple_model_layer_call_and_return_conditional_losses_147399?0??/0127EFGHM[\]^cqrsty????????????A?>
7?4
*?'
inputs???????????
p

 
? "???
?|
?
0/0?????????
?
0/1?????????
?
0/2?????????
?
0/3?????????
? ?
5__inference_model_1_simple_model_layer_call_fn_145831?,/0127EFGHM[\]^cqrsty????????????@?=
6?3
)?&
input???????????
p 

 
? "w?t
?
0?????????
?
1?????????
?
2?????????
?
3??????????
5__inference_model_1_simple_model_layer_call_fn_146503?0??/0127EFGHM[\]^cqrsty????????????@?=
6?3
)?&
input???????????
p

 
? "w?t
?
0?????????
?
1?????????
?
2?????????
?
3??????????
5__inference_model_1_simple_model_layer_call_fn_147474?,/0127EFGHM[\]^cqrsty????????????A?>
7?4
*?'
inputs???????????
p 

 
? "w?t
?
0?????????
?
1?????????
?
2?????????
?
3??????????
5__inference_model_1_simple_model_layer_call_fn_147553?0??/0127EFGHM[\]^cqrsty????????????A?>
7?4
*?'
inputs???????????
p

 
? "w?t
?
0?????????
?
1?????????
?
2?????????
?
3??????????
?__inference_nav_layer_call_and_return_conditional_losses_148799^??/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? y
$__inference_nav_layer_call_fn_148808Q??/?,
%?"
 ?
inputs????????? 
? "???????????
H__inference_sequential_1_layer_call_and_return_conditional_losses_147587tA?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_147819z??A?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_147823?P?M
F?C
9?6
random_rotation_input???????????
p 

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_148055???P?M
F?C
9?6
random_rotation_input???????????
p

 
? "/?,
%?"
0???????????
? ?
-__inference_sequential_1_layer_call_fn_148060vP?M
F?C
9?6
random_rotation_input???????????
p 

 
? ""?????????????
-__inference_sequential_1_layer_call_fn_148065gA?>
7?4
*?'
inputs???????????
p 

 
? ""?????????????
-__inference_sequential_1_layer_call_fn_148074m??A?>
7?4
*?'
inputs???????????
p

 
? ""?????????????
-__inference_sequential_1_layer_call_fn_148083|??P?M
F?C
9?6
random_rotation_input???????????
p

 
? ""?????????????
F__inference_sequential_layer_call_and_return_conditional_losses_144341|I?F
??<
2?/
resizing_input???????????
p 

 
? "/?,
%?"
0???????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_144351|I?F
??<
2?/
resizing_input???????????
p

 
? "/?,
%?"
0???????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_147563tA?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_147573tA?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????
? ?
+__inference_sequential_layer_call_fn_144306oI?F
??<
2?/
resizing_input???????????
p 

 
? ""?????????????
+__inference_sequential_layer_call_fn_144331oI?F
??<
2?/
resizing_input???????????
p

 
? ""?????????????
+__inference_sequential_layer_call_fn_147578gA?>
7?4
*?'
inputs???????????
p 

 
? ""?????????????
+__inference_sequential_layer_call_fn_147583gA?>
7?4
*?'
inputs???????????
p

 
? ""?????????????
@__inference_side_layer_call_and_return_conditional_losses_148819^??/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? z
%__inference_side_layer_call_fn_148828Q??/?,
%?"
 ?
inputs????????? 
? "???????????
$__inference_signature_wrapper_146854?,/0127EFGHM[\]^cqrsty????????????A?>
? 
7?4
2
input)?&
input???????????"???
*
footer ?
footer?????????
&
main?
main?????????
$
nav?
nav?????????
&
side?
side?????????