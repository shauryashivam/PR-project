ٍ
?9?9
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
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
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
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
?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
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
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
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
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2
?
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( ?
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
/
Sign
x"T
y"T"
Ttype:

2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
&
	ZerosLike
x"T
y"T"	
Ttype"train*2.0.0-beta02v1.12.1-3259-gf59745a3818܌
z
QdlinPlaceholder*
dtype0*%
shape:??????????*0
_output_shapes
:??????????
z
TdlinPlaceholder*0
_output_shapes
:??????????*
dtype0*%
shape:??????????
m
IRPlaceholder* 
shape:?????????*+
_output_shapes
:?????????*
dtype0
y
Discharge_timePlaceholder*
dtype0*+
_output_shapes
:?????????* 
shape:?????????
m
QDPlaceholder*
dtype0* 
shape:?????????*+
_output_shapes
:?????????
[
detail_concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
?
detail_concat/concatConcatV2QdlinTdlindetail_concat/concat/axis*0
_output_shapes
:??????????*
T0*
N
?
3convolution/kernel/Initializer/random_uniform/shapeConst*!
valueB"	          *
dtype0*%
_class
loc:@convolution/kernel*
_output_shapes
:
?
1convolution/kernel/Initializer/random_uniform/minConst*%
_class
loc:@convolution/kernel*
dtype0*
valueB
 *?c?*
_output_shapes
: 
?
1convolution/kernel/Initializer/random_uniform/maxConst*
dtype0*%
_class
loc:@convolution/kernel*
_output_shapes
: *
valueB
 *?c>
?
;convolution/kernel/Initializer/random_uniform/RandomUniformRandomUniform3convolution/kernel/Initializer/random_uniform/shape*
dtype0*
T0*%
_class
loc:@convolution/kernel*"
_output_shapes
:	 
?
1convolution/kernel/Initializer/random_uniform/subSub1convolution/kernel/Initializer/random_uniform/max1convolution/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@convolution/kernel*
_output_shapes
: 
?
1convolution/kernel/Initializer/random_uniform/mulMul;convolution/kernel/Initializer/random_uniform/RandomUniform1convolution/kernel/Initializer/random_uniform/sub*
T0*"
_output_shapes
:	 *%
_class
loc:@convolution/kernel
?
-convolution/kernel/Initializer/random_uniformAdd1convolution/kernel/Initializer/random_uniform/mul1convolution/kernel/Initializer/random_uniform/min*
T0*"
_output_shapes
:	 *%
_class
loc:@convolution/kernel
?
convolution/kernelVarHandleOp*#
shared_nameconvolution/kernel*
shape:	 *
_output_shapes
: *%
_class
loc:@convolution/kernel*
dtype0
u
3convolution/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconvolution/kernel*
_output_shapes
: 
?
convolution/kernel/AssignAssignVariableOpconvolution/kernel-convolution/kernel/Initializer/random_uniform*%
_class
loc:@convolution/kernel*
dtype0
?
&convolution/kernel/Read/ReadVariableOpReadVariableOpconvolution/kernel*"
_output_shapes
:	 *%
_class
loc:@convolution/kernel*
dtype0
?
"convolution/bias/Initializer/zerosConst*#
_class
loc:@convolution/bias*
valueB *    *
_output_shapes
: *
dtype0
?
convolution/biasVarHandleOp*!
shared_nameconvolution/bias*#
_class
loc:@convolution/bias*
dtype0*
shape: *
_output_shapes
: 
q
1convolution/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconvolution/bias*
_output_shapes
: 
?
convolution/bias/AssignAssignVariableOpconvolution/bias"convolution/bias/Initializer/zeros*#
_class
loc:@convolution/bias*
dtype0
?
$convolution/bias/Read/ReadVariableOpReadVariableOpconvolution/bias*
dtype0*
_output_shapes
: *#
_class
loc:@convolution/bias
c
convolution/dilation_rateConst*
_output_shapes
:*
valueB:*
dtype0
n
convolution/Reshape/shapeConst*
_output_shapes
:*!
valueB"?????     *
dtype0
?
convolution/ReshapeReshapedetail_concat/concatconvolution/Reshape/shape*,
_output_shapes
:??????????*
T0
c
!convolution/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
convolution/conv1d/ExpandDims
ExpandDimsconvolution/Reshape!convolution/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:??????????
?
.convolution/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconvolution/kernel*"
_output_shapes
:	 *
dtype0
e
#convolution/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
convolution/conv1d/ExpandDims_1
ExpandDims.convolution/conv1d/ExpandDims_1/ReadVariableOp#convolution/conv1d/ExpandDims_1/dim*&
_output_shapes
:	 *
T0
?
convolution/conv1dConv2Dconvolution/conv1d/ExpandDimsconvolution/conv1d/ExpandDims_1*
paddingSAME*
strides
*0
_output_shapes
:?????????? *
T0
?
convolution/conv1d/SqueezeSqueezeconvolution/conv1d*,
_output_shapes
:?????????? *
squeeze_dims
*
T0
o
"convolution/BiasAdd/ReadVariableOpReadVariableOpconvolution/bias*
_output_shapes
: *
dtype0
?
convolution/BiasAddBiasAddconvolution/conv1d/Squeeze"convolution/BiasAdd/ReadVariableOp*,
_output_shapes
:?????????? *
T0
d
convolution/ReluReluconvolution/BiasAdd*
T0*,
_output_shapes
:?????????? 
t
convolution/Reshape_1/shapeConst*
dtype0*%
valueB"????   N      *
_output_shapes
:
?
convolution/Reshape_1Reshapeconvolution/Reluconvolution/Reshape_1/shape*0
_output_shapes
:?????????? *
T0
l
conv_pool/Reshape/shapeConst*!
valueB"????N      *
_output_shapes
:*
dtype0
?
conv_pool/ReshapeReshapeconvolution/Reshape_1conv_pool/Reshape/shape*
T0*,
_output_shapes
:?????????? 
Z
conv_pool/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
?
conv_pool/ExpandDims
ExpandDimsconv_pool/Reshapeconv_pool/ExpandDims/dim*
T0*0
_output_shapes
:?????????? 
?
conv_pool/MaxPoolMaxPoolconv_pool/ExpandDims*
ksize
*
strides
*0
_output_shapes
:?????????? *
paddingVALID
}
conv_pool/SqueezeSqueezeconv_pool/MaxPool*
squeeze_dims
*,
_output_shapes
:?????????? *
T0
r
conv_pool/Reshape_1/shapeConst*%
valueB"????   ?       *
_output_shapes
:*
dtype0
?
conv_pool/Reshape_1Reshapeconv_pool/Squeezeconv_pool/Reshape_1/shape*0
_output_shapes
:?????????? *
T0
?
-conv2/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@conv2/kernel*
dtype0*
_output_shapes
:*!
valueB"	       @   
?
+conv2/kernel/Initializer/random_uniform/minConst*
_class
loc:@conv2/kernel*
valueB
 *????*
_output_shapes
: *
dtype0
?
+conv2/kernel/Initializer/random_uniform/maxConst*
valueB
 *???=*
_output_shapes
: *
_class
loc:@conv2/kernel*
dtype0
?
5conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform-conv2/kernel/Initializer/random_uniform/shape*"
_output_shapes
:	 @*
dtype0*
T0*
_class
loc:@conv2/kernel
?
+conv2/kernel/Initializer/random_uniform/subSub+conv2/kernel/Initializer/random_uniform/max+conv2/kernel/Initializer/random_uniform/min*
_class
loc:@conv2/kernel*
_output_shapes
: *
T0
?
+conv2/kernel/Initializer/random_uniform/mulMul5conv2/kernel/Initializer/random_uniform/RandomUniform+conv2/kernel/Initializer/random_uniform/sub*
T0*"
_output_shapes
:	 @*
_class
loc:@conv2/kernel
?
'conv2/kernel/Initializer/random_uniformAdd+conv2/kernel/Initializer/random_uniform/mul+conv2/kernel/Initializer/random_uniform/min*
_class
loc:@conv2/kernel*"
_output_shapes
:	 @*
T0
?
conv2/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2/kernel*
_class
loc:@conv2/kernel*
shape:	 @
i
-conv2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2/kernel*
_output_shapes
: 
?
conv2/kernel/AssignAssignVariableOpconv2/kernel'conv2/kernel/Initializer/random_uniform*
_class
loc:@conv2/kernel*
dtype0
?
 conv2/kernel/Read/ReadVariableOpReadVariableOpconv2/kernel*
dtype0*"
_output_shapes
:	 @*
_class
loc:@conv2/kernel
?
conv2/bias/Initializer/zerosConst*
dtype0*
_class
loc:@conv2/bias*
_output_shapes
:@*
valueB@*    
?

conv2/biasVarHandleOp*
_class
loc:@conv2/bias*
shape:@*
_output_shapes
: *
shared_name
conv2/bias*
dtype0
e
+conv2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
conv2/bias*
_output_shapes
: 
{
conv2/bias/AssignAssignVariableOp
conv2/biasconv2/bias/Initializer/zeros*
_class
loc:@conv2/bias*
dtype0
?
conv2/bias/Read/ReadVariableOpReadVariableOp
conv2/bias*
_class
loc:@conv2/bias*
_output_shapes
:@*
dtype0
]
conv2/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
h
conv2/Reshape/shapeConst*
dtype0*!
valueB"?????       *
_output_shapes
:
y
conv2/ReshapeReshapeconv_pool/Reshape_1conv2/Reshape/shape*
T0*,
_output_shapes
:?????????? 
]
conv2/conv1d/ExpandDims/dimConst*
value	B :*
_output_shapes
: *
dtype0
?
conv2/conv1d/ExpandDims
ExpandDimsconv2/Reshapeconv2/conv1d/ExpandDims/dim*0
_output_shapes
:?????????? *
T0
y
(conv2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv2/kernel*
dtype0*"
_output_shapes
:	 @
_
conv2/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
conv2/conv1d/ExpandDims_1
ExpandDims(conv2/conv1d/ExpandDims_1/ReadVariableOpconv2/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:	 @
?
conv2/conv1dConv2Dconv2/conv1d/ExpandDimsconv2/conv1d/ExpandDims_1*/
_output_shapes
:?????????8@*
strides
*
T0*
paddingSAME
z
conv2/conv1d/SqueezeSqueezeconv2/conv1d*
T0*
squeeze_dims
*+
_output_shapes
:?????????8@
c
conv2/BiasAdd/ReadVariableOpReadVariableOp
conv2/bias*
_output_shapes
:@*
dtype0
?
conv2/BiasAddBiasAddconv2/conv1d/Squeezeconv2/BiasAdd/ReadVariableOp*
T0*+
_output_shapes
:?????????8@
W

conv2/ReluReluconv2/BiasAdd*+
_output_shapes
:?????????8@*
T0
n
conv2/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"????   8   @   
w
conv2/Reshape_1Reshape
conv2/Reluconv2/Reshape_1/shape*
T0*/
_output_shapes
:?????????8@
h
pool2/Reshape/shapeConst*!
valueB"????8   @   *
dtype0*
_output_shapes
:
t
pool2/ReshapeReshapeconv2/Reshape_1pool2/Reshape/shape*
T0*+
_output_shapes
:?????????8@
V
pool2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
}
pool2/ExpandDims
ExpandDimspool2/Reshapepool2/ExpandDims/dim*
T0*/
_output_shapes
:?????????8@
?
pool2/MaxPoolMaxPoolpool2/ExpandDims*
paddingVALID*/
_output_shapes
:?????????@*
strides
*
ksize

t
pool2/SqueezeSqueezepool2/MaxPool*
squeeze_dims
*
T0*+
_output_shapes
:?????????@
n
pool2/Reshape_1/shapeConst*
dtype0*%
valueB"????      @   *
_output_shapes
:
z
pool2/Reshape_1Reshapepool2/Squeezepool2/Reshape_1/shape*/
_output_shapes
:?????????@*
T0
?
-conv3/kernel/Initializer/random_uniform/shapeConst*!
valueB"	   @   ?   *
_output_shapes
:*
_class
loc:@conv3/kernel*
dtype0
?
+conv3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *?[q?*
_class
loc:@conv3/kernel
?
+conv3/kernel/Initializer/random_uniform/maxConst*
valueB
 *?[q=*
_class
loc:@conv3/kernel*
dtype0*
_output_shapes
: 
?
5conv3/kernel/Initializer/random_uniform/RandomUniformRandomUniform-conv3/kernel/Initializer/random_uniform/shape*
_class
loc:@conv3/kernel*
T0*#
_output_shapes
:	@?*
dtype0
?
+conv3/kernel/Initializer/random_uniform/subSub+conv3/kernel/Initializer/random_uniform/max+conv3/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@conv3/kernel*
_output_shapes
: 
?
+conv3/kernel/Initializer/random_uniform/mulMul5conv3/kernel/Initializer/random_uniform/RandomUniform+conv3/kernel/Initializer/random_uniform/sub*#
_output_shapes
:	@?*
_class
loc:@conv3/kernel*
T0
?
'conv3/kernel/Initializer/random_uniformAdd+conv3/kernel/Initializer/random_uniform/mul+conv3/kernel/Initializer/random_uniform/min*#
_output_shapes
:	@?*
T0*
_class
loc:@conv3/kernel
?
conv3/kernelVarHandleOp*
shared_nameconv3/kernel*
_output_shapes
: *
shape:	@?*
_class
loc:@conv3/kernel*
dtype0
i
-conv3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3/kernel*
_output_shapes
: 
?
conv3/kernel/AssignAssignVariableOpconv3/kernel'conv3/kernel/Initializer/random_uniform*
_class
loc:@conv3/kernel*
dtype0
?
 conv3/kernel/Read/ReadVariableOpReadVariableOpconv3/kernel*#
_output_shapes
:	@?*
_class
loc:@conv3/kernel*
dtype0
?
conv3/bias/Initializer/zerosConst*
_class
loc:@conv3/bias*
_output_shapes	
:?*
valueB?*    *
dtype0
?

conv3/biasVarHandleOp*
shared_name
conv3/bias*
dtype0*
shape:?*
_output_shapes
: *
_class
loc:@conv3/bias
e
+conv3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
conv3/bias*
_output_shapes
: 
{
conv3/bias/AssignAssignVariableOp
conv3/biasconv3/bias/Initializer/zeros*
_class
loc:@conv3/bias*
dtype0
?
conv3/bias/Read/ReadVariableOpReadVariableOp
conv3/bias*
_class
loc:@conv3/bias*
_output_shapes	
:?*
dtype0
]
conv3/dilation_rateConst*
_output_shapes
:*
valueB:*
dtype0
h
conv3/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"????   @   
t
conv3/ReshapeReshapepool2/Reshape_1conv3/Reshape/shape*
T0*+
_output_shapes
:?????????@
]
conv3/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv3/conv1d/ExpandDims
ExpandDimsconv3/Reshapeconv3/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:?????????@
z
(conv3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv3/kernel*
dtype0*#
_output_shapes
:	@?
_
conv3/conv1d/ExpandDims_1/dimConst*
value	B : *
_output_shapes
: *
dtype0
?
conv3/conv1d/ExpandDims_1
ExpandDims(conv3/conv1d/ExpandDims_1/ReadVariableOpconv3/conv1d/ExpandDims_1/dim*'
_output_shapes
:	@?*
T0
?
conv3/conv1dConv2Dconv3/conv1d/ExpandDimsconv3/conv1d/ExpandDims_1*
paddingSAME*
strides
*0
_output_shapes
:?????????
?*
T0
{
conv3/conv1d/SqueezeSqueezeconv3/conv1d*
T0*
squeeze_dims
*,
_output_shapes
:?????????
?
d
conv3/BiasAdd/ReadVariableOpReadVariableOp
conv3/bias*
dtype0*
_output_shapes	
:?
?
conv3/BiasAddBiasAddconv3/conv1d/Squeezeconv3/BiasAdd/ReadVariableOp*,
_output_shapes
:?????????
?*
T0
X

conv3/ReluReluconv3/BiasAdd*,
_output_shapes
:?????????
?*
T0
n
conv3/Reshape_1/shapeConst*
dtype0*%
valueB"????   
   ?   *
_output_shapes
:
x
conv3/Reshape_1Reshape
conv3/Reluconv3/Reshape_1/shape*0
_output_shapes
:?????????
?*
T0
h
pool3/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"????
   ?   
u
pool3/ReshapeReshapeconv3/Reshape_1pool3/Reshape/shape*
T0*,
_output_shapes
:?????????
?
V
pool3/ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0
~
pool3/ExpandDims
ExpandDimspool3/Reshapepool3/ExpandDims/dim*0
_output_shapes
:?????????
?*
T0
?
pool3/MaxPoolMaxPoolpool3/ExpandDims*
strides
*0
_output_shapes
:??????????*
ksize
*
paddingVALID
u
pool3/SqueezeSqueezepool3/MaxPool*
T0*,
_output_shapes
:??????????*
squeeze_dims

n
pool3/Reshape_1/shapeConst*%
valueB"????      ?   *
dtype0*
_output_shapes
:
{
pool3/Reshape_1Reshapepool3/Squeezepool3/Reshape_1/shape*
T0*0
_output_shapes
:??????????
s
convolution_flat/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"????   ?   
?
convolution_flat/ReshapeReshapepool3/Reshape_1convolution_flat/Reshape/shape*,
_output_shapes
:??????????*
T0
^
convolution_flat/ShapeShapeconvolution_flat/Reshape*
_output_shapes
:*
T0
n
$convolution_flat/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
p
&convolution_flat/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
p
&convolution_flat/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
convolution_flat/strided_sliceStridedSliceconvolution_flat/Shape$convolution_flat/strided_slice/stack&convolution_flat/strided_slice/stack_1&convolution_flat/strided_slice/stack_2*
T0*
shrink_axis_mask*
Index0*
_output_shapes
: 
m
"convolution_flat/Reshape_1/shape/1Const*
_output_shapes
: *
valueB :
?????????*
dtype0
?
 convolution_flat/Reshape_1/shapePackconvolution_flat/strided_slice"convolution_flat/Reshape_1/shape/1*
T0*
_output_shapes
:*
N
?
convolution_flat/Reshape_1Reshapeconvolution_flat/Reshape convolution_flat/Reshape_1/shape*(
_output_shapes
:??????????*
T0
u
 convolution_flat/Reshape_2/shapeConst*!
valueB"????   ?  *
dtype0*
_output_shapes
:
?
convolution_flat/Reshape_2Reshapeconvolution_flat/Reshape_1 convolution_flat/Reshape_2/shape*
T0*,
_output_shapes
:??????????
j
dropout_cnn/Reshape/shapeConst*
dtype0*
valueB"?????  *
_output_shapes
:
?
dropout_cnn/ReshapeReshapeconvolution_flat/Reshape_2dropout_cnn/Reshape/shape*
T0*(
_output_shapes
:??????????
]
dropout_cnn/dropout/rateConst*
valueB
 *???>*
_output_shapes
: *
dtype0
\
dropout_cnn/dropout/ShapeShapedropout_cnn/Reshape*
T0*
_output_shapes
:
k
&dropout_cnn/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
k
&dropout_cnn/dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
0dropout_cnn/dropout/random_uniform/RandomUniformRandomUniformdropout_cnn/dropout/Shape*
dtype0*
T0*(
_output_shapes
:??????????
?
&dropout_cnn/dropout/random_uniform/subSub&dropout_cnn/dropout/random_uniform/max&dropout_cnn/dropout/random_uniform/min*
_output_shapes
: *
T0
?
&dropout_cnn/dropout/random_uniform/mulMul0dropout_cnn/dropout/random_uniform/RandomUniform&dropout_cnn/dropout/random_uniform/sub*
T0*(
_output_shapes
:??????????
?
"dropout_cnn/dropout/random_uniformAdd&dropout_cnn/dropout/random_uniform/mul&dropout_cnn/dropout/random_uniform/min*
T0*(
_output_shapes
:??????????
^
dropout_cnn/dropout/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
t
dropout_cnn/dropout/subSubdropout_cnn/dropout/sub/xdropout_cnn/dropout/rate*
_output_shapes
: *
T0
b
dropout_cnn/dropout/truediv/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 

dropout_cnn/dropout/truedivRealDivdropout_cnn/dropout/truediv/xdropout_cnn/dropout/sub*
T0*
_output_shapes
: 
?
 dropout_cnn/dropout/GreaterEqualGreaterEqual"dropout_cnn/dropout/random_uniformdropout_cnn/dropout/rate*(
_output_shapes
:??????????*
T0
?
dropout_cnn/dropout/mulMuldropout_cnn/Reshapedropout_cnn/dropout/truediv*(
_output_shapes
:??????????*
T0
?
dropout_cnn/dropout/CastCast dropout_cnn/dropout/GreaterEqual*

SrcT0
*

DstT0*(
_output_shapes
:??????????
?
dropout_cnn/dropout/mul_1Muldropout_cnn/dropout/muldropout_cnn/dropout/Cast*
T0*(
_output_shapes
:??????????
p
dropout_cnn/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*!
valueB"????   ?  
?
dropout_cnn/Reshape_1Reshapedropout_cnn/dropout/mul_1dropout_cnn/Reshape_1/shape*,
_output_shapes
:??????????*
T0
X
all_concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
?
all_concat/concatConcatV2dropout_cnn/Reshape_1IRDischarge_timeQDall_concat/concat/axis*
N*
T0*,
_output_shapes
:??????????
?
1recurrent/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@recurrent/kernel*
_output_shapes
:*
valueB"?     *
dtype0
?
/recurrent/kernel/Initializer/random_uniform/minConst*
valueB
 *???*
_output_shapes
: *
dtype0*#
_class
loc:@recurrent/kernel
?
/recurrent/kernel/Initializer/random_uniform/maxConst*
valueB
 *??=*#
_class
loc:@recurrent/kernel*
_output_shapes
: *
dtype0
?
9recurrent/kernel/Initializer/random_uniform/RandomUniformRandomUniform1recurrent/kernel/Initializer/random_uniform/shape*#
_class
loc:@recurrent/kernel*
dtype0*
T0* 
_output_shapes
:
??
?
/recurrent/kernel/Initializer/random_uniform/subSub/recurrent/kernel/Initializer/random_uniform/max/recurrent/kernel/Initializer/random_uniform/min*
_output_shapes
: *#
_class
loc:@recurrent/kernel*
T0
?
/recurrent/kernel/Initializer/random_uniform/mulMul9recurrent/kernel/Initializer/random_uniform/RandomUniform/recurrent/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
??*
T0*#
_class
loc:@recurrent/kernel
?
+recurrent/kernel/Initializer/random_uniformAdd/recurrent/kernel/Initializer/random_uniform/mul/recurrent/kernel/Initializer/random_uniform/min*#
_class
loc:@recurrent/kernel*
T0* 
_output_shapes
:
??
?
recurrent/kernelVarHandleOp*
shape:
??*
_output_shapes
: *#
_class
loc:@recurrent/kernel*
dtype0*!
shared_namerecurrent/kernel
q
1recurrent/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOprecurrent/kernel*
_output_shapes
: 
?
recurrent/kernel/AssignAssignVariableOprecurrent/kernel+recurrent/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@recurrent/kernel
?
$recurrent/kernel/Read/ReadVariableOpReadVariableOprecurrent/kernel* 
_output_shapes
:
??*#
_class
loc:@recurrent/kernel*
dtype0
?
:recurrent/recurrent_kernel/Initializer/random_normal/shapeConst*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
:*
valueB"   ?   
?
9recurrent/recurrent_kernel/Initializer/random_normal/meanConst*
_output_shapes
: *-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0*
valueB
 *    
?
;recurrent/recurrent_kernel/Initializer/random_normal/stddevConst*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Irecurrent/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal:recurrent/recurrent_kernel/Initializer/random_normal/shape* 
_output_shapes
:
??*
dtype0*
T0*-
_class#
!loc:@recurrent/recurrent_kernel
?
8recurrent/recurrent_kernel/Initializer/random_normal/mulMulIrecurrent/recurrent_kernel/Initializer/random_normal/RandomStandardNormal;recurrent/recurrent_kernel/Initializer/random_normal/stddev*
T0*-
_class#
!loc:@recurrent/recurrent_kernel* 
_output_shapes
:
??
?
4recurrent/recurrent_kernel/Initializer/random_normalAdd8recurrent/recurrent_kernel/Initializer/random_normal/mul9recurrent/recurrent_kernel/Initializer/random_normal/mean* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel*
T0
?
)recurrent/recurrent_kernel/Initializer/QrQr4recurrent/recurrent_kernel/Initializer/random_normal*-
_class#
!loc:@recurrent/recurrent_kernel*,
_output_shapes
:
??:
??*
T0
?
/recurrent/recurrent_kernel/Initializer/DiagPartDiagPart+recurrent/recurrent_kernel/Initializer/Qr:1*-
_class#
!loc:@recurrent/recurrent_kernel*
T0*
_output_shapes	
:?
?
+recurrent/recurrent_kernel/Initializer/SignSign/recurrent/recurrent_kernel/Initializer/DiagPart*-
_class#
!loc:@recurrent/recurrent_kernel*
T0*
_output_shapes	
:?
?
*recurrent/recurrent_kernel/Initializer/mulMul)recurrent/recurrent_kernel/Initializer/Qr+recurrent/recurrent_kernel/Initializer/Sign*
T0* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel
?
Frecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
valueB"       *-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0*
_output_shapes
:
?
Arecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose*recurrent/recurrent_kernel/Initializer/mulFrecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*
T0* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel
?
4recurrent/recurrent_kernel/Initializer/Reshape/shapeConst*-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0*
valueB"?      *
_output_shapes
:
?
.recurrent/recurrent_kernel/Initializer/ReshapeReshapeArecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose4recurrent/recurrent_kernel/Initializer/Reshape/shape*
T0* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel
?
.recurrent/recurrent_kernel/Initializer/mul_1/xConst*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
,recurrent/recurrent_kernel/Initializer/mul_1Mul.recurrent/recurrent_kernel/Initializer/mul_1/x.recurrent/recurrent_kernel/Initializer/Reshape* 
_output_shapes
:
??*
T0*-
_class#
!loc:@recurrent/recurrent_kernel
?
recurrent/recurrent_kernelVarHandleOp*
shape:
??*-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0*+
shared_namerecurrent/recurrent_kernel*
_output_shapes
: 
?
;recurrent/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOprecurrent/recurrent_kernel*
_output_shapes
: 
?
!recurrent/recurrent_kernel/AssignAssignVariableOprecurrent/recurrent_kernel,recurrent/recurrent_kernel/Initializer/mul_1*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel
?
.recurrent/recurrent_kernel/Read/ReadVariableOpReadVariableOprecurrent/recurrent_kernel* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0
?
 recurrent/bias/Initializer/zerosConst*!
_class
loc:@recurrent/bias*
dtype0*
_output_shapes	
:?*
valueB?*    
?
recurrent/bias/Initializer/onesConst*
valueB?*  ??*
dtype0*
_output_shapes	
:?*!
_class
loc:@recurrent/bias
?
"recurrent/bias/Initializer/zeros_1Const*
valueB?*    *!
_class
loc:@recurrent/bias*
_output_shapes	
:?*
dtype0
?
&recurrent/bias/Initializer/concat/axisConst*!
_class
loc:@recurrent/bias*
dtype0*
_output_shapes
: *
value	B : 
?
!recurrent/bias/Initializer/concatConcatV2 recurrent/bias/Initializer/zerosrecurrent/bias/Initializer/ones"recurrent/bias/Initializer/zeros_1&recurrent/bias/Initializer/concat/axis*
T0*
_output_shapes	
:?*!
_class
loc:@recurrent/bias*
N
?
recurrent/biasVarHandleOp*
shared_namerecurrent/bias*
shape:?*!
_class
loc:@recurrent/bias*
dtype0*
_output_shapes
: 
m
/recurrent/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOprecurrent/bias*
_output_shapes
: 
?
recurrent/bias/AssignAssignVariableOprecurrent/bias!recurrent/bias/Initializer/concat*
dtype0*!
_class
loc:@recurrent/bias
?
"recurrent/bias/Read/ReadVariableOpReadVariableOprecurrent/bias*
dtype0*!
_class
loc:@recurrent/bias*
_output_shapes	
:?
P
recurrent/ShapeShapeall_concat/concat*
T0*
_output_shapes
:
g
recurrent/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
i
recurrent/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
i
recurrent/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
recurrent/strided_sliceStridedSlicerecurrent/Shaperecurrent/strided_slice/stackrecurrent/strided_slice/stack_1recurrent/strided_slice/stack_2*
T0*
_output_shapes
: *
shrink_axis_mask*
Index0
X
recurrent/zeros/mul/yConst*
value
B :?*
_output_shapes
: *
dtype0
k
recurrent/zeros/mulMulrecurrent/strided_slicerecurrent/zeros/mul/y*
T0*
_output_shapes
: 
Y
recurrent/zeros/Less/yConst*
dtype0*
value
B :?*
_output_shapes
: 
j
recurrent/zeros/LessLessrecurrent/zeros/mulrecurrent/zeros/Less/y*
_output_shapes
: *
T0
[
recurrent/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?

recurrent/zeros/packedPackrecurrent/strided_slicerecurrent/zeros/packed/1*
N*
T0*
_output_shapes
:
Z
recurrent/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
y
recurrent/zerosFillrecurrent/zeros/packedrecurrent/zeros/Const*(
_output_shapes
:??????????*
T0
Z
recurrent/zeros_1/mul/yConst*
value
B :?*
dtype0*
_output_shapes
: 
o
recurrent/zeros_1/mulMulrecurrent/strided_slicerecurrent/zeros_1/mul/y*
_output_shapes
: *
T0
[
recurrent/zeros_1/Less/yConst*
value
B :?*
dtype0*
_output_shapes
: 
p
recurrent/zeros_1/LessLessrecurrent/zeros_1/mulrecurrent/zeros_1/Less/y*
_output_shapes
: *
T0
]
recurrent/zeros_1/packed/1Const*
_output_shapes
: *
value
B :?*
dtype0
?
recurrent/zeros_1/packedPackrecurrent/strided_slicerecurrent/zeros_1/packed/1*
_output_shapes
:*
N*
T0
\
recurrent/zeros_1/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0

recurrent/zeros_1Fillrecurrent/zeros_1/packedrecurrent/zeros_1/Const*(
_output_shapes
:??????????*
T0
?
!recurrent/StatefulPartitionedCallStatefulPartitionedCallall_concat/concatrecurrent/zerosrecurrent/zeros_1recurrent/kernelrecurrent/recurrent_kernelrecurrent/bias*
Tin

2*0
Tout(
&2$*&
f!R
__forward_standard_lstm_20668*?
_output_shapes?
?:??????????:??????????:??????????:??????????: :??????????::::: : : : : : : : : : : : : : : : : : : : : : : : :??????????:**
config_proto

GPU 

CPU2J 8*,
_gradient_op_typePartitionedCall-20081
^
dropout_lstm/dropout/rateConst*
_output_shapes
: *
dtype0*
valueB
 *???>
k
dropout_lstm/dropout/ShapeShape!recurrent/StatefulPartitionedCall*
T0*
_output_shapes
:
l
'dropout_lstm/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l
'dropout_lstm/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
1dropout_lstm/dropout/random_uniform/RandomUniformRandomUniformdropout_lstm/dropout/Shape*
T0*(
_output_shapes
:??????????*
dtype0
?
'dropout_lstm/dropout/random_uniform/subSub'dropout_lstm/dropout/random_uniform/max'dropout_lstm/dropout/random_uniform/min*
_output_shapes
: *
T0
?
'dropout_lstm/dropout/random_uniform/mulMul1dropout_lstm/dropout/random_uniform/RandomUniform'dropout_lstm/dropout/random_uniform/sub*(
_output_shapes
:??????????*
T0
?
#dropout_lstm/dropout/random_uniformAdd'dropout_lstm/dropout/random_uniform/mul'dropout_lstm/dropout/random_uniform/min*(
_output_shapes
:??????????*
T0
_
dropout_lstm/dropout/sub/xConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
w
dropout_lstm/dropout/subSubdropout_lstm/dropout/sub/xdropout_lstm/dropout/rate*
T0*
_output_shapes
: 
c
dropout_lstm/dropout/truediv/xConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
dropout_lstm/dropout/truedivRealDivdropout_lstm/dropout/truediv/xdropout_lstm/dropout/sub*
T0*
_output_shapes
: 
?
!dropout_lstm/dropout/GreaterEqualGreaterEqual#dropout_lstm/dropout/random_uniformdropout_lstm/dropout/rate*(
_output_shapes
:??????????*
T0
?
dropout_lstm/dropout/mulMul!recurrent/StatefulPartitionedCalldropout_lstm/dropout/truediv*
T0*(
_output_shapes
:??????????
?
dropout_lstm/dropout/CastCast!dropout_lstm/dropout/GreaterEqual*

SrcT0
*

DstT0*(
_output_shapes
:??????????
?
dropout_lstm/dropout/mul_1Muldropout_lstm/dropout/muldropout_lstm/dropout/Cast*(
_output_shapes
:??????????*
T0
?
.hidden/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB"?       * 
_class
loc:@hidden/kernel
?
,hidden/kernel/Initializer/random_uniform/minConst*
dtype0* 
_class
loc:@hidden/kernel*
_output_shapes
: *
valueB
 *?KF?
?
,hidden/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *?KF>* 
_class
loc:@hidden/kernel*
_output_shapes
: 
?
6hidden/kernel/Initializer/random_uniform/RandomUniformRandomUniform.hidden/kernel/Initializer/random_uniform/shape*
_output_shapes
:	? *
dtype0*
T0* 
_class
loc:@hidden/kernel
?
,hidden/kernel/Initializer/random_uniform/subSub,hidden/kernel/Initializer/random_uniform/max,hidden/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@hidden/kernel
?
,hidden/kernel/Initializer/random_uniform/mulMul6hidden/kernel/Initializer/random_uniform/RandomUniform,hidden/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@hidden/kernel*
_output_shapes
:	? 
?
(hidden/kernel/Initializer/random_uniformAdd,hidden/kernel/Initializer/random_uniform/mul,hidden/kernel/Initializer/random_uniform/min*
_output_shapes
:	? *
T0* 
_class
loc:@hidden/kernel
?
hidden/kernelVarHandleOp* 
_class
loc:@hidden/kernel*
_output_shapes
: *
shared_namehidden/kernel*
dtype0*
shape:	? 
k
.hidden/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden/kernel*
_output_shapes
: 
?
hidden/kernel/AssignAssignVariableOphidden/kernel(hidden/kernel/Initializer/random_uniform*
dtype0* 
_class
loc:@hidden/kernel
?
!hidden/kernel/Read/ReadVariableOpReadVariableOphidden/kernel* 
_class
loc:@hidden/kernel*
dtype0*
_output_shapes
:	? 
?
hidden/bias/Initializer/zerosConst*
dtype0*
valueB *    *
_class
loc:@hidden/bias*
_output_shapes
: 
?
hidden/biasVarHandleOp*
_output_shapes
: *
shared_namehidden/bias*
_class
loc:@hidden/bias*
dtype0*
shape: 
g
,hidden/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden/bias*
_output_shapes
: 

hidden/bias/AssignAssignVariableOphidden/biashidden/bias/Initializer/zeros*
dtype0*
_class
loc:@hidden/bias
?
hidden/bias/Read/ReadVariableOpReadVariableOphidden/bias*
dtype0*
_output_shapes
: *
_class
loc:@hidden/bias
k
hidden/MatMul/ReadVariableOpReadVariableOphidden/kernel*
dtype0*
_output_shapes
:	? 
?
hidden/MatMulMatMuldropout_lstm/dropout/mul_1hidden/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 
e
hidden/BiasAdd/ReadVariableOpReadVariableOphidden/bias*
dtype0*
_output_shapes
: 
y
hidden/BiasAddBiasAddhidden/MatMulhidden/BiasAdd/ReadVariableOp*'
_output_shapes
:????????? *
T0
U
hidden/ReluReluhidden/BiasAdd*
T0*'
_output_shapes
:????????? 
?
.output/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@output/kernel*
dtype0*
valueB"       *
_output_shapes
:
?
,output/kernel/Initializer/random_uniform/minConst*
valueB
 *A׾*
dtype0* 
_class
loc:@output/kernel*
_output_shapes
: 
?
,output/kernel/Initializer/random_uniform/maxConst*
valueB
 *A?>*
_output_shapes
: * 
_class
loc:@output/kernel*
dtype0
?
6output/kernel/Initializer/random_uniform/RandomUniformRandomUniform.output/kernel/Initializer/random_uniform/shape*
_output_shapes

: *
T0*
dtype0* 
_class
loc:@output/kernel
?
,output/kernel/Initializer/random_uniform/subSub,output/kernel/Initializer/random_uniform/max,output/kernel/Initializer/random_uniform/min* 
_class
loc:@output/kernel*
_output_shapes
: *
T0
?
,output/kernel/Initializer/random_uniform/mulMul6output/kernel/Initializer/random_uniform/RandomUniform,output/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

: * 
_class
loc:@output/kernel
?
(output/kernel/Initializer/random_uniformAdd,output/kernel/Initializer/random_uniform/mul,output/kernel/Initializer/random_uniform/min*
_output_shapes

: * 
_class
loc:@output/kernel*
T0
?
output/kernelVarHandleOp*
shared_nameoutput/kernel* 
_class
loc:@output/kernel*
shape
: *
dtype0*
_output_shapes
: 
k
.output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/kernel*
_output_shapes
: 
?
output/kernel/AssignAssignVariableOpoutput/kernel(output/kernel/Initializer/random_uniform* 
_class
loc:@output/kernel*
dtype0
?
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

: * 
_class
loc:@output/kernel*
dtype0
?
output/bias/Initializer/zerosConst*
_class
loc:@output/bias*
dtype0*
valueB*    *
_output_shapes
:
?
output/biasVarHandleOp*
shape:*
_output_shapes
: *
dtype0*
shared_nameoutput/bias*
_class
loc:@output/bias
g
,output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/bias*
_output_shapes
: 

output/bias/AssignAssignVariableOpoutput/biasoutput/bias/Initializer/zeros*
dtype0*
_class
loc:@output/bias
?
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
dtype0*
_output_shapes
:*
_class
loc:@output/bias
j
output/MatMul/ReadVariableOpReadVariableOpoutput/kernel*
dtype0*
_output_shapes

: 
t
output/MatMulMatMulhidden/Reluoutput/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
e
output/BiasAdd/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
y
output/BiasAddBiasAddoutput/MatMuloutput/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????*
T0
\
output/clippy/ReluReluoutput/BiasAdd*'
_output_shapes
:?????????*
T0
X
output/clippy/ConstConst*
valueB
 *????*
dtype0*
_output_shapes
: 
Z
output/clippy/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
?
#output/clippy/clip_by_value/MinimumMinimumoutput/clippy/Reluoutput/clippy/Const*'
_output_shapes
:?????????*
T0
?
output/clippy/clip_by_valueMaximum#output/clippy/clip_by_value/Minimumoutput/clippy/Const_1*
T0*'
_output_shapes
:?????????
?
output_targetPlaceholder*0
_output_shapes
:??????????????????*%
shape:??????????????????*
dtype0
v
total/Initializer/zerosConst*
_class

loc:@total*
valueB
 *    *
_output_shapes
: *
dtype0
x
totalVarHandleOp*
shape: *
_output_shapes
: *
_class

loc:@total*
shared_nametotal*
dtype0
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0*
_class

loc:@total
q
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0*
_class

loc:@total
v
count/Initializer/zerosConst*
dtype0*
valueB
 *    *
_class

loc:@count*
_output_shapes
: 
x
countVarHandleOp*
shape: *
_class

loc:@count*
_output_shapes
: *
shared_namecount*
dtype0
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
_class

loc:@count*
dtype0
z
total_1/Initializer/zerosConst*
_class
loc:@total_1*
dtype0*
valueB
 *    *
_output_shapes
: 
~
total_1VarHandleOp*
_class
loc:@total_1*
dtype0*
shape: *
shared_name	total_1*
_output_shapes
: 
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
dtype0*
_class
loc:@total_1
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_class
loc:@total_1*
_output_shapes
: *
dtype0
z
count_1/Initializer/zerosConst*
_class
loc:@count_1*
valueB
 *    *
dtype0*
_output_shapes
: 
~
count_1VarHandleOp*
_output_shapes
: *
_class
loc:@count_1*
shape: *
shared_name	count_1*
dtype0
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
dtype0*
_class
loc:@count_1
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
_class
loc:@count_1*
dtype0
?
metrics/mae_current_cycle/subSuboutput_targetoutput/clippy/clip_by_value*'
_output_shapes
:?????????*
T0
u
metrics/mae_current_cycle/AbsAbsmetrics/mae_current_cycle/sub*'
_output_shapes
:?????????*
T0
r
0metrics/mae_current_cycle/Mean/reduction_indicesConst*
dtype0*
value	B : *
_output_shapes
: 
?
metrics/mae_current_cycle/MeanMeanmetrics/mae_current_cycle/Abs0metrics/mae_current_cycle/Mean/reduction_indices*
_output_shapes
:*
T0
w
-metrics/mae_current_cycle/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
y
/metrics/mae_current_cycle/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
y
/metrics/mae_current_cycle/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
'metrics/mae_current_cycle/strided_sliceStridedSlicemetrics/mae_current_cycle/Mean-metrics/mae_current_cycle/strided_slice/stack/metrics/mae_current_cycle/strided_slice/stack_1/metrics/mae_current_cycle/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 
d
metrics/mae_current_cycle/mul/yConst*
valueB
 * ?E*
_output_shapes
: *
dtype0
?
metrics/mae_current_cycle/mulMul'metrics/mae_current_cycle/strided_slicemetrics/mae_current_cycle/mul/y*
T0*
_output_shapes
: 
b
metrics/mae_current_cycle/ConstConst*
_output_shapes
: *
dtype0*
valueB 
?
metrics/mae_current_cycle/SumSummetrics/mae_current_cycle/mulmetrics/mae_current_cycle/Const*
_output_shapes
: *
T0
w
-metrics/mae_current_cycle/AssignAddVariableOpAssignAddVariableOptotalmetrics/mae_current_cycle/Sum*
dtype0
?
(metrics/mae_current_cycle/ReadVariableOpReadVariableOptotal.^metrics/mae_current_cycle/AssignAddVariableOp^metrics/mae_current_cycle/Sum*
_output_shapes
: *
dtype0
`
metrics/mae_current_cycle/SizeConst*
_output_shapes
: *
value	B :*
dtype0
v
metrics/mae_current_cycle/CastCastmetrics/mae_current_cycle/Size*
_output_shapes
: *

DstT0*

SrcT0
?
/metrics/mae_current_cycle/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/mae_current_cycle/Cast.^metrics/mae_current_cycle/AssignAddVariableOp*
dtype0
?
*metrics/mae_current_cycle/ReadVariableOp_1ReadVariableOpcount.^metrics/mae_current_cycle/AssignAddVariableOp0^metrics/mae_current_cycle/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
3metrics/mae_current_cycle/div_no_nan/ReadVariableOpReadVariableOptotal0^metrics/mae_current_cycle/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
5metrics/mae_current_cycle/div_no_nan/ReadVariableOp_1ReadVariableOpcount0^metrics/mae_current_cycle/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
$metrics/mae_current_cycle/div_no_nanDivNoNan3metrics/mae_current_cycle/div_no_nan/ReadVariableOp5metrics/mae_current_cycle/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
u
"metrics/mae_current_cycle/IdentityIdentity$metrics/mae_current_cycle/div_no_nan*
T0*
_output_shapes
: 
?
 metrics/mae_remaining_cycles/subSuboutput_targetoutput/clippy/clip_by_value*
T0*'
_output_shapes
:?????????
{
 metrics/mae_remaining_cycles/AbsAbs metrics/mae_remaining_cycles/sub*'
_output_shapes
:?????????*
T0
u
3metrics/mae_remaining_cycles/Mean/reduction_indicesConst*
value	B : *
dtype0*
_output_shapes
: 
?
!metrics/mae_remaining_cycles/MeanMean metrics/mae_remaining_cycles/Abs3metrics/mae_remaining_cycles/Mean/reduction_indices*
_output_shapes
:*
T0
z
0metrics/mae_remaining_cycles/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
|
2metrics/mae_remaining_cycles/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
|
2metrics/mae_remaining_cycles/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
*metrics/mae_remaining_cycles/strided_sliceStridedSlice!metrics/mae_remaining_cycles/Mean0metrics/mae_remaining_cycles/strided_slice/stack2metrics/mae_remaining_cycles/strided_slice/stack_12metrics/mae_remaining_cycles/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
g
"metrics/mae_remaining_cycles/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * ?E
?
 metrics/mae_remaining_cycles/mulMul*metrics/mae_remaining_cycles/strided_slice"metrics/mae_remaining_cycles/mul/y*
T0*
_output_shapes
: 
e
"metrics/mae_remaining_cycles/ConstConst*
valueB *
_output_shapes
: *
dtype0
?
 metrics/mae_remaining_cycles/SumSum metrics/mae_remaining_cycles/mul"metrics/mae_remaining_cycles/Const*
_output_shapes
: *
T0

0metrics/mae_remaining_cycles/AssignAddVariableOpAssignAddVariableOptotal_1 metrics/mae_remaining_cycles/Sum*
dtype0
?
+metrics/mae_remaining_cycles/ReadVariableOpReadVariableOptotal_11^metrics/mae_remaining_cycles/AssignAddVariableOp!^metrics/mae_remaining_cycles/Sum*
dtype0*
_output_shapes
: 
c
!metrics/mae_remaining_cycles/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
|
!metrics/mae_remaining_cycles/CastCast!metrics/mae_remaining_cycles/Size*
_output_shapes
: *

DstT0*

SrcT0
?
2metrics/mae_remaining_cycles/AssignAddVariableOp_1AssignAddVariableOpcount_1!metrics/mae_remaining_cycles/Cast1^metrics/mae_remaining_cycles/AssignAddVariableOp*
dtype0
?
-metrics/mae_remaining_cycles/ReadVariableOp_1ReadVariableOpcount_11^metrics/mae_remaining_cycles/AssignAddVariableOp3^metrics/mae_remaining_cycles/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
6metrics/mae_remaining_cycles/div_no_nan/ReadVariableOpReadVariableOptotal_13^metrics/mae_remaining_cycles/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
8metrics/mae_remaining_cycles/div_no_nan/ReadVariableOp_1ReadVariableOpcount_13^metrics/mae_remaining_cycles/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
'metrics/mae_remaining_cycles/div_no_nanDivNoNan6metrics/mae_remaining_cycles/div_no_nan/ReadVariableOp8metrics/mae_remaining_cycles/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
{
%metrics/mae_remaining_cycles/IdentityIdentity'metrics/mae_remaining_cycles/div_no_nan*
T0*
_output_shapes
: 
?
"loss/output_loss/SquaredDifferenceSquaredDifferenceoutput/clippy/clip_by_valueoutput_target*'
_output_shapes
:?????????*
T0
r
'loss/output_loss/Mean/reduction_indicesConst*
dtype0*
valueB :
?????????*
_output_shapes
: 
?
loss/output_loss/MeanMean"loss/output_loss/SquaredDifference'loss/output_loss/Mean/reduction_indices*
T0*#
_output_shapes
:?????????
j
%loss/output_loss/weighted_loss/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Sloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
dtype0*
valueB *
_output_shapes
: 
?
Rloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
value	B : *
dtype0
?
Rloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/output_loss/Mean*
_output_shapes
:*
T0
?
Qloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
i
aloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
?
@loss/output_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeloss/output_loss/Meanb^loss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
?
@loss/output_loss/weighted_loss/broadcast_weights/ones_like/ConstConstb^loss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
:loss/output_loss/weighted_loss/broadcast_weights/ones_likeFill@loss/output_loss/weighted_loss/broadcast_weights/ones_like/Shape@loss/output_loss/weighted_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:?????????*
T0
?
0loss/output_loss/weighted_loss/broadcast_weightsMul%loss/output_loss/weighted_loss/Cast/x:loss/output_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:?????????
?
"loss/output_loss/weighted_loss/MulMulloss/output_loss/Mean0loss/output_loss/weighted_loss/broadcast_weights*#
_output_shapes
:?????????*
T0
`
loss/output_loss/ConstConst*
valueB: *
_output_shapes
:*
dtype0
x
loss/output_loss/SumSum"loss/output_loss/weighted_loss/Mulloss/output_loss/Const*
_output_shapes
: *
T0
j
loss/output_loss/num_elementsSize"loss/output_loss/weighted_loss/Mul*
T0*
_output_shapes
: 
y
"loss/output_loss/num_elements/CastCastloss/output_loss/num_elements*
_output_shapes
: *

SrcT0*

DstT0
[
loss/output_loss/Const_1Const*
_output_shapes
: *
valueB *
dtype0
n
loss/output_loss/Sum_1Sumloss/output_loss/Sumloss/output_loss/Const_1*
T0*
_output_shapes
: 

loss/output_loss/valueDivNoNanloss/output_loss/Sum_1"loss/output_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
T
loss/mulMul
loss/mul/xloss/output_loss/value*
_output_shapes
: *
T0
q
iter/Initializer/zerosConst*
value	B	 R *
_output_shapes
: *
dtype0	*
_class
	loc:@iter
u
iterVarHandleOp*
dtype0	*
shape: *
_output_shapes
: *
_class
	loc:@iter*
shared_nameiter
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
c
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	*
_class
	loc:@iter
n
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	*
_class
	loc:@iter
W
Adam/gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
]
Adam/gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
l
Adam/gradients/FillFillAdam/gradients/ShapeAdam/gradients/grad_ys_0*
_output_shapes
: *
T0
u
 Adam/gradients/loss/mul_grad/MulMulAdam/gradients/Fillloss/output_loss/value*
_output_shapes
: *
T0
k
"Adam/gradients/loss/mul_grad/Mul_1MulAdam/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
s
0Adam/gradients/loss/output_loss/value_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
u
2Adam/gradients/loss/output_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
?
@Adam/gradients/loss/output_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs0Adam/gradients/loss/output_loss/value_grad/Shape2Adam/gradients/loss/output_loss/value_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
5Adam/gradients/loss/output_loss/value_grad/div_no_nanDivNoNan"Adam/gradients/loss/mul_grad/Mul_1"loss/output_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
.Adam/gradients/loss/output_loss/value_grad/SumSum5Adam/gradients/loss/output_loss/value_grad/div_no_nan@Adam/gradients/loss/output_loss/value_grad/BroadcastGradientArgs*
_output_shapes
: *
T0
?
2Adam/gradients/loss/output_loss/value_grad/ReshapeReshape.Adam/gradients/loss/output_loss/value_grad/Sum0Adam/gradients/loss/output_loss/value_grad/Shape*
_output_shapes
: *
T0
n
.Adam/gradients/loss/output_loss/value_grad/NegNegloss/output_loss/Sum_1*
_output_shapes
: *
T0
?
7Adam/gradients/loss/output_loss/value_grad/div_no_nan_1DivNoNan.Adam/gradients/loss/output_loss/value_grad/Neg"loss/output_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
7Adam/gradients/loss/output_loss/value_grad/div_no_nan_2DivNoNan7Adam/gradients/loss/output_loss/value_grad/div_no_nan_1"loss/output_loss/num_elements/Cast*
_output_shapes
: *
T0
?
.Adam/gradients/loss/output_loss/value_grad/mulMul"Adam/gradients/loss/mul_grad/Mul_17Adam/gradients/loss/output_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
?
0Adam/gradients/loss/output_loss/value_grad/Sum_1Sum.Adam/gradients/loss/output_loss/value_grad/mulBAdam/gradients/loss/output_loss/value_grad/BroadcastGradientArgs:1*
_output_shapes
: *
T0
?
4Adam/gradients/loss/output_loss/value_grad/Reshape_1Reshape0Adam/gradients/loss/output_loss/value_grad/Sum_12Adam/gradients/loss/output_loss/value_grad/Shape_1*
_output_shapes
: *
T0
{
8Adam/gradients/loss/output_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 
?
2Adam/gradients/loss/output_loss/Sum_1_grad/ReshapeReshape2Adam/gradients/loss/output_loss/value_grad/Reshape8Adam/gradients/loss/output_loss/Sum_1_grad/Reshape/shape*
T0*
_output_shapes
: 
s
0Adam/gradients/loss/output_loss/Sum_1_grad/ConstConst*
valueB *
_output_shapes
: *
dtype0
?
/Adam/gradients/loss/output_loss/Sum_1_grad/TileTile2Adam/gradients/loss/output_loss/Sum_1_grad/Reshape0Adam/gradients/loss/output_loss/Sum_1_grad/Const*
T0*
_output_shapes
: 
?
6Adam/gradients/loss/output_loss/Sum_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
?
0Adam/gradients/loss/output_loss/Sum_grad/ReshapeReshape/Adam/gradients/loss/output_loss/Sum_1_grad/Tile6Adam/gradients/loss/output_loss/Sum_grad/Reshape/shape*
T0*
_output_shapes
:
?
.Adam/gradients/loss/output_loss/Sum_grad/ShapeShape"loss/output_loss/weighted_loss/Mul*
_output_shapes
:*
T0
?
-Adam/gradients/loss/output_loss/Sum_grad/TileTile0Adam/gradients/loss/output_loss/Sum_grad/Reshape.Adam/gradients/loss/output_loss/Sum_grad/Shape*#
_output_shapes
:?????????*
T0
?
<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/ShapeShapeloss/output_loss/Mean*
_output_shapes
:*
T0
?
>Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Shape_1Shape0loss/output_loss/weighted_loss/broadcast_weights*
T0*
_output_shapes
:
?
LAdam/gradients/loss/output_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Shape>Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
:Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/MulMul-Adam/gradients/loss/output_loss/Sum_grad/Tile0loss/output_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
?
:Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/SumSum:Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/MulLAdam/gradients/loss/output_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
?
>Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/ReshapeReshape:Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Sum<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Shape*#
_output_shapes
:?????????*
T0
?
<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Mul_1Mulloss/output_loss/Mean-Adam/gradients/loss/output_loss/Sum_grad/Tile*
T0*#
_output_shapes
:?????????
?
<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Sum_1Sum<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Mul_1NAdam/gradients/loss/output_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
?
@Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Reshape_1Reshape<Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Sum_1>Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Shape_1*#
_output_shapes
:?????????*
T0
?
/Adam/gradients/loss/output_loss/Mean_grad/ShapeShape"loss/output_loss/SquaredDifference*
T0*
_output_shapes
:
?
.Adam/gradients/loss/output_loss/Mean_grad/SizeConst*B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape*
dtype0*
value	B :*
_output_shapes
: 
?
-Adam/gradients/loss/output_loss/Mean_grad/addAdd'loss/output_loss/Mean/reduction_indices.Adam/gradients/loss/output_loss/Mean_grad/Size*
T0*
_output_shapes
: *B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape
?
-Adam/gradients/loss/output_loss/Mean_grad/modFloorMod-Adam/gradients/loss/output_loss/Mean_grad/add.Adam/gradients/loss/output_loss/Mean_grad/Size*
T0*B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape*
_output_shapes
: 
?
1Adam/gradients/loss/output_loss/Mean_grad/Shape_1Const*
valueB *B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape*
_output_shapes
: *
dtype0
?
5Adam/gradients/loss/output_loss/Mean_grad/range/startConst*B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape*
dtype0*
_output_shapes
: *
value	B : 
?
5Adam/gradients/loss/output_loss/Mean_grad/range/deltaConst*
_output_shapes
: *B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape*
dtype0*
value	B :
?
/Adam/gradients/loss/output_loss/Mean_grad/rangeRange5Adam/gradients/loss/output_loss/Mean_grad/range/start.Adam/gradients/loss/output_loss/Mean_grad/Size5Adam/gradients/loss/output_loss/Mean_grad/range/delta*B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape*
_output_shapes
:
?
4Adam/gradients/loss/output_loss/Mean_grad/Fill/valueConst*
dtype0*
value	B :*
_output_shapes
: *B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape
?
.Adam/gradients/loss/output_loss/Mean_grad/FillFill1Adam/gradients/loss/output_loss/Mean_grad/Shape_14Adam/gradients/loss/output_loss/Mean_grad/Fill/value*
T0*
_output_shapes
: *B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape
?
7Adam/gradients/loss/output_loss/Mean_grad/DynamicStitchDynamicStitch/Adam/gradients/loss/output_loss/Mean_grad/range-Adam/gradients/loss/output_loss/Mean_grad/mod/Adam/gradients/loss/output_loss/Mean_grad/Shape.Adam/gradients/loss/output_loss/Mean_grad/Fill*
T0*
N*
_output_shapes
:*B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape
?
3Adam/gradients/loss/output_loss/Mean_grad/Maximum/yConst*
dtype0*B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape*
_output_shapes
: *
value	B :
?
1Adam/gradients/loss/output_loss/Mean_grad/MaximumMaximum7Adam/gradients/loss/output_loss/Mean_grad/DynamicStitch3Adam/gradients/loss/output_loss/Mean_grad/Maximum/y*B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape*
T0*
_output_shapes
:
?
2Adam/gradients/loss/output_loss/Mean_grad/floordivFloorDiv/Adam/gradients/loss/output_loss/Mean_grad/Shape1Adam/gradients/loss/output_loss/Mean_grad/Maximum*B
_class8
64loc:@Adam/gradients/loss/output_loss/Mean_grad/Shape*
T0*
_output_shapes
:
?
1Adam/gradients/loss/output_loss/Mean_grad/ReshapeReshape>Adam/gradients/loss/output_loss/weighted_loss/Mul_grad/Reshape7Adam/gradients/loss/output_loss/Mean_grad/DynamicStitch*
T0*0
_output_shapes
:??????????????????
?
.Adam/gradients/loss/output_loss/Mean_grad/TileTile1Adam/gradients/loss/output_loss/Mean_grad/Reshape2Adam/gradients/loss/output_loss/Mean_grad/floordiv*0
_output_shapes
:??????????????????*
T0
?
1Adam/gradients/loss/output_loss/Mean_grad/Shape_2Shape"loss/output_loss/SquaredDifference*
T0*
_output_shapes
:
v
1Adam/gradients/loss/output_loss/Mean_grad/Shape_3Shapeloss/output_loss/Mean*
T0*
_output_shapes
:
y
/Adam/gradients/loss/output_loss/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
.Adam/gradients/loss/output_loss/Mean_grad/ProdProd1Adam/gradients/loss/output_loss/Mean_grad/Shape_2/Adam/gradients/loss/output_loss/Mean_grad/Const*
T0*
_output_shapes
: 
{
1Adam/gradients/loss/output_loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
?
0Adam/gradients/loss/output_loss/Mean_grad/Prod_1Prod1Adam/gradients/loss/output_loss/Mean_grad/Shape_31Adam/gradients/loss/output_loss/Mean_grad/Const_1*
_output_shapes
: *
T0
w
5Adam/gradients/loss/output_loss/Mean_grad/Maximum_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
?
3Adam/gradients/loss/output_loss/Mean_grad/Maximum_1Maximum0Adam/gradients/loss/output_loss/Mean_grad/Prod_15Adam/gradients/loss/output_loss/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
?
4Adam/gradients/loss/output_loss/Mean_grad/floordiv_1FloorDiv.Adam/gradients/loss/output_loss/Mean_grad/Prod3Adam/gradients/loss/output_loss/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
?
.Adam/gradients/loss/output_loss/Mean_grad/CastCast4Adam/gradients/loss/output_loss/Mean_grad/floordiv_1*
_output_shapes
: *

SrcT0*

DstT0
?
1Adam/gradients/loss/output_loss/Mean_grad/truedivRealDiv.Adam/gradients/loss/output_loss/Mean_grad/Tile.Adam/gradients/loss/output_loss/Mean_grad/Cast*'
_output_shapes
:?????????*
T0
?
<Adam/gradients/loss/output_loss/SquaredDifference_grad/ShapeShapeoutput/clippy/clip_by_value*
_output_shapes
:*
T0
{
>Adam/gradients/loss/output_loss/SquaredDifference_grad/Shape_1Shapeoutput_target*
T0*
_output_shapes
:
?
LAdam/gradients/loss/output_loss/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs<Adam/gradients/loss/output_loss/SquaredDifference_grad/Shape>Adam/gradients/loss/output_loss/SquaredDifference_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
=Adam/gradients/loss/output_loss/SquaredDifference_grad/scalarConst2^Adam/gradients/loss/output_loss/Mean_grad/truediv*
dtype0*
valueB
 *   @*
_output_shapes
: 
?
:Adam/gradients/loss/output_loss/SquaredDifference_grad/MulMul=Adam/gradients/loss/output_loss/SquaredDifference_grad/scalar1Adam/gradients/loss/output_loss/Mean_grad/truediv*'
_output_shapes
:?????????*
T0
?
:Adam/gradients/loss/output_loss/SquaredDifference_grad/subSuboutput/clippy/clip_by_valueoutput_target2^Adam/gradients/loss/output_loss/Mean_grad/truediv*
T0*'
_output_shapes
:?????????
?
<Adam/gradients/loss/output_loss/SquaredDifference_grad/mul_1Mul:Adam/gradients/loss/output_loss/SquaredDifference_grad/Mul:Adam/gradients/loss/output_loss/SquaredDifference_grad/sub*'
_output_shapes
:?????????*
T0
?
:Adam/gradients/loss/output_loss/SquaredDifference_grad/SumSum<Adam/gradients/loss/output_loss/SquaredDifference_grad/mul_1LAdam/gradients/loss/output_loss/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
?
>Adam/gradients/loss/output_loss/SquaredDifference_grad/ReshapeReshape:Adam/gradients/loss/output_loss/SquaredDifference_grad/Sum<Adam/gradients/loss/output_loss/SquaredDifference_grad/Shape*'
_output_shapes
:?????????*
T0
?
<Adam/gradients/loss/output_loss/SquaredDifference_grad/Sum_1Sum<Adam/gradients/loss/output_loss/SquaredDifference_grad/mul_1NAdam/gradients/loss/output_loss/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
?
@Adam/gradients/loss/output_loss/SquaredDifference_grad/Reshape_1Reshape<Adam/gradients/loss/output_loss/SquaredDifference_grad/Sum_1>Adam/gradients/loss/output_loss/SquaredDifference_grad/Shape_1*
T0*0
_output_shapes
:??????????????????
?
:Adam/gradients/loss/output_loss/SquaredDifference_grad/NegNeg@Adam/gradients/loss/output_loss/SquaredDifference_grad/Reshape_1*
T0*0
_output_shapes
:??????????????????
?
5Adam/gradients/output/clippy/clip_by_value_grad/ShapeShape#output/clippy/clip_by_value/Minimum*
T0*
_output_shapes
:
z
7Adam/gradients/output/clippy/clip_by_value_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
?
7Adam/gradients/output/clippy/clip_by_value_grad/Shape_2Shape>Adam/gradients/loss/output_loss/SquaredDifference_grad/Reshape*
_output_shapes
:*
T0
?
;Adam/gradients/output/clippy/clip_by_value_grad/zeros/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 
?
5Adam/gradients/output/clippy/clip_by_value_grad/zerosFill7Adam/gradients/output/clippy/clip_by_value_grad/Shape_2;Adam/gradients/output/clippy/clip_by_value_grad/zeros/Const*'
_output_shapes
:?????????*
T0
?
<Adam/gradients/output/clippy/clip_by_value_grad/GreaterEqualGreaterEqual#output/clippy/clip_by_value/Minimumoutput/clippy/Const_1*'
_output_shapes
:?????????*
T0
?
EAdam/gradients/output/clippy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs5Adam/gradients/output/clippy/clip_by_value_grad/Shape7Adam/gradients/output/clippy/clip_by_value_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
6Adam/gradients/output/clippy/clip_by_value_grad/SelectSelect<Adam/gradients/output/clippy/clip_by_value_grad/GreaterEqual>Adam/gradients/loss/output_loss/SquaredDifference_grad/Reshape5Adam/gradients/output/clippy/clip_by_value_grad/zeros*
T0*'
_output_shapes
:?????????
?
3Adam/gradients/output/clippy/clip_by_value_grad/SumSum6Adam/gradients/output/clippy/clip_by_value_grad/SelectEAdam/gradients/output/clippy/clip_by_value_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
?
7Adam/gradients/output/clippy/clip_by_value_grad/ReshapeReshape3Adam/gradients/output/clippy/clip_by_value_grad/Sum5Adam/gradients/output/clippy/clip_by_value_grad/Shape*
T0*'
_output_shapes
:?????????
?
8Adam/gradients/output/clippy/clip_by_value_grad/Select_1Select<Adam/gradients/output/clippy/clip_by_value_grad/GreaterEqual5Adam/gradients/output/clippy/clip_by_value_grad/zeros>Adam/gradients/loss/output_loss/SquaredDifference_grad/Reshape*'
_output_shapes
:?????????*
T0
?
5Adam/gradients/output/clippy/clip_by_value_grad/Sum_1Sum8Adam/gradients/output/clippy/clip_by_value_grad/Select_1GAdam/gradients/output/clippy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
?
9Adam/gradients/output/clippy/clip_by_value_grad/Reshape_1Reshape5Adam/gradients/output/clippy/clip_by_value_grad/Sum_17Adam/gradients/output/clippy/clip_by_value_grad/Shape_1*
T0*
_output_shapes
: 

=Adam/gradients/output/clippy/clip_by_value/Minimum_grad/ShapeShapeoutput/clippy/Relu*
T0*
_output_shapes
:
?
?Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
?
?Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Shape_2Shape7Adam/gradients/output/clippy/clip_by_value_grad/Reshape*
_output_shapes
:*
T0
?
CAdam/gradients/output/clippy/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
=Adam/gradients/output/clippy/clip_by_value/Minimum_grad/zerosFill?Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Shape_2CAdam/gradients/output/clippy/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:?????????*
T0
?
AAdam/gradients/output/clippy/clip_by_value/Minimum_grad/LessEqual	LessEqualoutput/clippy/Reluoutput/clippy/Const*'
_output_shapes
:?????????*
T0
?
MAdam/gradients/output/clippy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs=Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Shape?Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
>Adam/gradients/output/clippy/clip_by_value/Minimum_grad/SelectSelectAAdam/gradients/output/clippy/clip_by_value/Minimum_grad/LessEqual7Adam/gradients/output/clippy/clip_by_value_grad/Reshape=Adam/gradients/output/clippy/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:?????????
?
;Adam/gradients/output/clippy/clip_by_value/Minimum_grad/SumSum>Adam/gradients/output/clippy/clip_by_value/Minimum_grad/SelectMAdam/gradients/output/clippy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
?
?Adam/gradients/output/clippy/clip_by_value/Minimum_grad/ReshapeReshape;Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Sum=Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:?????????*
T0
?
@Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Select_1SelectAAdam/gradients/output/clippy/clip_by_value/Minimum_grad/LessEqual=Adam/gradients/output/clippy/clip_by_value/Minimum_grad/zeros7Adam/gradients/output/clippy/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:?????????
?
=Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Sum_1Sum@Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Select_1OAdam/gradients/output/clippy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
?
AAdam/gradients/output/clippy/clip_by_value/Minimum_grad/Reshape_1Reshape=Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Sum_1?Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0
?
/Adam/gradients/output/clippy/Relu_grad/ReluGradReluGrad?Adam/gradients/output/clippy/clip_by_value/Minimum_grad/Reshapeoutput/clippy/Relu*'
_output_shapes
:?????????*
T0
?
.Adam/gradients/output/BiasAdd_grad/BiasAddGradBiasAddGrad/Adam/gradients/output/clippy/Relu_grad/ReluGrad*
T0*
_output_shapes
:
?
(Adam/gradients/output/MatMul_grad/MatMulMatMul/Adam/gradients/output/clippy/Relu_grad/ReluGradoutput/MatMul/ReadVariableOp*
T0*
transpose_b(*'
_output_shapes
:????????? 
?
*Adam/gradients/output/MatMul_grad/MatMul_1MatMulhidden/Relu/Adam/gradients/output/clippy/Relu_grad/ReluGrad*
transpose_a(*
T0*
_output_shapes

: 
?
(Adam/gradients/hidden/Relu_grad/ReluGradReluGrad(Adam/gradients/output/MatMul_grad/MatMulhidden/Relu*
T0*'
_output_shapes
:????????? 
?
.Adam/gradients/hidden/BiasAdd_grad/BiasAddGradBiasAddGrad(Adam/gradients/hidden/Relu_grad/ReluGrad*
T0*
_output_shapes
: 
?
(Adam/gradients/hidden/MatMul_grad/MatMulMatMul(Adam/gradients/hidden/Relu_grad/ReluGradhidden/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????*
transpose_b(
?
*Adam/gradients/hidden/MatMul_grad/MatMul_1MatMuldropout_lstm/dropout/mul_1(Adam/gradients/hidden/Relu_grad/ReluGrad*
_output_shapes
:	? *
transpose_a(*
T0
|
4Adam/gradients/dropout_lstm/dropout/mul_1_grad/ShapeShapedropout_lstm/dropout/mul*
T0*
_output_shapes
:

6Adam/gradients/dropout_lstm/dropout/mul_1_grad/Shape_1Shapedropout_lstm/dropout/Cast*
_output_shapes
:*
T0
?
DAdam/gradients/dropout_lstm/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs4Adam/gradients/dropout_lstm/dropout/mul_1_grad/Shape6Adam/gradients/dropout_lstm/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
2Adam/gradients/dropout_lstm/dropout/mul_1_grad/MulMul(Adam/gradients/hidden/MatMul_grad/MatMuldropout_lstm/dropout/Cast*
T0*(
_output_shapes
:??????????
?
2Adam/gradients/dropout_lstm/dropout/mul_1_grad/SumSum2Adam/gradients/dropout_lstm/dropout/mul_1_grad/MulDAdam/gradients/dropout_lstm/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
?
6Adam/gradients/dropout_lstm/dropout/mul_1_grad/ReshapeReshape2Adam/gradients/dropout_lstm/dropout/mul_1_grad/Sum4Adam/gradients/dropout_lstm/dropout/mul_1_grad/Shape*(
_output_shapes
:??????????*
T0
?
4Adam/gradients/dropout_lstm/dropout/mul_1_grad/Mul_1Muldropout_lstm/dropout/mul(Adam/gradients/hidden/MatMul_grad/MatMul*(
_output_shapes
:??????????*
T0
?
4Adam/gradients/dropout_lstm/dropout/mul_1_grad/Sum_1Sum4Adam/gradients/dropout_lstm/dropout/mul_1_grad/Mul_1FAdam/gradients/dropout_lstm/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
?
8Adam/gradients/dropout_lstm/dropout/mul_1_grad/Reshape_1Reshape4Adam/gradients/dropout_lstm/dropout/mul_1_grad/Sum_16Adam/gradients/dropout_lstm/dropout/mul_1_grad/Shape_1*(
_output_shapes
:??????????*
T0
?
2Adam/gradients/dropout_lstm/dropout/mul_grad/ShapeShape!recurrent/StatefulPartitionedCall*
T0*
_output_shapes
:
w
4Adam/gradients/dropout_lstm/dropout/mul_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
?
BAdam/gradients/dropout_lstm/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs2Adam/gradients/dropout_lstm/dropout/mul_grad/Shape4Adam/gradients/dropout_lstm/dropout/mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
0Adam/gradients/dropout_lstm/dropout/mul_grad/MulMul6Adam/gradients/dropout_lstm/dropout/mul_1_grad/Reshapedropout_lstm/dropout/truediv*(
_output_shapes
:??????????*
T0
?
0Adam/gradients/dropout_lstm/dropout/mul_grad/SumSum0Adam/gradients/dropout_lstm/dropout/mul_grad/MulBAdam/gradients/dropout_lstm/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
?
4Adam/gradients/dropout_lstm/dropout/mul_grad/ReshapeReshape0Adam/gradients/dropout_lstm/dropout/mul_grad/Sum2Adam/gradients/dropout_lstm/dropout/mul_grad/Shape*(
_output_shapes
:??????????*
T0
?
2Adam/gradients/dropout_lstm/dropout/mul_grad/Mul_1Mul!recurrent/StatefulPartitionedCall6Adam/gradients/dropout_lstm/dropout/mul_1_grad/Reshape*
T0*(
_output_shapes
:??????????
?
2Adam/gradients/dropout_lstm/dropout/mul_grad/Sum_1Sum2Adam/gradients/dropout_lstm/dropout/mul_grad/Mul_1DAdam/gradients/dropout_lstm/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
?
6Adam/gradients/dropout_lstm/dropout/mul_grad/Reshape_1Reshape2Adam/gradients/dropout_lstm/dropout/mul_grad/Sum_14Adam/gradients/dropout_lstm/dropout/mul_grad/Shape_1*
T0*
_output_shapes
: 
?
Adam/gradients/zeros_like	ZerosLike#recurrent/StatefulPartitionedCall:1*
T0*,
_output_shapes
:??????????
?
Adam/gradients/zeros_like_1	ZerosLike#recurrent/StatefulPartitionedCall:2*
T0*(
_output_shapes
:??????????
?
Adam/gradients/zeros_like_2	ZerosLike#recurrent/StatefulPartitionedCall:3*
T0*(
_output_shapes
:??????????
n
Adam/gradients/zeros_like_3	ZerosLike#recurrent/StatefulPartitionedCall:4*
T0*
_output_shapes
: 
?
MAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCallStatefulPartitionedCall4Adam/gradients/dropout_lstm/dropout/mul_grad/ReshapeAdam/gradients/zeros_likeAdam/gradients/zeros_like_1Adam/gradients/zeros_like_2Adam/gradients/zeros_like_3#recurrent/StatefulPartitionedCall:5#recurrent/StatefulPartitionedCall:6#recurrent/StatefulPartitionedCall:7#recurrent/StatefulPartitionedCall:8#recurrent/StatefulPartitionedCall:9$recurrent/StatefulPartitionedCall:10$recurrent/StatefulPartitionedCall:11$recurrent/StatefulPartitionedCall:12$recurrent/StatefulPartitionedCall:13$recurrent/StatefulPartitionedCall:14$recurrent/StatefulPartitionedCall:15$recurrent/StatefulPartitionedCall:16$recurrent/StatefulPartitionedCall:17$recurrent/StatefulPartitionedCall:18$recurrent/StatefulPartitionedCall:19$recurrent/StatefulPartitionedCall:20$recurrent/StatefulPartitionedCall:21$recurrent/StatefulPartitionedCall:22$recurrent/StatefulPartitionedCall:23$recurrent/StatefulPartitionedCall:24$recurrent/StatefulPartitionedCall:25$recurrent/StatefulPartitionedCall:26$recurrent/StatefulPartitionedCall:27$recurrent/StatefulPartitionedCall:28$recurrent/StatefulPartitionedCall:29$recurrent/StatefulPartitionedCall:30$recurrent/StatefulPartitionedCall:31$recurrent/StatefulPartitionedCall:32$recurrent/StatefulPartitionedCall:33$recurrent/StatefulPartitionedCall:34$recurrent/StatefulPartitionedCall:35*,
_gradient_op_typePartitionedCall-21200*/
Tin(
&2$**
config_proto

GPU 

CPU2J 8*9
f4R2
0__inference___backward_standard_lstm_20666_21168*?
_output_shapesy
w:??????????:??????????:??????????:??????????:??????????:?????????*
Tout

2
l
*Adam/gradients/all_concat/concat_grad/RankConst*
_output_shapes
: *
value	B :*
dtype0
?
)Adam/gradients/all_concat/concat_grad/modFloorModall_concat/concat/axis*Adam/gradients/all_concat/concat_grad/Rank*
T0*
_output_shapes
: 
p
+Adam/gradients/all_concat/concat_grad/ShapeShapedropout_cnn/Reshape_1*
T0*
_output_shapes
:
?
,Adam/gradients/all_concat/concat_grad/ShapeNShapeNdropout_cnn/Reshape_1IRDischarge_timeQD*
T0*,
_output_shapes
::::*
N
?
2Adam/gradients/all_concat/concat_grad/ConcatOffsetConcatOffset)Adam/gradients/all_concat/concat_grad/mod,Adam/gradients/all_concat/concat_grad/ShapeN.Adam/gradients/all_concat/concat_grad/ShapeN:1.Adam/gradients/all_concat/concat_grad/ShapeN:2.Adam/gradients/all_concat/concat_grad/ShapeN:3*,
_output_shapes
::::*
N
?
+Adam/gradients/all_concat/concat_grad/SliceSliceMAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall2Adam/gradients/all_concat/concat_grad/ConcatOffset,Adam/gradients/all_concat/concat_grad/ShapeN*,
_output_shapes
:??????????*
T0*
Index0
?
-Adam/gradients/all_concat/concat_grad/Slice_1SliceMAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall4Adam/gradients/all_concat/concat_grad/ConcatOffset:1.Adam/gradients/all_concat/concat_grad/ShapeN:1*
Index0*
T0*+
_output_shapes
:?????????
?
-Adam/gradients/all_concat/concat_grad/Slice_2SliceMAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall4Adam/gradients/all_concat/concat_grad/ConcatOffset:2.Adam/gradients/all_concat/concat_grad/ShapeN:2*
Index0*
T0*+
_output_shapes
:?????????
?
-Adam/gradients/all_concat/concat_grad/Slice_3SliceMAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall4Adam/gradients/all_concat/concat_grad/ConcatOffset:3.Adam/gradients/all_concat/concat_grad/ShapeN:3*+
_output_shapes
:?????????*
T0*
Index0
x
/Adam/gradients/dropout_cnn/Reshape_1_grad/ShapeShapedropout_cnn/dropout/mul_1*
T0*
_output_shapes
:
?
1Adam/gradients/dropout_cnn/Reshape_1_grad/ReshapeReshape+Adam/gradients/all_concat/concat_grad/Slice/Adam/gradients/dropout_cnn/Reshape_1_grad/Shape*(
_output_shapes
:??????????*
T0
z
3Adam/gradients/dropout_cnn/dropout/mul_1_grad/ShapeShapedropout_cnn/dropout/mul*
_output_shapes
:*
T0
}
5Adam/gradients/dropout_cnn/dropout/mul_1_grad/Shape_1Shapedropout_cnn/dropout/Cast*
_output_shapes
:*
T0
?
CAdam/gradients/dropout_cnn/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs3Adam/gradients/dropout_cnn/dropout/mul_1_grad/Shape5Adam/gradients/dropout_cnn/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
1Adam/gradients/dropout_cnn/dropout/mul_1_grad/MulMul1Adam/gradients/dropout_cnn/Reshape_1_grad/Reshapedropout_cnn/dropout/Cast*
T0*(
_output_shapes
:??????????
?
1Adam/gradients/dropout_cnn/dropout/mul_1_grad/SumSum1Adam/gradients/dropout_cnn/dropout/mul_1_grad/MulCAdam/gradients/dropout_cnn/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
?
5Adam/gradients/dropout_cnn/dropout/mul_1_grad/ReshapeReshape1Adam/gradients/dropout_cnn/dropout/mul_1_grad/Sum3Adam/gradients/dropout_cnn/dropout/mul_1_grad/Shape*
T0*(
_output_shapes
:??????????
?
3Adam/gradients/dropout_cnn/dropout/mul_1_grad/Mul_1Muldropout_cnn/dropout/mul1Adam/gradients/dropout_cnn/Reshape_1_grad/Reshape*(
_output_shapes
:??????????*
T0
?
3Adam/gradients/dropout_cnn/dropout/mul_1_grad/Sum_1Sum3Adam/gradients/dropout_cnn/dropout/mul_1_grad/Mul_1EAdam/gradients/dropout_cnn/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
?
7Adam/gradients/dropout_cnn/dropout/mul_1_grad/Reshape_1Reshape3Adam/gradients/dropout_cnn/dropout/mul_1_grad/Sum_15Adam/gradients/dropout_cnn/dropout/mul_1_grad/Shape_1*
T0*(
_output_shapes
:??????????
t
1Adam/gradients/dropout_cnn/dropout/mul_grad/ShapeShapedropout_cnn/Reshape*
_output_shapes
:*
T0
v
3Adam/gradients/dropout_cnn/dropout/mul_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
?
AAdam/gradients/dropout_cnn/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1Adam/gradients/dropout_cnn/dropout/mul_grad/Shape3Adam/gradients/dropout_cnn/dropout/mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????
?
/Adam/gradients/dropout_cnn/dropout/mul_grad/MulMul5Adam/gradients/dropout_cnn/dropout/mul_1_grad/Reshapedropout_cnn/dropout/truediv*
T0*(
_output_shapes
:??????????
?
/Adam/gradients/dropout_cnn/dropout/mul_grad/SumSum/Adam/gradients/dropout_cnn/dropout/mul_grad/MulAAdam/gradients/dropout_cnn/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
?
3Adam/gradients/dropout_cnn/dropout/mul_grad/ReshapeReshape/Adam/gradients/dropout_cnn/dropout/mul_grad/Sum1Adam/gradients/dropout_cnn/dropout/mul_grad/Shape*(
_output_shapes
:??????????*
T0
?
1Adam/gradients/dropout_cnn/dropout/mul_grad/Mul_1Muldropout_cnn/Reshape5Adam/gradients/dropout_cnn/dropout/mul_1_grad/Reshape*(
_output_shapes
:??????????*
T0
?
1Adam/gradients/dropout_cnn/dropout/mul_grad/Sum_1Sum1Adam/gradients/dropout_cnn/dropout/mul_grad/Mul_1CAdam/gradients/dropout_cnn/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
?
5Adam/gradients/dropout_cnn/dropout/mul_grad/Reshape_1Reshape1Adam/gradients/dropout_cnn/dropout/mul_grad/Sum_13Adam/gradients/dropout_cnn/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0
w
-Adam/gradients/dropout_cnn/Reshape_grad/ShapeShapeconvolution_flat/Reshape_2*
T0*
_output_shapes
:
?
/Adam/gradients/dropout_cnn/Reshape_grad/ReshapeReshape3Adam/gradients/dropout_cnn/dropout/mul_grad/Reshape-Adam/gradients/dropout_cnn/Reshape_grad/Shape*,
_output_shapes
:??????????*
T0
~
4Adam/gradients/convolution_flat/Reshape_2_grad/ShapeShapeconvolution_flat/Reshape_1*
T0*
_output_shapes
:
?
6Adam/gradients/convolution_flat/Reshape_2_grad/ReshapeReshape/Adam/gradients/dropout_cnn/Reshape_grad/Reshape4Adam/gradients/convolution_flat/Reshape_2_grad/Shape*
T0*(
_output_shapes
:??????????
|
4Adam/gradients/convolution_flat/Reshape_1_grad/ShapeShapeconvolution_flat/Reshape*
T0*
_output_shapes
:
?
6Adam/gradients/convolution_flat/Reshape_1_grad/ReshapeReshape6Adam/gradients/convolution_flat/Reshape_2_grad/Reshape4Adam/gradients/convolution_flat/Reshape_1_grad/Shape*,
_output_shapes
:??????????*
T0
q
2Adam/gradients/convolution_flat/Reshape_grad/ShapeShapepool3/Reshape_1*
_output_shapes
:*
T0
?
4Adam/gradients/convolution_flat/Reshape_grad/ReshapeReshape6Adam/gradients/convolution_flat/Reshape_1_grad/Reshape2Adam/gradients/convolution_flat/Reshape_grad/Shape*
T0*0
_output_shapes
:??????????
f
)Adam/gradients/pool3/Reshape_1_grad/ShapeShapepool3/Squeeze*
_output_shapes
:*
T0
?
+Adam/gradients/pool3/Reshape_1_grad/ReshapeReshape4Adam/gradients/convolution_flat/Reshape_grad/Reshape)Adam/gradients/pool3/Reshape_1_grad/Shape*,
_output_shapes
:??????????*
T0
d
'Adam/gradients/pool3/Squeeze_grad/ShapeShapepool3/MaxPool*
_output_shapes
:*
T0
?
)Adam/gradients/pool3/Squeeze_grad/ReshapeReshape+Adam/gradients/pool3/Reshape_1_grad/Reshape'Adam/gradients/pool3/Squeeze_grad/Shape*0
_output_shapes
:??????????*
T0
?
-Adam/gradients/pool3/MaxPool_grad/MaxPoolGradMaxPoolGradpool3/ExpandDimspool3/MaxPool)Adam/gradients/pool3/Squeeze_grad/Reshape*
ksize
*
strides
*
paddingVALID*0
_output_shapes
:?????????
?
g
*Adam/gradients/pool3/ExpandDims_grad/ShapeShapepool3/Reshape*
T0*
_output_shapes
:
?
,Adam/gradients/pool3/ExpandDims_grad/ReshapeReshape-Adam/gradients/pool3/MaxPool_grad/MaxPoolGrad*Adam/gradients/pool3/ExpandDims_grad/Shape*,
_output_shapes
:?????????
?*
T0
f
'Adam/gradients/pool3/Reshape_grad/ShapeShapeconv3/Reshape_1*
_output_shapes
:*
T0
?
)Adam/gradients/pool3/Reshape_grad/ReshapeReshape,Adam/gradients/pool3/ExpandDims_grad/Reshape'Adam/gradients/pool3/Reshape_grad/Shape*0
_output_shapes
:?????????
?*
T0
c
)Adam/gradients/conv3/Reshape_1_grad/ShapeShape
conv3/Relu*
_output_shapes
:*
T0
?
+Adam/gradients/conv3/Reshape_1_grad/ReshapeReshape)Adam/gradients/pool3/Reshape_grad/Reshape)Adam/gradients/conv3/Reshape_1_grad/Shape*,
_output_shapes
:?????????
?*
T0
?
'Adam/gradients/conv3/Relu_grad/ReluGradReluGrad+Adam/gradients/conv3/Reshape_1_grad/Reshape
conv3/Relu*,
_output_shapes
:?????????
?*
T0
?
-Adam/gradients/conv3/BiasAdd_grad/BiasAddGradBiasAddGrad'Adam/gradients/conv3/Relu_grad/ReluGrad*
T0*
_output_shapes	
:?
j
.Adam/gradients/conv3/conv1d/Squeeze_grad/ShapeShapeconv3/conv1d*
_output_shapes
:*
T0
?
0Adam/gradients/conv3/conv1d/Squeeze_grad/ReshapeReshape'Adam/gradients/conv3/Relu_grad/ReluGrad.Adam/gradients/conv3/conv1d/Squeeze_grad/Shape*
T0*0
_output_shapes
:?????????
?
?
'Adam/gradients/conv3/conv1d_grad/ShapeNShapeNconv3/conv1d/ExpandDimsconv3/conv1d/ExpandDims_1*
T0*
N* 
_output_shapes
::
?
4Adam/gradients/conv3/conv1d_grad/Conv2DBackpropInputConv2DBackpropInput'Adam/gradients/conv3/conv1d_grad/ShapeNconv3/conv1d/ExpandDims_10Adam/gradients/conv3/conv1d/Squeeze_grad/Reshape*
strides
*
paddingSAME*/
_output_shapes
:?????????@*
T0
?
5Adam/gradients/conv3/conv1d_grad/Conv2DBackpropFilterConv2DBackpropFilterconv3/conv1d/ExpandDims)Adam/gradients/conv3/conv1d_grad/ShapeN:10Adam/gradients/conv3/conv1d/Squeeze_grad/Reshape*'
_output_shapes
:	@?*
paddingSAME*
T0*
strides

n
1Adam/gradients/conv3/conv1d/ExpandDims_grad/ShapeShapeconv3/Reshape*
T0*
_output_shapes
:
?
3Adam/gradients/conv3/conv1d/ExpandDims_grad/ReshapeReshape4Adam/gradients/conv3/conv1d_grad/Conv2DBackpropInput1Adam/gradients/conv3/conv1d/ExpandDims_grad/Shape*
T0*+
_output_shapes
:?????????@
?
3Adam/gradients/conv3/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"	   @   ?   *
dtype0*
_output_shapes
:
?
5Adam/gradients/conv3/conv1d/ExpandDims_1_grad/ReshapeReshape5Adam/gradients/conv3/conv1d_grad/Conv2DBackpropFilter3Adam/gradients/conv3/conv1d/ExpandDims_1_grad/Shape*#
_output_shapes
:	@?*
T0
f
'Adam/gradients/conv3/Reshape_grad/ShapeShapepool2/Reshape_1*
_output_shapes
:*
T0
?
)Adam/gradients/conv3/Reshape_grad/ReshapeReshape3Adam/gradients/conv3/conv1d/ExpandDims_grad/Reshape'Adam/gradients/conv3/Reshape_grad/Shape*
T0*/
_output_shapes
:?????????@
f
)Adam/gradients/pool2/Reshape_1_grad/ShapeShapepool2/Squeeze*
_output_shapes
:*
T0
?
+Adam/gradients/pool2/Reshape_1_grad/ReshapeReshape)Adam/gradients/conv3/Reshape_grad/Reshape)Adam/gradients/pool2/Reshape_1_grad/Shape*+
_output_shapes
:?????????@*
T0
d
'Adam/gradients/pool2/Squeeze_grad/ShapeShapepool2/MaxPool*
_output_shapes
:*
T0
?
)Adam/gradients/pool2/Squeeze_grad/ReshapeReshape+Adam/gradients/pool2/Reshape_1_grad/Reshape'Adam/gradients/pool2/Squeeze_grad/Shape*/
_output_shapes
:?????????@*
T0
?
-Adam/gradients/pool2/MaxPool_grad/MaxPoolGradMaxPoolGradpool2/ExpandDimspool2/MaxPool)Adam/gradients/pool2/Squeeze_grad/Reshape*/
_output_shapes
:?????????8@*
paddingVALID*
ksize
*
strides

g
*Adam/gradients/pool2/ExpandDims_grad/ShapeShapepool2/Reshape*
T0*
_output_shapes
:
?
,Adam/gradients/pool2/ExpandDims_grad/ReshapeReshape-Adam/gradients/pool2/MaxPool_grad/MaxPoolGrad*Adam/gradients/pool2/ExpandDims_grad/Shape*+
_output_shapes
:?????????8@*
T0
f
'Adam/gradients/pool2/Reshape_grad/ShapeShapeconv2/Reshape_1*
T0*
_output_shapes
:
?
)Adam/gradients/pool2/Reshape_grad/ReshapeReshape,Adam/gradients/pool2/ExpandDims_grad/Reshape'Adam/gradients/pool2/Reshape_grad/Shape*/
_output_shapes
:?????????8@*
T0
c
)Adam/gradients/conv2/Reshape_1_grad/ShapeShape
conv2/Relu*
T0*
_output_shapes
:
?
+Adam/gradients/conv2/Reshape_1_grad/ReshapeReshape)Adam/gradients/pool2/Reshape_grad/Reshape)Adam/gradients/conv2/Reshape_1_grad/Shape*
T0*+
_output_shapes
:?????????8@
?
'Adam/gradients/conv2/Relu_grad/ReluGradReluGrad+Adam/gradients/conv2/Reshape_1_grad/Reshape
conv2/Relu*+
_output_shapes
:?????????8@*
T0
?
-Adam/gradients/conv2/BiasAdd_grad/BiasAddGradBiasAddGrad'Adam/gradients/conv2/Relu_grad/ReluGrad*
T0*
_output_shapes
:@
j
.Adam/gradients/conv2/conv1d/Squeeze_grad/ShapeShapeconv2/conv1d*
_output_shapes
:*
T0
?
0Adam/gradients/conv2/conv1d/Squeeze_grad/ReshapeReshape'Adam/gradients/conv2/Relu_grad/ReluGrad.Adam/gradients/conv2/conv1d/Squeeze_grad/Shape*/
_output_shapes
:?????????8@*
T0
?
'Adam/gradients/conv2/conv1d_grad/ShapeNShapeNconv2/conv1d/ExpandDimsconv2/conv1d/ExpandDims_1* 
_output_shapes
::*
N*
T0
?
4Adam/gradients/conv2/conv1d_grad/Conv2DBackpropInputConv2DBackpropInput'Adam/gradients/conv2/conv1d_grad/ShapeNconv2/conv1d/ExpandDims_10Adam/gradients/conv2/conv1d/Squeeze_grad/Reshape*0
_output_shapes
:?????????? *
strides
*
T0*
paddingSAME
?
5Adam/gradients/conv2/conv1d_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2/conv1d/ExpandDims)Adam/gradients/conv2/conv1d_grad/ShapeN:10Adam/gradients/conv2/conv1d/Squeeze_grad/Reshape*
strides
*&
_output_shapes
:	 @*
T0*
paddingSAME
n
1Adam/gradients/conv2/conv1d/ExpandDims_grad/ShapeShapeconv2/Reshape*
T0*
_output_shapes
:
?
3Adam/gradients/conv2/conv1d/ExpandDims_grad/ReshapeReshape4Adam/gradients/conv2/conv1d_grad/Conv2DBackpropInput1Adam/gradients/conv2/conv1d/ExpandDims_grad/Shape*
T0*,
_output_shapes
:?????????? 
?
3Adam/gradients/conv2/conv1d/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"	       @   
?
5Adam/gradients/conv2/conv1d/ExpandDims_1_grad/ReshapeReshape5Adam/gradients/conv2/conv1d_grad/Conv2DBackpropFilter3Adam/gradients/conv2/conv1d/ExpandDims_1_grad/Shape*"
_output_shapes
:	 @*
T0
j
'Adam/gradients/conv2/Reshape_grad/ShapeShapeconv_pool/Reshape_1*
T0*
_output_shapes
:
?
)Adam/gradients/conv2/Reshape_grad/ReshapeReshape3Adam/gradients/conv2/conv1d/ExpandDims_grad/Reshape'Adam/gradients/conv2/Reshape_grad/Shape*0
_output_shapes
:?????????? *
T0
n
-Adam/gradients/conv_pool/Reshape_1_grad/ShapeShapeconv_pool/Squeeze*
T0*
_output_shapes
:
?
/Adam/gradients/conv_pool/Reshape_1_grad/ReshapeReshape)Adam/gradients/conv2/Reshape_grad/Reshape-Adam/gradients/conv_pool/Reshape_1_grad/Shape*
T0*,
_output_shapes
:?????????? 
l
+Adam/gradients/conv_pool/Squeeze_grad/ShapeShapeconv_pool/MaxPool*
_output_shapes
:*
T0
?
-Adam/gradients/conv_pool/Squeeze_grad/ReshapeReshape/Adam/gradients/conv_pool/Reshape_1_grad/Reshape+Adam/gradients/conv_pool/Squeeze_grad/Shape*0
_output_shapes
:?????????? *
T0
?
1Adam/gradients/conv_pool/MaxPool_grad/MaxPoolGradMaxPoolGradconv_pool/ExpandDimsconv_pool/MaxPool-Adam/gradients/conv_pool/Squeeze_grad/Reshape*0
_output_shapes
:?????????? *
paddingVALID*
strides
*
ksize

o
.Adam/gradients/conv_pool/ExpandDims_grad/ShapeShapeconv_pool/Reshape*
_output_shapes
:*
T0
?
0Adam/gradients/conv_pool/ExpandDims_grad/ReshapeReshape1Adam/gradients/conv_pool/MaxPool_grad/MaxPoolGrad.Adam/gradients/conv_pool/ExpandDims_grad/Shape*
T0*,
_output_shapes
:?????????? 
p
+Adam/gradients/conv_pool/Reshape_grad/ShapeShapeconvolution/Reshape_1*
T0*
_output_shapes
:
?
-Adam/gradients/conv_pool/Reshape_grad/ReshapeReshape0Adam/gradients/conv_pool/ExpandDims_grad/Reshape+Adam/gradients/conv_pool/Reshape_grad/Shape*0
_output_shapes
:?????????? *
T0
o
/Adam/gradients/convolution/Reshape_1_grad/ShapeShapeconvolution/Relu*
_output_shapes
:*
T0
?
1Adam/gradients/convolution/Reshape_1_grad/ReshapeReshape-Adam/gradients/conv_pool/Reshape_grad/Reshape/Adam/gradients/convolution/Reshape_1_grad/Shape*,
_output_shapes
:?????????? *
T0
?
-Adam/gradients/convolution/Relu_grad/ReluGradReluGrad1Adam/gradients/convolution/Reshape_1_grad/Reshapeconvolution/Relu*,
_output_shapes
:?????????? *
T0
?
3Adam/gradients/convolution/BiasAdd_grad/BiasAddGradBiasAddGrad-Adam/gradients/convolution/Relu_grad/ReluGrad*
T0*
_output_shapes
: 
v
4Adam/gradients/convolution/conv1d/Squeeze_grad/ShapeShapeconvolution/conv1d*
_output_shapes
:*
T0
?
6Adam/gradients/convolution/conv1d/Squeeze_grad/ReshapeReshape-Adam/gradients/convolution/Relu_grad/ReluGrad4Adam/gradients/convolution/conv1d/Squeeze_grad/Shape*
T0*0
_output_shapes
:?????????? 
?
-Adam/gradients/convolution/conv1d_grad/ShapeNShapeNconvolution/conv1d/ExpandDimsconvolution/conv1d/ExpandDims_1*
T0*
N* 
_output_shapes
::
?
:Adam/gradients/convolution/conv1d_grad/Conv2DBackpropInputConv2DBackpropInput-Adam/gradients/convolution/conv1d_grad/ShapeNconvolution/conv1d/ExpandDims_16Adam/gradients/convolution/conv1d/Squeeze_grad/Reshape*
strides
*
T0*0
_output_shapes
:??????????*
paddingSAME
?
;Adam/gradients/convolution/conv1d_grad/Conv2DBackpropFilterConv2DBackpropFilterconvolution/conv1d/ExpandDims/Adam/gradients/convolution/conv1d_grad/ShapeN:16Adam/gradients/convolution/conv1d/Squeeze_grad/Reshape*
T0*&
_output_shapes
:	 *
strides
*
paddingSAME
?
9Adam/gradients/convolution/conv1d/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"	          
?
;Adam/gradients/convolution/conv1d/ExpandDims_1_grad/ReshapeReshape;Adam/gradients/convolution/conv1d_grad/Conv2DBackpropFilter9Adam/gradients/convolution/conv1d/ExpandDims_1_grad/Shape*
T0*"
_output_shapes
:	 
?
Adam/clip_by_norm/mulMul;Adam/gradients/convolution/conv1d/ExpandDims_1_grad/Reshape;Adam/gradients/convolution/conv1d/ExpandDims_1_grad/Reshape*"
_output_shapes
:	 *
T0
l
Adam/clip_by_norm/ConstConst*
dtype0*
_output_shapes
:*!
valueB"          
?
Adam/clip_by_norm/SumSumAdam/clip_by_norm/mulAdam/clip_by_norm/Const*"
_output_shapes
:*
	keep_dims(*
T0
`
Adam/clip_by_norm/Greater/yConst*
valueB
 *    *
_output_shapes
: *
dtype0
?
Adam/clip_by_norm/GreaterGreaterAdam/clip_by_norm/SumAdam/clip_by_norm/Greater/y*"
_output_shapes
:*
T0
v
!Adam/clip_by_norm/ones_like/ShapeConst*!
valueB"         *
_output_shapes
:*
dtype0
f
!Adam/clip_by_norm/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Adam/clip_by_norm/ones_likeFill!Adam/clip_by_norm/ones_like/Shape!Adam/clip_by_norm/ones_like/Const*"
_output_shapes
:*
T0
?
Adam/clip_by_norm/SelectSelectAdam/clip_by_norm/GreaterAdam/clip_by_norm/SumAdam/clip_by_norm/ones_like*
T0*"
_output_shapes
:
e
Adam/clip_by_norm/SqrtSqrtAdam/clip_by_norm/Select*
T0*"
_output_shapes
:
?
Adam/clip_by_norm/Select_1SelectAdam/clip_by_norm/GreaterAdam/clip_by_norm/SqrtAdam/clip_by_norm/Sum*
T0*"
_output_shapes
:
^
Adam/clip_by_norm/mul_1/yConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
Adam/clip_by_norm/mul_1Mul;Adam/gradients/convolution/conv1d/ExpandDims_1_grad/ReshapeAdam/clip_by_norm/mul_1/y*"
_output_shapes
:	 *
T0
`
Adam/clip_by_norm/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Adam/clip_by_norm/MaximumMaximumAdam/clip_by_norm/Select_1Adam/clip_by_norm/Maximum/y*"
_output_shapes
:*
T0
?
Adam/clip_by_norm/truedivRealDivAdam/clip_by_norm/mul_1Adam/clip_by_norm/Maximum*"
_output_shapes
:	 *
T0
e
Adam/clip_by_normIdentityAdam/clip_by_norm/truediv*"
_output_shapes
:	 *
T0
?
Adam/clip_by_norm_1/mulMul3Adam/gradients/convolution/BiasAdd_grad/BiasAddGrad3Adam/gradients/convolution/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
c
Adam/clip_by_norm_1/ConstConst*
valueB: *
_output_shapes
:*
dtype0
?
Adam/clip_by_norm_1/SumSumAdam/clip_by_norm_1/mulAdam/clip_by_norm_1/Const*
T0*
_output_shapes
:*
	keep_dims(
b
Adam/clip_by_norm_1/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Adam/clip_by_norm_1/GreaterGreaterAdam/clip_by_norm_1/SumAdam/clip_by_norm_1/Greater/y*
_output_shapes
:*
T0
m
#Adam/clip_by_norm_1/ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
h
#Adam/clip_by_norm_1/ones_like/ConstConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Adam/clip_by_norm_1/ones_likeFill#Adam/clip_by_norm_1/ones_like/Shape#Adam/clip_by_norm_1/ones_like/Const*
_output_shapes
:*
T0
?
Adam/clip_by_norm_1/SelectSelectAdam/clip_by_norm_1/GreaterAdam/clip_by_norm_1/SumAdam/clip_by_norm_1/ones_like*
_output_shapes
:*
T0
a
Adam/clip_by_norm_1/SqrtSqrtAdam/clip_by_norm_1/Select*
T0*
_output_shapes
:
?
Adam/clip_by_norm_1/Select_1SelectAdam/clip_by_norm_1/GreaterAdam/clip_by_norm_1/SqrtAdam/clip_by_norm_1/Sum*
T0*
_output_shapes
:
`
Adam/clip_by_norm_1/mul_1/yConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Adam/clip_by_norm_1/mul_1Mul3Adam/gradients/convolution/BiasAdd_grad/BiasAddGradAdam/clip_by_norm_1/mul_1/y*
_output_shapes
: *
T0
b
Adam/clip_by_norm_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Adam/clip_by_norm_1/MaximumMaximumAdam/clip_by_norm_1/Select_1Adam/clip_by_norm_1/Maximum/y*
_output_shapes
:*
T0
?
Adam/clip_by_norm_1/truedivRealDivAdam/clip_by_norm_1/mul_1Adam/clip_by_norm_1/Maximum*
_output_shapes
: *
T0
a
Adam/clip_by_norm_1IdentityAdam/clip_by_norm_1/truediv*
_output_shapes
: *
T0
?
Adam/clip_by_norm_2/mulMul5Adam/gradients/conv2/conv1d/ExpandDims_1_grad/Reshape5Adam/gradients/conv2/conv1d/ExpandDims_1_grad/Reshape*"
_output_shapes
:	 @*
T0
n
Adam/clip_by_norm_2/ConstConst*!
valueB"          *
dtype0*
_output_shapes
:
?
Adam/clip_by_norm_2/SumSumAdam/clip_by_norm_2/mulAdam/clip_by_norm_2/Const*"
_output_shapes
:*
T0*
	keep_dims(
b
Adam/clip_by_norm_2/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
Adam/clip_by_norm_2/GreaterGreaterAdam/clip_by_norm_2/SumAdam/clip_by_norm_2/Greater/y*
T0*"
_output_shapes
:
x
#Adam/clip_by_norm_2/ones_like/ShapeConst*
dtype0*!
valueB"         *
_output_shapes
:
h
#Adam/clip_by_norm_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Adam/clip_by_norm_2/ones_likeFill#Adam/clip_by_norm_2/ones_like/Shape#Adam/clip_by_norm_2/ones_like/Const*
T0*"
_output_shapes
:
?
Adam/clip_by_norm_2/SelectSelectAdam/clip_by_norm_2/GreaterAdam/clip_by_norm_2/SumAdam/clip_by_norm_2/ones_like*"
_output_shapes
:*
T0
i
Adam/clip_by_norm_2/SqrtSqrtAdam/clip_by_norm_2/Select*"
_output_shapes
:*
T0
?
Adam/clip_by_norm_2/Select_1SelectAdam/clip_by_norm_2/GreaterAdam/clip_by_norm_2/SqrtAdam/clip_by_norm_2/Sum*
T0*"
_output_shapes
:
`
Adam/clip_by_norm_2/mul_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Adam/clip_by_norm_2/mul_1Mul5Adam/gradients/conv2/conv1d/ExpandDims_1_grad/ReshapeAdam/clip_by_norm_2/mul_1/y*"
_output_shapes
:	 @*
T0
b
Adam/clip_by_norm_2/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Adam/clip_by_norm_2/MaximumMaximumAdam/clip_by_norm_2/Select_1Adam/clip_by_norm_2/Maximum/y*
T0*"
_output_shapes
:
?
Adam/clip_by_norm_2/truedivRealDivAdam/clip_by_norm_2/mul_1Adam/clip_by_norm_2/Maximum*
T0*"
_output_shapes
:	 @
i
Adam/clip_by_norm_2IdentityAdam/clip_by_norm_2/truediv*"
_output_shapes
:	 @*
T0
?
Adam/clip_by_norm_3/mulMul-Adam/gradients/conv2/BiasAdd_grad/BiasAddGrad-Adam/gradients/conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
c
Adam/clip_by_norm_3/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
?
Adam/clip_by_norm_3/SumSumAdam/clip_by_norm_3/mulAdam/clip_by_norm_3/Const*
T0*
_output_shapes
:*
	keep_dims(
b
Adam/clip_by_norm_3/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Adam/clip_by_norm_3/GreaterGreaterAdam/clip_by_norm_3/SumAdam/clip_by_norm_3/Greater/y*
_output_shapes
:*
T0
m
#Adam/clip_by_norm_3/ones_like/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
h
#Adam/clip_by_norm_3/ones_like/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Adam/clip_by_norm_3/ones_likeFill#Adam/clip_by_norm_3/ones_like/Shape#Adam/clip_by_norm_3/ones_like/Const*
_output_shapes
:*
T0
?
Adam/clip_by_norm_3/SelectSelectAdam/clip_by_norm_3/GreaterAdam/clip_by_norm_3/SumAdam/clip_by_norm_3/ones_like*
_output_shapes
:*
T0
a
Adam/clip_by_norm_3/SqrtSqrtAdam/clip_by_norm_3/Select*
T0*
_output_shapes
:
?
Adam/clip_by_norm_3/Select_1SelectAdam/clip_by_norm_3/GreaterAdam/clip_by_norm_3/SqrtAdam/clip_by_norm_3/Sum*
_output_shapes
:*
T0
`
Adam/clip_by_norm_3/mul_1/yConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Adam/clip_by_norm_3/mul_1Mul-Adam/gradients/conv2/BiasAdd_grad/BiasAddGradAdam/clip_by_norm_3/mul_1/y*
T0*
_output_shapes
:@
b
Adam/clip_by_norm_3/Maximum/yConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
Adam/clip_by_norm_3/MaximumMaximumAdam/clip_by_norm_3/Select_1Adam/clip_by_norm_3/Maximum/y*
_output_shapes
:*
T0
?
Adam/clip_by_norm_3/truedivRealDivAdam/clip_by_norm_3/mul_1Adam/clip_by_norm_3/Maximum*
T0*
_output_shapes
:@
a
Adam/clip_by_norm_3IdentityAdam/clip_by_norm_3/truediv*
T0*
_output_shapes
:@
?
Adam/clip_by_norm_4/mulMul5Adam/gradients/conv3/conv1d/ExpandDims_1_grad/Reshape5Adam/gradients/conv3/conv1d/ExpandDims_1_grad/Reshape*
T0*#
_output_shapes
:	@?
n
Adam/clip_by_norm_4/ConstConst*
dtype0*!
valueB"          *
_output_shapes
:
?
Adam/clip_by_norm_4/SumSumAdam/clip_by_norm_4/mulAdam/clip_by_norm_4/Const*"
_output_shapes
:*
T0*
	keep_dims(
b
Adam/clip_by_norm_4/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
Adam/clip_by_norm_4/GreaterGreaterAdam/clip_by_norm_4/SumAdam/clip_by_norm_4/Greater/y*"
_output_shapes
:*
T0
x
#Adam/clip_by_norm_4/ones_like/ShapeConst*
_output_shapes
:*!
valueB"         *
dtype0
h
#Adam/clip_by_norm_4/ones_like/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Adam/clip_by_norm_4/ones_likeFill#Adam/clip_by_norm_4/ones_like/Shape#Adam/clip_by_norm_4/ones_like/Const*"
_output_shapes
:*
T0
?
Adam/clip_by_norm_4/SelectSelectAdam/clip_by_norm_4/GreaterAdam/clip_by_norm_4/SumAdam/clip_by_norm_4/ones_like*"
_output_shapes
:*
T0
i
Adam/clip_by_norm_4/SqrtSqrtAdam/clip_by_norm_4/Select*"
_output_shapes
:*
T0
?
Adam/clip_by_norm_4/Select_1SelectAdam/clip_by_norm_4/GreaterAdam/clip_by_norm_4/SqrtAdam/clip_by_norm_4/Sum*
T0*"
_output_shapes
:
`
Adam/clip_by_norm_4/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Adam/clip_by_norm_4/mul_1Mul5Adam/gradients/conv3/conv1d/ExpandDims_1_grad/ReshapeAdam/clip_by_norm_4/mul_1/y*#
_output_shapes
:	@?*
T0
b
Adam/clip_by_norm_4/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Adam/clip_by_norm_4/MaximumMaximumAdam/clip_by_norm_4/Select_1Adam/clip_by_norm_4/Maximum/y*"
_output_shapes
:*
T0
?
Adam/clip_by_norm_4/truedivRealDivAdam/clip_by_norm_4/mul_1Adam/clip_by_norm_4/Maximum*
T0*#
_output_shapes
:	@?
j
Adam/clip_by_norm_4IdentityAdam/clip_by_norm_4/truediv*#
_output_shapes
:	@?*
T0
?
Adam/clip_by_norm_5/mulMul-Adam/gradients/conv3/BiasAdd_grad/BiasAddGrad-Adam/gradients/conv3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:?
c
Adam/clip_by_norm_5/ConstConst*
dtype0*
valueB: *
_output_shapes
:
?
Adam/clip_by_norm_5/SumSumAdam/clip_by_norm_5/mulAdam/clip_by_norm_5/Const*
	keep_dims(*
T0*
_output_shapes
:
b
Adam/clip_by_norm_5/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Adam/clip_by_norm_5/GreaterGreaterAdam/clip_by_norm_5/SumAdam/clip_by_norm_5/Greater/y*
T0*
_output_shapes
:
m
#Adam/clip_by_norm_5/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
h
#Adam/clip_by_norm_5/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Adam/clip_by_norm_5/ones_likeFill#Adam/clip_by_norm_5/ones_like/Shape#Adam/clip_by_norm_5/ones_like/Const*
_output_shapes
:*
T0
?
Adam/clip_by_norm_5/SelectSelectAdam/clip_by_norm_5/GreaterAdam/clip_by_norm_5/SumAdam/clip_by_norm_5/ones_like*
_output_shapes
:*
T0
a
Adam/clip_by_norm_5/SqrtSqrtAdam/clip_by_norm_5/Select*
_output_shapes
:*
T0
?
Adam/clip_by_norm_5/Select_1SelectAdam/clip_by_norm_5/GreaterAdam/clip_by_norm_5/SqrtAdam/clip_by_norm_5/Sum*
T0*
_output_shapes
:
`
Adam/clip_by_norm_5/mul_1/yConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
Adam/clip_by_norm_5/mul_1Mul-Adam/gradients/conv3/BiasAdd_grad/BiasAddGradAdam/clip_by_norm_5/mul_1/y*
T0*
_output_shapes	
:?
b
Adam/clip_by_norm_5/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Adam/clip_by_norm_5/MaximumMaximumAdam/clip_by_norm_5/Select_1Adam/clip_by_norm_5/Maximum/y*
_output_shapes
:*
T0
?
Adam/clip_by_norm_5/truedivRealDivAdam/clip_by_norm_5/mul_1Adam/clip_by_norm_5/Maximum*
_output_shapes	
:?*
T0
b
Adam/clip_by_norm_5IdentityAdam/clip_by_norm_5/truediv*
_output_shapes	
:?*
T0
?
Adam/clip_by_norm_6/mulMulOAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall:3OAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall:3*(
_output_shapes
:??????????*
T0
j
Adam/clip_by_norm_6/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
?
Adam/clip_by_norm_6/SumSumAdam/clip_by_norm_6/mulAdam/clip_by_norm_6/Const*
	keep_dims(*
_output_shapes

:*
T0
b
Adam/clip_by_norm_6/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
Adam/clip_by_norm_6/GreaterGreaterAdam/clip_by_norm_6/SumAdam/clip_by_norm_6/Greater/y*
T0*
_output_shapes

:
t
#Adam/clip_by_norm_6/ones_like/ShapeConst*
_output_shapes
:*
valueB"      *
dtype0
h
#Adam/clip_by_norm_6/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Adam/clip_by_norm_6/ones_likeFill#Adam/clip_by_norm_6/ones_like/Shape#Adam/clip_by_norm_6/ones_like/Const*
_output_shapes

:*
T0
?
Adam/clip_by_norm_6/SelectSelectAdam/clip_by_norm_6/GreaterAdam/clip_by_norm_6/SumAdam/clip_by_norm_6/ones_like*
T0*
_output_shapes

:
e
Adam/clip_by_norm_6/SqrtSqrtAdam/clip_by_norm_6/Select*
_output_shapes

:*
T0
?
Adam/clip_by_norm_6/Select_1SelectAdam/clip_by_norm_6/GreaterAdam/clip_by_norm_6/SqrtAdam/clip_by_norm_6/Sum*
T0*
_output_shapes

:
`
Adam/clip_by_norm_6/mul_1/yConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
Adam/clip_by_norm_6/mul_1MulOAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall:3Adam/clip_by_norm_6/mul_1/y*
T0*(
_output_shapes
:??????????
b
Adam/clip_by_norm_6/Maximum/yConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
Adam/clip_by_norm_6/MaximumMaximumAdam/clip_by_norm_6/Select_1Adam/clip_by_norm_6/Maximum/y*
T0*
_output_shapes

:
?
Adam/clip_by_norm_6/truedivRealDivAdam/clip_by_norm_6/mul_1Adam/clip_by_norm_6/Maximum*(
_output_shapes
:??????????*
T0
o
Adam/clip_by_norm_6IdentityAdam/clip_by_norm_6/truediv*(
_output_shapes
:??????????*
T0
?
Adam/clip_by_norm_7/mulMulOAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall:4OAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall:4*
T0*(
_output_shapes
:??????????
j
Adam/clip_by_norm_7/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
?
Adam/clip_by_norm_7/SumSumAdam/clip_by_norm_7/mulAdam/clip_by_norm_7/Const*
	keep_dims(*
T0*
_output_shapes

:
b
Adam/clip_by_norm_7/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Adam/clip_by_norm_7/GreaterGreaterAdam/clip_by_norm_7/SumAdam/clip_by_norm_7/Greater/y*
_output_shapes

:*
T0
t
#Adam/clip_by_norm_7/ones_like/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
h
#Adam/clip_by_norm_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Adam/clip_by_norm_7/ones_likeFill#Adam/clip_by_norm_7/ones_like/Shape#Adam/clip_by_norm_7/ones_like/Const*
_output_shapes

:*
T0
?
Adam/clip_by_norm_7/SelectSelectAdam/clip_by_norm_7/GreaterAdam/clip_by_norm_7/SumAdam/clip_by_norm_7/ones_like*
_output_shapes

:*
T0
e
Adam/clip_by_norm_7/SqrtSqrtAdam/clip_by_norm_7/Select*
T0*
_output_shapes

:
?
Adam/clip_by_norm_7/Select_1SelectAdam/clip_by_norm_7/GreaterAdam/clip_by_norm_7/SqrtAdam/clip_by_norm_7/Sum*
_output_shapes

:*
T0
`
Adam/clip_by_norm_7/mul_1/yConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
Adam/clip_by_norm_7/mul_1MulOAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall:4Adam/clip_by_norm_7/mul_1/y*
T0*(
_output_shapes
:??????????
b
Adam/clip_by_norm_7/Maximum/yConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Adam/clip_by_norm_7/MaximumMaximumAdam/clip_by_norm_7/Select_1Adam/clip_by_norm_7/Maximum/y*
T0*
_output_shapes

:
?
Adam/clip_by_norm_7/truedivRealDivAdam/clip_by_norm_7/mul_1Adam/clip_by_norm_7/Maximum*
T0*(
_output_shapes
:??????????
o
Adam/clip_by_norm_7IdentityAdam/clip_by_norm_7/truediv*(
_output_shapes
:??????????*
T0
?
Adam/clip_by_norm_8/mulMulOAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall:5OAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall:5*#
_output_shapes
:?????????*
T0
c
Adam/clip_by_norm_8/ConstConst*
dtype0*
valueB: *
_output_shapes
:
?
Adam/clip_by_norm_8/SumSumAdam/clip_by_norm_8/mulAdam/clip_by_norm_8/Const*
T0*
_output_shapes
:*
	keep_dims(
b
Adam/clip_by_norm_8/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
?
Adam/clip_by_norm_8/GreaterGreaterAdam/clip_by_norm_8/SumAdam/clip_by_norm_8/Greater/y*
_output_shapes
:*
T0
m
#Adam/clip_by_norm_8/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
h
#Adam/clip_by_norm_8/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Adam/clip_by_norm_8/ones_likeFill#Adam/clip_by_norm_8/ones_like/Shape#Adam/clip_by_norm_8/ones_like/Const*
_output_shapes
:*
T0
?
Adam/clip_by_norm_8/SelectSelectAdam/clip_by_norm_8/GreaterAdam/clip_by_norm_8/SumAdam/clip_by_norm_8/ones_like*
T0*
_output_shapes
:
a
Adam/clip_by_norm_8/SqrtSqrtAdam/clip_by_norm_8/Select*
_output_shapes
:*
T0
?
Adam/clip_by_norm_8/Select_1SelectAdam/clip_by_norm_8/GreaterAdam/clip_by_norm_8/SqrtAdam/clip_by_norm_8/Sum*
T0*
_output_shapes
:
`
Adam/clip_by_norm_8/mul_1/yConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Adam/clip_by_norm_8/mul_1MulOAdam/gradients/recurrent/StatefulPartitionedCall_grad/StatefulPartitionedCall:5Adam/clip_by_norm_8/mul_1/y*
T0*#
_output_shapes
:?????????
b
Adam/clip_by_norm_8/Maximum/yConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
Adam/clip_by_norm_8/MaximumMaximumAdam/clip_by_norm_8/Select_1Adam/clip_by_norm_8/Maximum/y*
T0*
_output_shapes
:
?
Adam/clip_by_norm_8/truedivRealDivAdam/clip_by_norm_8/mul_1Adam/clip_by_norm_8/Maximum*#
_output_shapes
:?????????*
T0
j
Adam/clip_by_norm_8IdentityAdam/clip_by_norm_8/truediv*
T0*#
_output_shapes
:?????????
?
Adam/clip_by_norm_9/mulMul*Adam/gradients/hidden/MatMul_grad/MatMul_1*Adam/gradients/hidden/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	? 
j
Adam/clip_by_norm_9/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
?
Adam/clip_by_norm_9/SumSumAdam/clip_by_norm_9/mulAdam/clip_by_norm_9/Const*
T0*
_output_shapes

:*
	keep_dims(
b
Adam/clip_by_norm_9/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
?
Adam/clip_by_norm_9/GreaterGreaterAdam/clip_by_norm_9/SumAdam/clip_by_norm_9/Greater/y*
_output_shapes

:*
T0
t
#Adam/clip_by_norm_9/ones_like/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
h
#Adam/clip_by_norm_9/ones_like/ConstConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Adam/clip_by_norm_9/ones_likeFill#Adam/clip_by_norm_9/ones_like/Shape#Adam/clip_by_norm_9/ones_like/Const*
_output_shapes

:*
T0
?
Adam/clip_by_norm_9/SelectSelectAdam/clip_by_norm_9/GreaterAdam/clip_by_norm_9/SumAdam/clip_by_norm_9/ones_like*
T0*
_output_shapes

:
e
Adam/clip_by_norm_9/SqrtSqrtAdam/clip_by_norm_9/Select*
T0*
_output_shapes

:
?
Adam/clip_by_norm_9/Select_1SelectAdam/clip_by_norm_9/GreaterAdam/clip_by_norm_9/SqrtAdam/clip_by_norm_9/Sum*
_output_shapes

:*
T0
`
Adam/clip_by_norm_9/mul_1/yConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Adam/clip_by_norm_9/mul_1Mul*Adam/gradients/hidden/MatMul_grad/MatMul_1Adam/clip_by_norm_9/mul_1/y*
_output_shapes
:	? *
T0
b
Adam/clip_by_norm_9/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Adam/clip_by_norm_9/MaximumMaximumAdam/clip_by_norm_9/Select_1Adam/clip_by_norm_9/Maximum/y*
T0*
_output_shapes

:
?
Adam/clip_by_norm_9/truedivRealDivAdam/clip_by_norm_9/mul_1Adam/clip_by_norm_9/Maximum*
_output_shapes
:	? *
T0
f
Adam/clip_by_norm_9IdentityAdam/clip_by_norm_9/truediv*
T0*
_output_shapes
:	? 
?
Adam/clip_by_norm_10/mulMul.Adam/gradients/hidden/BiasAdd_grad/BiasAddGrad.Adam/gradients/hidden/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
d
Adam/clip_by_norm_10/ConstConst*
valueB: *
_output_shapes
:*
dtype0
?
Adam/clip_by_norm_10/SumSumAdam/clip_by_norm_10/mulAdam/clip_by_norm_10/Const*
	keep_dims(*
T0*
_output_shapes
:
c
Adam/clip_by_norm_10/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Adam/clip_by_norm_10/GreaterGreaterAdam/clip_by_norm_10/SumAdam/clip_by_norm_10/Greater/y*
_output_shapes
:*
T0
n
$Adam/clip_by_norm_10/ones_like/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
i
$Adam/clip_by_norm_10/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Adam/clip_by_norm_10/ones_likeFill$Adam/clip_by_norm_10/ones_like/Shape$Adam/clip_by_norm_10/ones_like/Const*
T0*
_output_shapes
:
?
Adam/clip_by_norm_10/SelectSelectAdam/clip_by_norm_10/GreaterAdam/clip_by_norm_10/SumAdam/clip_by_norm_10/ones_like*
_output_shapes
:*
T0
c
Adam/clip_by_norm_10/SqrtSqrtAdam/clip_by_norm_10/Select*
T0*
_output_shapes
:
?
Adam/clip_by_norm_10/Select_1SelectAdam/clip_by_norm_10/GreaterAdam/clip_by_norm_10/SqrtAdam/clip_by_norm_10/Sum*
_output_shapes
:*
T0
a
Adam/clip_by_norm_10/mul_1/yConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
Adam/clip_by_norm_10/mul_1Mul.Adam/gradients/hidden/BiasAdd_grad/BiasAddGradAdam/clip_by_norm_10/mul_1/y*
T0*
_output_shapes
: 
c
Adam/clip_by_norm_10/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Adam/clip_by_norm_10/MaximumMaximumAdam/clip_by_norm_10/Select_1Adam/clip_by_norm_10/Maximum/y*
_output_shapes
:*
T0
?
Adam/clip_by_norm_10/truedivRealDivAdam/clip_by_norm_10/mul_1Adam/clip_by_norm_10/Maximum*
_output_shapes
: *
T0
c
Adam/clip_by_norm_10IdentityAdam/clip_by_norm_10/truediv*
_output_shapes
: *
T0
?
Adam/clip_by_norm_11/mulMul*Adam/gradients/output/MatMul_grad/MatMul_1*Adam/gradients/output/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
k
Adam/clip_by_norm_11/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
?
Adam/clip_by_norm_11/SumSumAdam/clip_by_norm_11/mulAdam/clip_by_norm_11/Const*
T0*
	keep_dims(*
_output_shapes

:
c
Adam/clip_by_norm_11/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
Adam/clip_by_norm_11/GreaterGreaterAdam/clip_by_norm_11/SumAdam/clip_by_norm_11/Greater/y*
T0*
_output_shapes

:
u
$Adam/clip_by_norm_11/ones_like/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
i
$Adam/clip_by_norm_11/ones_like/ConstConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
Adam/clip_by_norm_11/ones_likeFill$Adam/clip_by_norm_11/ones_like/Shape$Adam/clip_by_norm_11/ones_like/Const*
T0*
_output_shapes

:
?
Adam/clip_by_norm_11/SelectSelectAdam/clip_by_norm_11/GreaterAdam/clip_by_norm_11/SumAdam/clip_by_norm_11/ones_like*
_output_shapes

:*
T0
g
Adam/clip_by_norm_11/SqrtSqrtAdam/clip_by_norm_11/Select*
T0*
_output_shapes

:
?
Adam/clip_by_norm_11/Select_1SelectAdam/clip_by_norm_11/GreaterAdam/clip_by_norm_11/SqrtAdam/clip_by_norm_11/Sum*
T0*
_output_shapes

:
a
Adam/clip_by_norm_11/mul_1/yConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Adam/clip_by_norm_11/mul_1Mul*Adam/gradients/output/MatMul_grad/MatMul_1Adam/clip_by_norm_11/mul_1/y*
_output_shapes

: *
T0
c
Adam/clip_by_norm_11/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
Adam/clip_by_norm_11/MaximumMaximumAdam/clip_by_norm_11/Select_1Adam/clip_by_norm_11/Maximum/y*
_output_shapes

:*
T0
?
Adam/clip_by_norm_11/truedivRealDivAdam/clip_by_norm_11/mul_1Adam/clip_by_norm_11/Maximum*
_output_shapes

: *
T0
g
Adam/clip_by_norm_11IdentityAdam/clip_by_norm_11/truediv*
_output_shapes

: *
T0
?
Adam/clip_by_norm_12/mulMul.Adam/gradients/output/BiasAdd_grad/BiasAddGrad.Adam/gradients/output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
d
Adam/clip_by_norm_12/ConstConst*
valueB: *
_output_shapes
:*
dtype0
?
Adam/clip_by_norm_12/SumSumAdam/clip_by_norm_12/mulAdam/clip_by_norm_12/Const*
T0*
	keep_dims(*
_output_shapes
:
c
Adam/clip_by_norm_12/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
Adam/clip_by_norm_12/GreaterGreaterAdam/clip_by_norm_12/SumAdam/clip_by_norm_12/Greater/y*
T0*
_output_shapes
:
n
$Adam/clip_by_norm_12/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
$Adam/clip_by_norm_12/ones_like/ConstConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Adam/clip_by_norm_12/ones_likeFill$Adam/clip_by_norm_12/ones_like/Shape$Adam/clip_by_norm_12/ones_like/Const*
_output_shapes
:*
T0
?
Adam/clip_by_norm_12/SelectSelectAdam/clip_by_norm_12/GreaterAdam/clip_by_norm_12/SumAdam/clip_by_norm_12/ones_like*
_output_shapes
:*
T0
c
Adam/clip_by_norm_12/SqrtSqrtAdam/clip_by_norm_12/Select*
_output_shapes
:*
T0
?
Adam/clip_by_norm_12/Select_1SelectAdam/clip_by_norm_12/GreaterAdam/clip_by_norm_12/SqrtAdam/clip_by_norm_12/Sum*
T0*
_output_shapes
:
a
Adam/clip_by_norm_12/mul_1/yConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
Adam/clip_by_norm_12/mul_1Mul.Adam/gradients/output/BiasAdd_grad/BiasAddGradAdam/clip_by_norm_12/mul_1/y*
T0*
_output_shapes
:
c
Adam/clip_by_norm_12/Maximum/yConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
Adam/clip_by_norm_12/MaximumMaximumAdam/clip_by_norm_12/Select_1Adam/clip_by_norm_12/Maximum/y*
T0*
_output_shapes
:
?
Adam/clip_by_norm_12/truedivRealDivAdam/clip_by_norm_12/mul_1Adam/clip_by_norm_12/Maximum*
T0*
_output_shapes
:
c
Adam/clip_by_norm_12IdentityAdam/clip_by_norm_12/truediv*
T0*
_output_shapes
:
?
%Adam/beta_1/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@Adam/beta_1
?
Adam/beta_1VarHandleOp*
_output_shapes
: *
_class
loc:@Adam/beta_1*
shape: *
shared_nameAdam/beta_1*
dtype0
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
?
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0
?
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
_output_shapes
: *
dtype0
?
%Adam/beta_2/Initializer/initial_valueConst*
dtype0*
valueB
 *w??*
_class
loc:@Adam/beta_2*
_output_shapes
: 
?
Adam/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
shape: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
?
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_2
?
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2
?
$Adam/decay/Initializer/initial_valueConst*
_output_shapes
: *
dtype0*
_class
loc:@Adam/decay*
valueB
 *    
?

Adam/decayVarHandleOp*
dtype0*
shape: *
_output_shapes
: *
_class
loc:@Adam/decay*
shared_name
Adam/decay
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
?
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0
?
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
_output_shapes
: *
dtype0
?
,Adam/learning_rate/Initializer/initial_valueConst*%
_class
loc:@Adam/learning_rate*
dtype0*
valueB
 *o?:*
_output_shapes
: 
?
Adam/learning_rateVarHandleOp*
_output_shapes
: *#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
dtype0*
shape: 
u
3Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
?
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*
dtype0*%
_class
loc:@Adam/learning_rate
?
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0*%
_class
loc:@Adam/learning_rate
?
+Adam/convolution/kernel/m/Initializer/zerosConst*
dtype0*%
_class
loc:@convolution/kernel*"
_output_shapes
:	 *!
valueB	 *    
?
Adam/convolution/kernel/mVarHandleOp*
dtype0*
shape:	 *%
_class
loc:@convolution/kernel*
_output_shapes
: **
shared_nameAdam/convolution/kernel/m
?
:Adam/convolution/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/convolution/kernel/m*%
_class
loc:@convolution/kernel*
_output_shapes
: 
?
 Adam/convolution/kernel/m/AssignAssignVariableOpAdam/convolution/kernel/m+Adam/convolution/kernel/m/Initializer/zeros*%
_class
loc:@convolution/kernel*
dtype0
?
-Adam/convolution/kernel/m/Read/ReadVariableOpReadVariableOpAdam/convolution/kernel/m*%
_class
loc:@convolution/kernel*"
_output_shapes
:	 *
dtype0
?
)Adam/convolution/bias/m/Initializer/zerosConst*
dtype0*#
_class
loc:@convolution/bias*
valueB *    *
_output_shapes
: 
?
Adam/convolution/bias/mVarHandleOp*
shape: *
_output_shapes
: *
dtype0*#
_class
loc:@convolution/bias*(
shared_nameAdam/convolution/bias/m
?
8Adam/convolution/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/convolution/bias/m*
_output_shapes
: *#
_class
loc:@convolution/bias
?
Adam/convolution/bias/m/AssignAssignVariableOpAdam/convolution/bias/m)Adam/convolution/bias/m/Initializer/zeros*
dtype0*#
_class
loc:@convolution/bias
?
+Adam/convolution/bias/m/Read/ReadVariableOpReadVariableOpAdam/convolution/bias/m*
_output_shapes
: *#
_class
loc:@convolution/bias*
dtype0
?
5Adam/conv2/kernel/m/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@conv2/kernel*!
valueB"	       @   *
dtype0
?
+Adam/conv2/kernel/m/Initializer/zeros/ConstConst*
_class
loc:@conv2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
%Adam/conv2/kernel/m/Initializer/zerosFill5Adam/conv2/kernel/m/Initializer/zeros/shape_as_tensor+Adam/conv2/kernel/m/Initializer/zeros/Const*
_class
loc:@conv2/kernel*
T0*"
_output_shapes
:	 @
?
Adam/conv2/kernel/mVarHandleOp*
shape:	 @*$
shared_nameAdam/conv2/kernel/m*
dtype0*
_class
loc:@conv2/kernel*
_output_shapes
: 
?
4Adam/conv2/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2/kernel/m*
_class
loc:@conv2/kernel*
_output_shapes
: 
?
Adam/conv2/kernel/m/AssignAssignVariableOpAdam/conv2/kernel/m%Adam/conv2/kernel/m/Initializer/zeros*
dtype0*
_class
loc:@conv2/kernel
?
'Adam/conv2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2/kernel/m*
_class
loc:@conv2/kernel*"
_output_shapes
:	 @*
dtype0
?
#Adam/conv2/bias/m/Initializer/zerosConst*
valueB@*    *
dtype0*
_class
loc:@conv2/bias*
_output_shapes
:@
?
Adam/conv2/bias/mVarHandleOp*
_output_shapes
: *"
shared_nameAdam/conv2/bias/m*
dtype0*
_class
loc:@conv2/bias*
shape:@
?
2Adam/conv2/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2/bias/m*
_class
loc:@conv2/bias*
_output_shapes
: 
?
Adam/conv2/bias/m/AssignAssignVariableOpAdam/conv2/bias/m#Adam/conv2/bias/m/Initializer/zeros*
_class
loc:@conv2/bias*
dtype0
?
%Adam/conv2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2/bias/m*
_output_shapes
:@*
dtype0*
_class
loc:@conv2/bias
?
5Adam/conv3/kernel/m/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@conv3/kernel*
_output_shapes
:*!
valueB"	   @   ?   
?
+Adam/conv3/kernel/m/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@conv3/kernel
?
%Adam/conv3/kernel/m/Initializer/zerosFill5Adam/conv3/kernel/m/Initializer/zeros/shape_as_tensor+Adam/conv3/kernel/m/Initializer/zeros/Const*
_class
loc:@conv3/kernel*
T0*#
_output_shapes
:	@?
?
Adam/conv3/kernel/mVarHandleOp*
dtype0*
_output_shapes
: *
_class
loc:@conv3/kernel*
shape:	@?*$
shared_nameAdam/conv3/kernel/m
?
4Adam/conv3/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv3/kernel/m*
_class
loc:@conv3/kernel*
_output_shapes
: 
?
Adam/conv3/kernel/m/AssignAssignVariableOpAdam/conv3/kernel/m%Adam/conv3/kernel/m/Initializer/zeros*
dtype0*
_class
loc:@conv3/kernel
?
'Adam/conv3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3/kernel/m*
dtype0*
_class
loc:@conv3/kernel*#
_output_shapes
:	@?
?
#Adam/conv3/bias/m/Initializer/zerosConst*
_output_shapes	
:?*
dtype0*
_class
loc:@conv3/bias*
valueB?*    
?
Adam/conv3/bias/mVarHandleOp*
_class
loc:@conv3/bias*"
shared_nameAdam/conv3/bias/m*
shape:?*
_output_shapes
: *
dtype0
?
2Adam/conv3/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv3/bias/m*
_class
loc:@conv3/bias*
_output_shapes
: 
?
Adam/conv3/bias/m/AssignAssignVariableOpAdam/conv3/bias/m#Adam/conv3/bias/m/Initializer/zeros*
dtype0*
_class
loc:@conv3/bias
?
%Adam/conv3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3/bias/m*
_class
loc:@conv3/bias*
dtype0*
_output_shapes	
:?
?
9Adam/recurrent/kernel/m/Initializer/zeros/shape_as_tensorConst*
dtype0*#
_class
loc:@recurrent/kernel*
_output_shapes
:*
valueB"?     
?
/Adam/recurrent/kernel/m/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@recurrent/kernel*
dtype0*
_output_shapes
: 
?
)Adam/recurrent/kernel/m/Initializer/zerosFill9Adam/recurrent/kernel/m/Initializer/zeros/shape_as_tensor/Adam/recurrent/kernel/m/Initializer/zeros/Const* 
_output_shapes
:
??*#
_class
loc:@recurrent/kernel*
T0
?
Adam/recurrent/kernel/mVarHandleOp*
_output_shapes
: *(
shared_nameAdam/recurrent/kernel/m*
shape:
??*
dtype0*#
_class
loc:@recurrent/kernel
?
8Adam/recurrent/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/recurrent/kernel/m*#
_class
loc:@recurrent/kernel*
_output_shapes
: 
?
Adam/recurrent/kernel/m/AssignAssignVariableOpAdam/recurrent/kernel/m)Adam/recurrent/kernel/m/Initializer/zeros*#
_class
loc:@recurrent/kernel*
dtype0
?
+Adam/recurrent/kernel/m/Read/ReadVariableOpReadVariableOpAdam/recurrent/kernel/m*#
_class
loc:@recurrent/kernel* 
_output_shapes
:
??*
dtype0
?
CAdam/recurrent/recurrent_kernel/m/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel*
valueB"?      
?
9Adam/recurrent/recurrent_kernel/m/Initializer/zeros/ConstConst*-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0*
valueB
 *    *
_output_shapes
: 
?
3Adam/recurrent/recurrent_kernel/m/Initializer/zerosFillCAdam/recurrent/recurrent_kernel/m/Initializer/zeros/shape_as_tensor9Adam/recurrent/recurrent_kernel/m/Initializer/zeros/Const* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel*
T0
?
!Adam/recurrent/recurrent_kernel/mVarHandleOp*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel*
shape:
??*2
shared_name#!Adam/recurrent/recurrent_kernel/m*
_output_shapes
: 
?
BAdam/recurrent/recurrent_kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Adam/recurrent/recurrent_kernel/m*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
: 
?
(Adam/recurrent/recurrent_kernel/m/AssignAssignVariableOp!Adam/recurrent/recurrent_kernel/m3Adam/recurrent/recurrent_kernel/m/Initializer/zeros*-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0
?
5Adam/recurrent/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp!Adam/recurrent/recurrent_kernel/m*-
_class#
!loc:@recurrent/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
'Adam/recurrent/bias/m/Initializer/zerosConst*
_output_shapes	
:?*
valueB?*    *!
_class
loc:@recurrent/bias*
dtype0
?
Adam/recurrent/bias/mVarHandleOp*
shape:?*&
shared_nameAdam/recurrent/bias/m*
_output_shapes
: *
dtype0*!
_class
loc:@recurrent/bias
?
6Adam/recurrent/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/recurrent/bias/m*
_output_shapes
: *!
_class
loc:@recurrent/bias
?
Adam/recurrent/bias/m/AssignAssignVariableOpAdam/recurrent/bias/m'Adam/recurrent/bias/m/Initializer/zeros*
dtype0*!
_class
loc:@recurrent/bias
?
)Adam/recurrent/bias/m/Read/ReadVariableOpReadVariableOpAdam/recurrent/bias/m*!
_class
loc:@recurrent/bias*
dtype0*
_output_shapes	
:?
?
6Adam/hidden/kernel/m/Initializer/zeros/shape_as_tensorConst* 
_class
loc:@hidden/kernel*
_output_shapes
:*
valueB"?       *
dtype0
?
,Adam/hidden/kernel/m/Initializer/zeros/ConstConst*
_output_shapes
: * 
_class
loc:@hidden/kernel*
valueB
 *    *
dtype0
?
&Adam/hidden/kernel/m/Initializer/zerosFill6Adam/hidden/kernel/m/Initializer/zeros/shape_as_tensor,Adam/hidden/kernel/m/Initializer/zeros/Const* 
_class
loc:@hidden/kernel*
_output_shapes
:	? *
T0
?
Adam/hidden/kernel/mVarHandleOp*
_output_shapes
: * 
_class
loc:@hidden/kernel*%
shared_nameAdam/hidden/kernel/m*
dtype0*
shape:	? 
?
5Adam/hidden/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/hidden/kernel/m*
_output_shapes
: * 
_class
loc:@hidden/kernel
?
Adam/hidden/kernel/m/AssignAssignVariableOpAdam/hidden/kernel/m&Adam/hidden/kernel/m/Initializer/zeros*
dtype0* 
_class
loc:@hidden/kernel
?
(Adam/hidden/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden/kernel/m*
_output_shapes
:	? *
dtype0* 
_class
loc:@hidden/kernel
?
$Adam/hidden/bias/m/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@hidden/bias*
valueB *    *
dtype0
?
Adam/hidden/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
_class
loc:@hidden/bias*#
shared_nameAdam/hidden/bias/m*
shape: 
?
3Adam/hidden/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/hidden/bias/m*
_class
loc:@hidden/bias*
_output_shapes
: 
?
Adam/hidden/bias/m/AssignAssignVariableOpAdam/hidden/bias/m$Adam/hidden/bias/m/Initializer/zeros*
dtype0*
_class
loc:@hidden/bias
?
&Adam/hidden/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden/bias/m*
_class
loc:@hidden/bias*
_output_shapes
: *
dtype0
?
&Adam/output/kernel/m/Initializer/zerosConst* 
_class
loc:@output/kernel*
_output_shapes

: *
dtype0*
valueB *    
?
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0* 
_class
loc:@output/kernel*
shape
: *%
shared_nameAdam/output/kernel/m
?
5Adam/output/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/output/kernel/m*
_output_shapes
: * 
_class
loc:@output/kernel
?
Adam/output/kernel/m/AssignAssignVariableOpAdam/output/kernel/m&Adam/output/kernel/m/Initializer/zeros*
dtype0* 
_class
loc:@output/kernel
?
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

: *
dtype0* 
_class
loc:@output/kernel
?
$Adam/output/bias/m/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*
_class
loc:@output/bias
?
Adam/output/bias/mVarHandleOp*
_class
loc:@output/bias*#
shared_nameAdam/output/bias/m*
_output_shapes
: *
dtype0*
shape:
?
3Adam/output/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/output/bias/m*
_class
loc:@output/bias*
_output_shapes
: 
?
Adam/output/bias/m/AssignAssignVariableOpAdam/output/bias/m$Adam/output/bias/m/Initializer/zeros*
_class
loc:@output/bias*
dtype0
?
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0*
_class
loc:@output/bias
?
+Adam/convolution/kernel/v/Initializer/zerosConst*!
valueB	 *    *%
_class
loc:@convolution/kernel*"
_output_shapes
:	 *
dtype0
?
Adam/convolution/kernel/vVarHandleOp*
dtype0*
_output_shapes
: **
shared_nameAdam/convolution/kernel/v*
shape:	 *%
_class
loc:@convolution/kernel
?
:Adam/convolution/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/convolution/kernel/v*
_output_shapes
: *%
_class
loc:@convolution/kernel
?
 Adam/convolution/kernel/v/AssignAssignVariableOpAdam/convolution/kernel/v+Adam/convolution/kernel/v/Initializer/zeros*
dtype0*%
_class
loc:@convolution/kernel
?
-Adam/convolution/kernel/v/Read/ReadVariableOpReadVariableOpAdam/convolution/kernel/v*"
_output_shapes
:	 *%
_class
loc:@convolution/kernel*
dtype0
?
)Adam/convolution/bias/v/Initializer/zerosConst*
valueB *    *
_output_shapes
: *#
_class
loc:@convolution/bias*
dtype0
?
Adam/convolution/bias/vVarHandleOp*
shape: *(
shared_nameAdam/convolution/bias/v*#
_class
loc:@convolution/bias*
_output_shapes
: *
dtype0
?
8Adam/convolution/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/convolution/bias/v*
_output_shapes
: *#
_class
loc:@convolution/bias
?
Adam/convolution/bias/v/AssignAssignVariableOpAdam/convolution/bias/v)Adam/convolution/bias/v/Initializer/zeros*
dtype0*#
_class
loc:@convolution/bias
?
+Adam/convolution/bias/v/Read/ReadVariableOpReadVariableOpAdam/convolution/bias/v*
dtype0*#
_class
loc:@convolution/bias*
_output_shapes
: 
?
5Adam/conv2/kernel/v/Initializer/zeros/shape_as_tensorConst*!
valueB"	       @   *
_class
loc:@conv2/kernel*
dtype0*
_output_shapes
:
?
+Adam/conv2/kernel/v/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@conv2/kernel*
valueB
 *    *
_output_shapes
: 
?
%Adam/conv2/kernel/v/Initializer/zerosFill5Adam/conv2/kernel/v/Initializer/zeros/shape_as_tensor+Adam/conv2/kernel/v/Initializer/zeros/Const*
T0*
_class
loc:@conv2/kernel*"
_output_shapes
:	 @
?
Adam/conv2/kernel/vVarHandleOp*
shape:	 @*
dtype0*$
shared_nameAdam/conv2/kernel/v*
_class
loc:@conv2/kernel*
_output_shapes
: 
?
4Adam/conv2/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2/kernel/v*
_class
loc:@conv2/kernel*
_output_shapes
: 
?
Adam/conv2/kernel/v/AssignAssignVariableOpAdam/conv2/kernel/v%Adam/conv2/kernel/v/Initializer/zeros*
dtype0*
_class
loc:@conv2/kernel
?
'Adam/conv2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2/kernel/v*"
_output_shapes
:	 @*
dtype0*
_class
loc:@conv2/kernel
?
#Adam/conv2/bias/v/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@*
_class
loc:@conv2/bias*
dtype0
?
Adam/conv2/bias/vVarHandleOp*
_class
loc:@conv2/bias*
_output_shapes
: *
shape:@*
dtype0*"
shared_nameAdam/conv2/bias/v
?
2Adam/conv2/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv2/bias/v*
_output_shapes
: *
_class
loc:@conv2/bias
?
Adam/conv2/bias/v/AssignAssignVariableOpAdam/conv2/bias/v#Adam/conv2/bias/v/Initializer/zeros*
_class
loc:@conv2/bias*
dtype0
?
%Adam/conv2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2/bias/v*
dtype0*
_class
loc:@conv2/bias*
_output_shapes
:@
?
5Adam/conv3/kernel/v/Initializer/zeros/shape_as_tensorConst*!
valueB"	   @   ?   *
dtype0*
_output_shapes
:*
_class
loc:@conv3/kernel
?
+Adam/conv3/kernel/v/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_class
loc:@conv3/kernel*
_output_shapes
: 
?
%Adam/conv3/kernel/v/Initializer/zerosFill5Adam/conv3/kernel/v/Initializer/zeros/shape_as_tensor+Adam/conv3/kernel/v/Initializer/zeros/Const*#
_output_shapes
:	@?*
T0*
_class
loc:@conv3/kernel
?
Adam/conv3/kernel/vVarHandleOp*
_class
loc:@conv3/kernel*
dtype0*$
shared_nameAdam/conv3/kernel/v*
_output_shapes
: *
shape:	@?
?
4Adam/conv3/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv3/kernel/v*
_class
loc:@conv3/kernel*
_output_shapes
: 
?
Adam/conv3/kernel/v/AssignAssignVariableOpAdam/conv3/kernel/v%Adam/conv3/kernel/v/Initializer/zeros*
dtype0*
_class
loc:@conv3/kernel
?
'Adam/conv3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3/kernel/v*#
_output_shapes
:	@?*
_class
loc:@conv3/kernel*
dtype0
?
#Adam/conv3/bias/v/Initializer/zerosConst*
_output_shapes	
:?*
_class
loc:@conv3/bias*
dtype0*
valueB?*    
?
Adam/conv3/bias/vVarHandleOp*"
shared_nameAdam/conv3/bias/v*
_class
loc:@conv3/bias*
shape:?*
_output_shapes
: *
dtype0
?
2Adam/conv3/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/conv3/bias/v*
_class
loc:@conv3/bias*
_output_shapes
: 
?
Adam/conv3/bias/v/AssignAssignVariableOpAdam/conv3/bias/v#Adam/conv3/bias/v/Initializer/zeros*
_class
loc:@conv3/bias*
dtype0
?
%Adam/conv3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3/bias/v*
_class
loc:@conv3/bias*
_output_shapes	
:?*
dtype0
?
9Adam/recurrent/kernel/v/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*#
_class
loc:@recurrent/kernel*
valueB"?     *
dtype0
?
/Adam/recurrent/kernel/v/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *#
_class
loc:@recurrent/kernel*
_output_shapes
: 
?
)Adam/recurrent/kernel/v/Initializer/zerosFill9Adam/recurrent/kernel/v/Initializer/zeros/shape_as_tensor/Adam/recurrent/kernel/v/Initializer/zeros/Const*#
_class
loc:@recurrent/kernel*
T0* 
_output_shapes
:
??
?
Adam/recurrent/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*(
shared_nameAdam/recurrent/kernel/v*#
_class
loc:@recurrent/kernel*
shape:
??
?
8Adam/recurrent/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/recurrent/kernel/v*#
_class
loc:@recurrent/kernel*
_output_shapes
: 
?
Adam/recurrent/kernel/v/AssignAssignVariableOpAdam/recurrent/kernel/v)Adam/recurrent/kernel/v/Initializer/zeros*#
_class
loc:@recurrent/kernel*
dtype0
?
+Adam/recurrent/kernel/v/Read/ReadVariableOpReadVariableOpAdam/recurrent/kernel/v* 
_output_shapes
:
??*#
_class
loc:@recurrent/kernel*
dtype0
?
CAdam/recurrent/recurrent_kernel/v/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"?      *-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
:
?
9Adam/recurrent/recurrent_kernel/v/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel
?
3Adam/recurrent/recurrent_kernel/v/Initializer/zerosFillCAdam/recurrent/recurrent_kernel/v/Initializer/zeros/shape_as_tensor9Adam/recurrent/recurrent_kernel/v/Initializer/zeros/Const* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel*
T0
?
!Adam/recurrent/recurrent_kernel/vVarHandleOp*-
_class#
!loc:@recurrent/recurrent_kernel*
shape:
??*
dtype0*2
shared_name#!Adam/recurrent/recurrent_kernel/v*
_output_shapes
: 
?
BAdam/recurrent/recurrent_kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Adam/recurrent/recurrent_kernel/v*
_output_shapes
: *-
_class#
!loc:@recurrent/recurrent_kernel
?
(Adam/recurrent/recurrent_kernel/v/AssignAssignVariableOp!Adam/recurrent/recurrent_kernel/v3Adam/recurrent/recurrent_kernel/v/Initializer/zeros*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel
?
5Adam/recurrent/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp!Adam/recurrent/recurrent_kernel/v*-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0* 
_output_shapes
:
??
?
'Adam/recurrent/bias/v/Initializer/zerosConst*
_output_shapes	
:?*
dtype0*!
_class
loc:@recurrent/bias*
valueB?*    
?
Adam/recurrent/bias/vVarHandleOp*&
shared_nameAdam/recurrent/bias/v*!
_class
loc:@recurrent/bias*
_output_shapes
: *
dtype0*
shape:?
?
6Adam/recurrent/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/recurrent/bias/v*!
_class
loc:@recurrent/bias*
_output_shapes
: 
?
Adam/recurrent/bias/v/AssignAssignVariableOpAdam/recurrent/bias/v'Adam/recurrent/bias/v/Initializer/zeros*!
_class
loc:@recurrent/bias*
dtype0
?
)Adam/recurrent/bias/v/Read/ReadVariableOpReadVariableOpAdam/recurrent/bias/v*
_output_shapes	
:?*
dtype0*!
_class
loc:@recurrent/bias
?
6Adam/hidden/kernel/v/Initializer/zeros/shape_as_tensorConst*
dtype0* 
_class
loc:@hidden/kernel*
_output_shapes
:*
valueB"?       
?
,Adam/hidden/kernel/v/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0* 
_class
loc:@hidden/kernel
?
&Adam/hidden/kernel/v/Initializer/zerosFill6Adam/hidden/kernel/v/Initializer/zeros/shape_as_tensor,Adam/hidden/kernel/v/Initializer/zeros/Const* 
_class
loc:@hidden/kernel*
_output_shapes
:	? *
T0
?
Adam/hidden/kernel/vVarHandleOp*%
shared_nameAdam/hidden/kernel/v*
_output_shapes
: * 
_class
loc:@hidden/kernel*
shape:	? *
dtype0
?
5Adam/hidden/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/hidden/kernel/v*
_output_shapes
: * 
_class
loc:@hidden/kernel
?
Adam/hidden/kernel/v/AssignAssignVariableOpAdam/hidden/kernel/v&Adam/hidden/kernel/v/Initializer/zeros* 
_class
loc:@hidden/kernel*
dtype0
?
(Adam/hidden/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden/kernel/v* 
_class
loc:@hidden/kernel*
dtype0*
_output_shapes
:	? 
?
$Adam/hidden/bias/v/Initializer/zerosConst*
dtype0*
_class
loc:@hidden/bias*
valueB *    *
_output_shapes
: 
?
Adam/hidden/bias/vVarHandleOp*
shape: *#
shared_nameAdam/hidden/bias/v*
_class
loc:@hidden/bias*
_output_shapes
: *
dtype0
?
3Adam/hidden/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/hidden/bias/v*
_class
loc:@hidden/bias*
_output_shapes
: 
?
Adam/hidden/bias/v/AssignAssignVariableOpAdam/hidden/bias/v$Adam/hidden/bias/v/Initializer/zeros*
_class
loc:@hidden/bias*
dtype0
?
&Adam/hidden/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden/bias/v*
_class
loc:@hidden/bias*
_output_shapes
: *
dtype0
?
&Adam/output/kernel/v/Initializer/zerosConst*
dtype0* 
_class
loc:@output/kernel*
_output_shapes

: *
valueB *    
?
Adam/output/kernel/vVarHandleOp*%
shared_nameAdam/output/kernel/v*
_output_shapes
: *
dtype0*
shape
: * 
_class
loc:@output/kernel
?
5Adam/output/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/output/kernel/v*
_output_shapes
: * 
_class
loc:@output/kernel
?
Adam/output/kernel/v/AssignAssignVariableOpAdam/output/kernel/v&Adam/output/kernel/v/Initializer/zeros*
dtype0* 
_class
loc:@output/kernel
?
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v* 
_class
loc:@output/kernel*
dtype0*
_output_shapes

: 
?
$Adam/output/bias/v/Initializer/zerosConst*
_output_shapes
:*
_class
loc:@output/bias*
valueB*    *
dtype0
?
Adam/output/bias/vVarHandleOp*#
shared_nameAdam/output/bias/v*
_output_shapes
: *
shape:*
dtype0*
_class
loc:@output/bias
?
3Adam/output/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/output/bias/v*
_class
loc:@output/bias*
_output_shapes
: 
?
Adam/output/bias/v/AssignAssignVariableOpAdam/output/bias/v$Adam/output/bias/v/Initializer/zeros*
_class
loc:@output/bias*
dtype0
?
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0*
_class
loc:@output/bias
n
)Adam/Adam/update_convolution/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
o
2Adam/Adam/update_convolution/kernel/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
k
)Adam/Adam/update_convolution/kernel/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
'Adam/Adam/update_convolution/kernel/addAdd2Adam/Adam/update_convolution/kernel/ReadVariableOp)Adam/Adam/update_convolution/kernel/add/y*
_output_shapes
: *
T0	
?
(Adam/Adam/update_convolution/kernel/CastCast'Adam/Adam/update_convolution/kernel/add*

DstT0*
_output_shapes
: *

SrcT0	
z
6Adam/Adam/update_convolution/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
'Adam/Adam/update_convolution/kernel/PowPow6Adam/Adam/update_convolution/kernel/Pow/ReadVariableOp(Adam/Adam/update_convolution/kernel/Cast*
T0*
_output_shapes
: 
|
8Adam/Adam/update_convolution/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
)Adam/Adam/update_convolution/kernel/Pow_1Pow8Adam/Adam/update_convolution/kernel/Pow_1/ReadVariableOp(Adam/Adam/update_convolution/kernel/Cast*
_output_shapes
: *
T0
?
DAdam/Adam/update_convolution/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
FAdam/Adam/update_convolution/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
FAdam/Adam/update_convolution/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
5Adam/Adam/update_convolution/kernel/ResourceApplyAdamResourceApplyAdamconvolution/kernelAdam/convolution/kernel/mAdam/convolution/kernel/v'Adam/Adam/update_convolution/kernel/Pow)Adam/Adam/update_convolution/kernel/Pow_1DAdam/Adam/update_convolution/kernel/ResourceApplyAdam/ReadVariableOpFAdam/Adam/update_convolution/kernel/ResourceApplyAdam/ReadVariableOp_1FAdam/Adam/update_convolution/kernel/ResourceApplyAdam/ReadVariableOp_2)Adam/Adam/update_convolution/kernel/ConstAdam/clip_by_norm*
use_locking(*
T0
l
'Adam/Adam/update_convolution/bias/ConstConst*
dtype0*
valueB
 *???3*
_output_shapes
: 
m
0Adam/Adam/update_convolution/bias/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
i
'Adam/Adam/update_convolution/bias/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
%Adam/Adam/update_convolution/bias/addAdd0Adam/Adam/update_convolution/bias/ReadVariableOp'Adam/Adam/update_convolution/bias/add/y*
T0	*
_output_shapes
: 
?
&Adam/Adam/update_convolution/bias/CastCast%Adam/Adam/update_convolution/bias/add*

SrcT0	*
_output_shapes
: *

DstT0
x
4Adam/Adam/update_convolution/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
%Adam/Adam/update_convolution/bias/PowPow4Adam/Adam/update_convolution/bias/Pow/ReadVariableOp&Adam/Adam/update_convolution/bias/Cast*
T0*
_output_shapes
: 
z
6Adam/Adam/update_convolution/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
'Adam/Adam/update_convolution/bias/Pow_1Pow6Adam/Adam/update_convolution/bias/Pow_1/ReadVariableOp&Adam/Adam/update_convolution/bias/Cast*
_output_shapes
: *
T0
?
BAdam/Adam/update_convolution/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
DAdam/Adam/update_convolution/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
DAdam/Adam/update_convolution/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
3Adam/Adam/update_convolution/bias/ResourceApplyAdamResourceApplyAdamconvolution/biasAdam/convolution/bias/mAdam/convolution/bias/v%Adam/Adam/update_convolution/bias/Pow'Adam/Adam/update_convolution/bias/Pow_1BAdam/Adam/update_convolution/bias/ResourceApplyAdam/ReadVariableOpDAdam/Adam/update_convolution/bias/ResourceApplyAdam/ReadVariableOp_1DAdam/Adam/update_convolution/bias/ResourceApplyAdam/ReadVariableOp_2'Adam/Adam/update_convolution/bias/ConstAdam/clip_by_norm_1*
use_locking(*
T0
h
#Adam/Adam/update_conv2/kernel/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
i
,Adam/Adam/update_conv2/kernel/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
e
#Adam/Adam/update_conv2/kernel/add/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 
?
!Adam/Adam/update_conv2/kernel/addAdd,Adam/Adam/update_conv2/kernel/ReadVariableOp#Adam/Adam/update_conv2/kernel/add/y*
_output_shapes
: *
T0	
}
"Adam/Adam/update_conv2/kernel/CastCast!Adam/Adam/update_conv2/kernel/add*

DstT0*

SrcT0	*
_output_shapes
: 
t
0Adam/Adam/update_conv2/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
!Adam/Adam/update_conv2/kernel/PowPow0Adam/Adam/update_conv2/kernel/Pow/ReadVariableOp"Adam/Adam/update_conv2/kernel/Cast*
_output_shapes
: *
T0
v
2Adam/Adam/update_conv2/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
#Adam/Adam/update_conv2/kernel/Pow_1Pow2Adam/Adam/update_conv2/kernel/Pow_1/ReadVariableOp"Adam/Adam/update_conv2/kernel/Cast*
T0*
_output_shapes
: 
?
>Adam/Adam/update_conv2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
@Adam/Adam/update_conv2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
@Adam/Adam/update_conv2/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
/Adam/Adam/update_conv2/kernel/ResourceApplyAdamResourceApplyAdamconv2/kernelAdam/conv2/kernel/mAdam/conv2/kernel/v!Adam/Adam/update_conv2/kernel/Pow#Adam/Adam/update_conv2/kernel/Pow_1>Adam/Adam/update_conv2/kernel/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_conv2/kernel/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_conv2/kernel/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_conv2/kernel/ConstAdam/clip_by_norm_2*
use_locking(*
T0
f
!Adam/Adam/update_conv2/bias/ConstConst*
valueB
 *???3*
_output_shapes
: *
dtype0
g
*Adam/Adam/update_conv2/bias/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
c
!Adam/Adam/update_conv2/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
Adam/Adam/update_conv2/bias/addAdd*Adam/Adam/update_conv2/bias/ReadVariableOp!Adam/Adam/update_conv2/bias/add/y*
_output_shapes
: *
T0	
y
 Adam/Adam/update_conv2/bias/CastCastAdam/Adam/update_conv2/bias/add*
_output_shapes
: *

DstT0*

SrcT0	
r
.Adam/Adam/update_conv2/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
Adam/Adam/update_conv2/bias/PowPow.Adam/Adam/update_conv2/bias/Pow/ReadVariableOp Adam/Adam/update_conv2/bias/Cast*
T0*
_output_shapes
: 
t
0Adam/Adam/update_conv2/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
!Adam/Adam/update_conv2/bias/Pow_1Pow0Adam/Adam/update_conv2/bias/Pow_1/ReadVariableOp Adam/Adam/update_conv2/bias/Cast*
T0*
_output_shapes
: 
?
<Adam/Adam/update_conv2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
>Adam/Adam/update_conv2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
>Adam/Adam/update_conv2/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
-Adam/Adam/update_conv2/bias/ResourceApplyAdamResourceApplyAdam
conv2/biasAdam/conv2/bias/mAdam/conv2/bias/vAdam/Adam/update_conv2/bias/Pow!Adam/Adam/update_conv2/bias/Pow_1<Adam/Adam/update_conv2/bias/ResourceApplyAdam/ReadVariableOp>Adam/Adam/update_conv2/bias/ResourceApplyAdam/ReadVariableOp_1>Adam/Adam/update_conv2/bias/ResourceApplyAdam/ReadVariableOp_2!Adam/Adam/update_conv2/bias/ConstAdam/clip_by_norm_3*
T0*
use_locking(
h
#Adam/Adam/update_conv3/kernel/ConstConst*
valueB
 *???3*
_output_shapes
: *
dtype0
i
,Adam/Adam/update_conv3/kernel/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
e
#Adam/Adam/update_conv3/kernel/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
!Adam/Adam/update_conv3/kernel/addAdd,Adam/Adam/update_conv3/kernel/ReadVariableOp#Adam/Adam/update_conv3/kernel/add/y*
_output_shapes
: *
T0	
}
"Adam/Adam/update_conv3/kernel/CastCast!Adam/Adam/update_conv3/kernel/add*

DstT0*
_output_shapes
: *

SrcT0	
t
0Adam/Adam/update_conv3/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
!Adam/Adam/update_conv3/kernel/PowPow0Adam/Adam/update_conv3/kernel/Pow/ReadVariableOp"Adam/Adam/update_conv3/kernel/Cast*
_output_shapes
: *
T0
v
2Adam/Adam/update_conv3/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
#Adam/Adam/update_conv3/kernel/Pow_1Pow2Adam/Adam/update_conv3/kernel/Pow_1/ReadVariableOp"Adam/Adam/update_conv3/kernel/Cast*
T0*
_output_shapes
: 
?
>Adam/Adam/update_conv3/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
@Adam/Adam/update_conv3/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
@Adam/Adam/update_conv3/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
/Adam/Adam/update_conv3/kernel/ResourceApplyAdamResourceApplyAdamconv3/kernelAdam/conv3/kernel/mAdam/conv3/kernel/v!Adam/Adam/update_conv3/kernel/Pow#Adam/Adam/update_conv3/kernel/Pow_1>Adam/Adam/update_conv3/kernel/ResourceApplyAdam/ReadVariableOp@Adam/Adam/update_conv3/kernel/ResourceApplyAdam/ReadVariableOp_1@Adam/Adam/update_conv3/kernel/ResourceApplyAdam/ReadVariableOp_2#Adam/Adam/update_conv3/kernel/ConstAdam/clip_by_norm_4*
T0*
use_locking(
f
!Adam/Adam/update_conv3/bias/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *???3
g
*Adam/Adam/update_conv3/bias/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
c
!Adam/Adam/update_conv3/bias/add/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
?
Adam/Adam/update_conv3/bias/addAdd*Adam/Adam/update_conv3/bias/ReadVariableOp!Adam/Adam/update_conv3/bias/add/y*
T0	*
_output_shapes
: 
y
 Adam/Adam/update_conv3/bias/CastCastAdam/Adam/update_conv3/bias/add*
_output_shapes
: *

SrcT0	*

DstT0
r
.Adam/Adam/update_conv3/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
Adam/Adam/update_conv3/bias/PowPow.Adam/Adam/update_conv3/bias/Pow/ReadVariableOp Adam/Adam/update_conv3/bias/Cast*
T0*
_output_shapes
: 
t
0Adam/Adam/update_conv3/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
!Adam/Adam/update_conv3/bias/Pow_1Pow0Adam/Adam/update_conv3/bias/Pow_1/ReadVariableOp Adam/Adam/update_conv3/bias/Cast*
T0*
_output_shapes
: 
?
<Adam/Adam/update_conv3/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
>Adam/Adam/update_conv3/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
>Adam/Adam/update_conv3/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
-Adam/Adam/update_conv3/bias/ResourceApplyAdamResourceApplyAdam
conv3/biasAdam/conv3/bias/mAdam/conv3/bias/vAdam/Adam/update_conv3/bias/Pow!Adam/Adam/update_conv3/bias/Pow_1<Adam/Adam/update_conv3/bias/ResourceApplyAdam/ReadVariableOp>Adam/Adam/update_conv3/bias/ResourceApplyAdam/ReadVariableOp_1>Adam/Adam/update_conv3/bias/ResourceApplyAdam/ReadVariableOp_2!Adam/Adam/update_conv3/bias/ConstAdam/clip_by_norm_5*
T0*
use_locking(
l
'Adam/Adam/update_recurrent/kernel/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *???3
m
0Adam/Adam/update_recurrent/kernel/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
i
'Adam/Adam/update_recurrent/kernel/add/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
?
%Adam/Adam/update_recurrent/kernel/addAdd0Adam/Adam/update_recurrent/kernel/ReadVariableOp'Adam/Adam/update_recurrent/kernel/add/y*
_output_shapes
: *
T0	
?
&Adam/Adam/update_recurrent/kernel/CastCast%Adam/Adam/update_recurrent/kernel/add*
_output_shapes
: *

DstT0*

SrcT0	
x
4Adam/Adam/update_recurrent/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
%Adam/Adam/update_recurrent/kernel/PowPow4Adam/Adam/update_recurrent/kernel/Pow/ReadVariableOp&Adam/Adam/update_recurrent/kernel/Cast*
_output_shapes
: *
T0
z
6Adam/Adam/update_recurrent/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
'Adam/Adam/update_recurrent/kernel/Pow_1Pow6Adam/Adam/update_recurrent/kernel/Pow_1/ReadVariableOp&Adam/Adam/update_recurrent/kernel/Cast*
_output_shapes
: *
T0
?
BAdam/Adam/update_recurrent/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
DAdam/Adam/update_recurrent/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
DAdam/Adam/update_recurrent/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
3Adam/Adam/update_recurrent/kernel/ResourceApplyAdamResourceApplyAdamrecurrent/kernelAdam/recurrent/kernel/mAdam/recurrent/kernel/v%Adam/Adam/update_recurrent/kernel/Pow'Adam/Adam/update_recurrent/kernel/Pow_1BAdam/Adam/update_recurrent/kernel/ResourceApplyAdam/ReadVariableOpDAdam/Adam/update_recurrent/kernel/ResourceApplyAdam/ReadVariableOp_1DAdam/Adam/update_recurrent/kernel/ResourceApplyAdam/ReadVariableOp_2'Adam/Adam/update_recurrent/kernel/ConstAdam/clip_by_norm_6*
use_locking(*
T0
v
1Adam/Adam/update_recurrent/recurrent_kernel/ConstConst*
valueB
 *???3*
_output_shapes
: *
dtype0
w
:Adam/Adam/update_recurrent/recurrent_kernel/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
s
1Adam/Adam/update_recurrent/recurrent_kernel/add/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
?
/Adam/Adam/update_recurrent/recurrent_kernel/addAdd:Adam/Adam/update_recurrent/recurrent_kernel/ReadVariableOp1Adam/Adam/update_recurrent/recurrent_kernel/add/y*
_output_shapes
: *
T0	
?
0Adam/Adam/update_recurrent/recurrent_kernel/CastCast/Adam/Adam/update_recurrent/recurrent_kernel/add*
_output_shapes
: *

DstT0*

SrcT0	
?
>Adam/Adam/update_recurrent/recurrent_kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
/Adam/Adam/update_recurrent/recurrent_kernel/PowPow>Adam/Adam/update_recurrent/recurrent_kernel/Pow/ReadVariableOp0Adam/Adam/update_recurrent/recurrent_kernel/Cast*
T0*
_output_shapes
: 
?
@Adam/Adam/update_recurrent/recurrent_kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
1Adam/Adam/update_recurrent/recurrent_kernel/Pow_1Pow@Adam/Adam/update_recurrent/recurrent_kernel/Pow_1/ReadVariableOp0Adam/Adam/update_recurrent/recurrent_kernel/Cast*
_output_shapes
: *
T0
?
LAdam/Adam/update_recurrent/recurrent_kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
NAdam/Adam/update_recurrent/recurrent_kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
NAdam/Adam/update_recurrent/recurrent_kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
=Adam/Adam/update_recurrent/recurrent_kernel/ResourceApplyAdamResourceApplyAdamrecurrent/recurrent_kernel!Adam/recurrent/recurrent_kernel/m!Adam/recurrent/recurrent_kernel/v/Adam/Adam/update_recurrent/recurrent_kernel/Pow1Adam/Adam/update_recurrent/recurrent_kernel/Pow_1LAdam/Adam/update_recurrent/recurrent_kernel/ResourceApplyAdam/ReadVariableOpNAdam/Adam/update_recurrent/recurrent_kernel/ResourceApplyAdam/ReadVariableOp_1NAdam/Adam/update_recurrent/recurrent_kernel/ResourceApplyAdam/ReadVariableOp_21Adam/Adam/update_recurrent/recurrent_kernel/ConstAdam/clip_by_norm_7*
use_locking(*
T0
j
%Adam/Adam/update_recurrent/bias/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???3
k
.Adam/Adam/update_recurrent/bias/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
g
%Adam/Adam/update_recurrent/bias/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
#Adam/Adam/update_recurrent/bias/addAdd.Adam/Adam/update_recurrent/bias/ReadVariableOp%Adam/Adam/update_recurrent/bias/add/y*
T0	*
_output_shapes
: 
?
$Adam/Adam/update_recurrent/bias/CastCast#Adam/Adam/update_recurrent/bias/add*
_output_shapes
: *

SrcT0	*

DstT0
v
2Adam/Adam/update_recurrent/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
#Adam/Adam/update_recurrent/bias/PowPow2Adam/Adam/update_recurrent/bias/Pow/ReadVariableOp$Adam/Adam/update_recurrent/bias/Cast*
_output_shapes
: *
T0
x
4Adam/Adam/update_recurrent/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
%Adam/Adam/update_recurrent/bias/Pow_1Pow4Adam/Adam/update_recurrent/bias/Pow_1/ReadVariableOp$Adam/Adam/update_recurrent/bias/Cast*
T0*
_output_shapes
: 
?
@Adam/Adam/update_recurrent/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
BAdam/Adam/update_recurrent/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
BAdam/Adam/update_recurrent/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
1Adam/Adam/update_recurrent/bias/ResourceApplyAdamResourceApplyAdamrecurrent/biasAdam/recurrent/bias/mAdam/recurrent/bias/v#Adam/Adam/update_recurrent/bias/Pow%Adam/Adam/update_recurrent/bias/Pow_1@Adam/Adam/update_recurrent/bias/ResourceApplyAdam/ReadVariableOpBAdam/Adam/update_recurrent/bias/ResourceApplyAdam/ReadVariableOp_1BAdam/Adam/update_recurrent/bias/ResourceApplyAdam/ReadVariableOp_2%Adam/Adam/update_recurrent/bias/ConstAdam/clip_by_norm_8*
use_locking(*
T0
i
$Adam/Adam/update_hidden/kernel/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *???3
j
-Adam/Adam/update_hidden/kernel/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
f
$Adam/Adam/update_hidden/kernel/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
"Adam/Adam/update_hidden/kernel/addAdd-Adam/Adam/update_hidden/kernel/ReadVariableOp$Adam/Adam/update_hidden/kernel/add/y*
T0	*
_output_shapes
: 

#Adam/Adam/update_hidden/kernel/CastCast"Adam/Adam/update_hidden/kernel/add*

SrcT0	*
_output_shapes
: *

DstT0
u
1Adam/Adam/update_hidden/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
"Adam/Adam/update_hidden/kernel/PowPow1Adam/Adam/update_hidden/kernel/Pow/ReadVariableOp#Adam/Adam/update_hidden/kernel/Cast*
T0*
_output_shapes
: 
w
3Adam/Adam/update_hidden/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
$Adam/Adam/update_hidden/kernel/Pow_1Pow3Adam/Adam/update_hidden/kernel/Pow_1/ReadVariableOp#Adam/Adam/update_hidden/kernel/Cast*
_output_shapes
: *
T0
?
?Adam/Adam/update_hidden/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
AAdam/Adam/update_hidden/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
AAdam/Adam/update_hidden/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
0Adam/Adam/update_hidden/kernel/ResourceApplyAdamResourceApplyAdamhidden/kernelAdam/hidden/kernel/mAdam/hidden/kernel/v"Adam/Adam/update_hidden/kernel/Pow$Adam/Adam/update_hidden/kernel/Pow_1?Adam/Adam/update_hidden/kernel/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_hidden/kernel/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_hidden/kernel/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_hidden/kernel/ConstAdam/clip_by_norm_9*
use_locking(*
T0
g
"Adam/Adam/update_hidden/bias/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???3
h
+Adam/Adam/update_hidden/bias/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
d
"Adam/Adam/update_hidden/bias/add/yConst*
value	B	 R*
_output_shapes
: *
dtype0	
?
 Adam/Adam/update_hidden/bias/addAdd+Adam/Adam/update_hidden/bias/ReadVariableOp"Adam/Adam/update_hidden/bias/add/y*
_output_shapes
: *
T0	
{
!Adam/Adam/update_hidden/bias/CastCast Adam/Adam/update_hidden/bias/add*

SrcT0	*

DstT0*
_output_shapes
: 
s
/Adam/Adam/update_hidden/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
 Adam/Adam/update_hidden/bias/PowPow/Adam/Adam/update_hidden/bias/Pow/ReadVariableOp!Adam/Adam/update_hidden/bias/Cast*
T0*
_output_shapes
: 
u
1Adam/Adam/update_hidden/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
"Adam/Adam/update_hidden/bias/Pow_1Pow1Adam/Adam/update_hidden/bias/Pow_1/ReadVariableOp!Adam/Adam/update_hidden/bias/Cast*
_output_shapes
: *
T0
?
=Adam/Adam/update_hidden/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
?Adam/Adam/update_hidden/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
?Adam/Adam/update_hidden/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
.Adam/Adam/update_hidden/bias/ResourceApplyAdamResourceApplyAdamhidden/biasAdam/hidden/bias/mAdam/hidden/bias/v Adam/Adam/update_hidden/bias/Pow"Adam/Adam/update_hidden/bias/Pow_1=Adam/Adam/update_hidden/bias/ResourceApplyAdam/ReadVariableOp?Adam/Adam/update_hidden/bias/ResourceApplyAdam/ReadVariableOp_1?Adam/Adam/update_hidden/bias/ResourceApplyAdam/ReadVariableOp_2"Adam/Adam/update_hidden/bias/ConstAdam/clip_by_norm_10*
T0*
use_locking(
i
$Adam/Adam/update_output/kernel/ConstConst*
dtype0*
valueB
 *???3*
_output_shapes
: 
j
-Adam/Adam/update_output/kernel/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
f
$Adam/Adam/update_output/kernel/add/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
?
"Adam/Adam/update_output/kernel/addAdd-Adam/Adam/update_output/kernel/ReadVariableOp$Adam/Adam/update_output/kernel/add/y*
T0	*
_output_shapes
: 

#Adam/Adam/update_output/kernel/CastCast"Adam/Adam/update_output/kernel/add*
_output_shapes
: *

DstT0*

SrcT0	
u
1Adam/Adam/update_output/kernel/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
?
"Adam/Adam/update_output/kernel/PowPow1Adam/Adam/update_output/kernel/Pow/ReadVariableOp#Adam/Adam/update_output/kernel/Cast*
T0*
_output_shapes
: 
w
3Adam/Adam/update_output/kernel/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
$Adam/Adam/update_output/kernel/Pow_1Pow3Adam/Adam/update_output/kernel/Pow_1/ReadVariableOp#Adam/Adam/update_output/kernel/Cast*
T0*
_output_shapes
: 
?
?Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
?
AAdam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
AAdam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
0Adam/Adam/update_output/kernel/ResourceApplyAdamResourceApplyAdamoutput/kernelAdam/output/kernel/mAdam/output/kernel/v"Adam/Adam/update_output/kernel/Pow$Adam/Adam/update_output/kernel/Pow_1?Adam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOpAAdam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_1AAdam/Adam/update_output/kernel/ResourceApplyAdam/ReadVariableOp_2$Adam/Adam/update_output/kernel/ConstAdam/clip_by_norm_11*
T0*
use_locking(
g
"Adam/Adam/update_output/bias/ConstConst*
_output_shapes
: *
valueB
 *???3*
dtype0
h
+Adam/Adam/update_output/bias/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
d
"Adam/Adam/update_output/bias/add/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 
?
 Adam/Adam/update_output/bias/addAdd+Adam/Adam/update_output/bias/ReadVariableOp"Adam/Adam/update_output/bias/add/y*
T0	*
_output_shapes
: 
{
!Adam/Adam/update_output/bias/CastCast Adam/Adam/update_output/bias/add*
_output_shapes
: *

SrcT0	*

DstT0
s
/Adam/Adam/update_output/bias/Pow/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
 Adam/Adam/update_output/bias/PowPow/Adam/Adam/update_output/bias/Pow/ReadVariableOp!Adam/Adam/update_output/bias/Cast*
_output_shapes
: *
T0
u
1Adam/Adam/update_output/bias/Pow_1/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
?
"Adam/Adam/update_output/bias/Pow_1Pow1Adam/Adam/update_output/bias/Pow_1/ReadVariableOp!Adam/Adam/update_output/bias/Cast*
T0*
_output_shapes
: 
?
=Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
?Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
?
?Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
?
.Adam/Adam/update_output/bias/ResourceApplyAdamResourceApplyAdamoutput/biasAdam/output/bias/mAdam/output/bias/v Adam/Adam/update_output/bias/Pow"Adam/Adam/update_output/bias/Pow_1=Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp?Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_1?Adam/Adam/update_output/bias/ResourceApplyAdam/ReadVariableOp_2"Adam/Adam/update_output/bias/ConstAdam/clip_by_norm_12*
T0*
use_locking(
?
Adam/Adam/ConstConst.^Adam/Adam/update_conv2/bias/ResourceApplyAdam0^Adam/Adam/update_conv2/kernel/ResourceApplyAdam.^Adam/Adam/update_conv3/bias/ResourceApplyAdam0^Adam/Adam/update_conv3/kernel/ResourceApplyAdam4^Adam/Adam/update_convolution/bias/ResourceApplyAdam6^Adam/Adam/update_convolution/kernel/ResourceApplyAdam/^Adam/Adam/update_hidden/bias/ResourceApplyAdam1^Adam/Adam/update_hidden/kernel/ResourceApplyAdam/^Adam/Adam/update_output/bias/ResourceApplyAdam1^Adam/Adam/update_output/kernel/ResourceApplyAdam2^Adam/Adam/update_recurrent/bias/ResourceApplyAdam4^Adam/Adam/update_recurrent/kernel/ResourceApplyAdam>^Adam/Adam/update_recurrent/recurrent_kernel/ResourceApplyAdam*
_output_shapes
: *
dtype0	*
value	B	 R
X
Adam/Adam/AssignAddVariableOpAssignAddVariableOpiterAdam/Adam/Const*
dtype0	
?
Adam/Adam/ReadVariableOpReadVariableOpiter^Adam/Adam/AssignAddVariableOp.^Adam/Adam/update_conv2/bias/ResourceApplyAdam0^Adam/Adam/update_conv2/kernel/ResourceApplyAdam.^Adam/Adam/update_conv3/bias/ResourceApplyAdam0^Adam/Adam/update_conv3/kernel/ResourceApplyAdam4^Adam/Adam/update_convolution/bias/ResourceApplyAdam6^Adam/Adam/update_convolution/kernel/ResourceApplyAdam/^Adam/Adam/update_hidden/bias/ResourceApplyAdam1^Adam/Adam/update_hidden/kernel/ResourceApplyAdam/^Adam/Adam/update_output/bias/ResourceApplyAdam1^Adam/Adam/update_output/kernel/ResourceApplyAdam2^Adam/Adam/update_recurrent/bias/ResourceApplyAdam4^Adam/Adam/update_recurrent/kernel/ResourceApplyAdam>^Adam/Adam/update_recurrent/recurrent_kernel/ResourceApplyAdam*
_output_shapes
: *
dtype0	
H
training_1/group_depsNoOp^Adam/Adam/AssignAddVariableOp	^loss/mul
Z
ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB Bmodel
?
RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*g
value^B\BRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
Q
AssignVariableOpAssignVariableOpAdam/hidden/kernel/mIdentity*
dtype0
?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*g
value^B\BRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
?
RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
U
AssignVariableOp_1AssignVariableOpAdam/hidden/kernel/v
Identity_1*
dtype0
?
RestoreV2_2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*e
value\BZBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
_output_shapes
:*
T0
S
AssignVariableOp_2AssignVariableOpAdam/hidden/bias/m
Identity_2*
dtype0
?
RestoreV2_3/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*e
value\BZBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
S
AssignVariableOp_3AssignVariableOpAdam/hidden/bias/v
Identity_3*
dtype0
?
RestoreV2_4/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_4	RestoreV2ConstRestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
U
AssignVariableOp_4AssignVariableOpAdam/output/kernel/m
Identity_4*
dtype0
?
RestoreV2_5/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
RestoreV2_5	RestoreV2ConstRestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_5IdentityRestoreV2_5*
_output_shapes
:*
T0
U
AssignVariableOp_5AssignVariableOpAdam/output/kernel/v
Identity_5*
dtype0
?
RestoreV2_6/tensor_namesConst"/device:CPU:0*
_output_shapes
:*e
value\BZBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_6	RestoreV2ConstRestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_6IdentityRestoreV2_6*
T0*
_output_shapes
:
S
AssignVariableOp_6AssignVariableOpAdam/output/bias/m
Identity_6*
dtype0
?
RestoreV2_7/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_7	RestoreV2ConstRestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_7IdentityRestoreV2_7*
T0*
_output_shapes
:
S
AssignVariableOp_7AssignVariableOpAdam/output/bias/v
Identity_7*
dtype0
?
RestoreV2_8/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*m
valuedBbBXlayer_with_weights-0/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
RestoreV2_8	RestoreV2ConstRestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_8IdentityRestoreV2_8*
T0*
_output_shapes
:
Z
AssignVariableOp_8AssignVariableOpAdam/convolution/kernel/m
Identity_8*
dtype0
?
RestoreV2_9/tensor_namesConst"/device:CPU:0*
dtype0*m
valuedBbBXlayer_with_weights-0/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_9	RestoreV2ConstRestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_9IdentityRestoreV2_9*
_output_shapes
:*
T0
Z
AssignVariableOp_9AssignVariableOpAdam/convolution/kernel/v
Identity_9*
dtype0
?
RestoreV2_10/tensor_namesConst"/device:CPU:0*
dtype0*k
valuebB`BVlayer_with_weights-0/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_10	RestoreV2ConstRestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_10IdentityRestoreV2_10*
T0*
_output_shapes
:
Z
AssignVariableOp_10AssignVariableOpAdam/convolution/bias/mIdentity_10*
dtype0
?
RestoreV2_11/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*k
valuebB`BVlayer_with_weights-0/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_11	RestoreV2ConstRestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_11IdentityRestoreV2_11*
T0*
_output_shapes
:
Z
AssignVariableOp_11AssignVariableOpAdam/convolution/bias/vIdentity_11*
dtype0
?
RestoreV2_12/tensor_namesConst"/device:CPU:0*m
valuedBbBXlayer_with_weights-1/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_12	RestoreV2ConstRestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_12IdentityRestoreV2_12*
T0*
_output_shapes
:
V
AssignVariableOp_12AssignVariableOpAdam/conv2/kernel/mIdentity_12*
dtype0
?
RestoreV2_13/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*m
valuedBbBXlayer_with_weights-1/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_13/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_13	RestoreV2ConstRestoreV2_13/tensor_namesRestoreV2_13/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_13IdentityRestoreV2_13*
_output_shapes
:*
T0
V
AssignVariableOp_13AssignVariableOpAdam/conv2/kernel/vIdentity_13*
dtype0
?
RestoreV2_14/tensor_namesConst"/device:CPU:0*k
valuebB`BVlayer_with_weights-1/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_14/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_14	RestoreV2ConstRestoreV2_14/tensor_namesRestoreV2_14/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_14IdentityRestoreV2_14*
T0*
_output_shapes
:
T
AssignVariableOp_14AssignVariableOpAdam/conv2/bias/mIdentity_14*
dtype0
?
RestoreV2_15/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*k
valuebB`BVlayer_with_weights-1/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_15/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
RestoreV2_15	RestoreV2ConstRestoreV2_15/tensor_namesRestoreV2_15/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_15IdentityRestoreV2_15*
_output_shapes
:*
T0
T
AssignVariableOp_15AssignVariableOpAdam/conv2/bias/vIdentity_15*
dtype0
?
RestoreV2_16/tensor_namesConst"/device:CPU:0*m
valuedBbBXlayer_with_weights-2/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_16/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_16	RestoreV2ConstRestoreV2_16/tensor_namesRestoreV2_16/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_16IdentityRestoreV2_16*
_output_shapes
:*
T0
V
AssignVariableOp_16AssignVariableOpAdam/conv3/kernel/mIdentity_16*
dtype0
?
RestoreV2_17/tensor_namesConst"/device:CPU:0*m
valuedBbBXlayer_with_weights-2/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_17/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
?
RestoreV2_17	RestoreV2ConstRestoreV2_17/tensor_namesRestoreV2_17/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_17IdentityRestoreV2_17*
_output_shapes
:*
T0
V
AssignVariableOp_17AssignVariableOpAdam/conv3/kernel/vIdentity_17*
dtype0
?
RestoreV2_18/tensor_namesConst"/device:CPU:0*
_output_shapes
:*k
valuebB`BVlayer_with_weights-2/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_18/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_18	RestoreV2ConstRestoreV2_18/tensor_namesRestoreV2_18/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_18IdentityRestoreV2_18*
_output_shapes
:*
T0
T
AssignVariableOp_18AssignVariableOpAdam/conv3/bias/mIdentity_18*
dtype0
?
RestoreV2_19/tensor_namesConst"/device:CPU:0*
dtype0*k
valuebB`BVlayer_with_weights-2/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
u
RestoreV2_19/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_19	RestoreV2ConstRestoreV2_19/tensor_namesRestoreV2_19/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_19IdentityRestoreV2_19*
_output_shapes
:*
T0
T
AssignVariableOp_19AssignVariableOpAdam/conv3/bias/vIdentity_19*
dtype0
?
RestoreV2_20/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*l
valuecBaBWlayer_with_weights-3/cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_20/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_20	RestoreV2ConstRestoreV2_20/tensor_namesRestoreV2_20/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_20IdentityRestoreV2_20*
T0*
_output_shapes
:
Z
AssignVariableOp_20AssignVariableOpAdam/recurrent/kernel/mIdentity_20*
dtype0
?
RestoreV2_21/tensor_namesConst"/device:CPU:0*l
valuecBaBWlayer_with_weights-3/cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
u
RestoreV2_21/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_21	RestoreV2ConstRestoreV2_21/tensor_namesRestoreV2_21/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_21IdentityRestoreV2_21*
_output_shapes
:*
T0
Z
AssignVariableOp_21AssignVariableOpAdam/recurrent/kernel/vIdentity_21*
dtype0
?
RestoreV2_22/tensor_namesConst"/device:CPU:0*v
valuemBkBalayer_with_weights-3/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
u
RestoreV2_22/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_22	RestoreV2ConstRestoreV2_22/tensor_namesRestoreV2_22/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_22IdentityRestoreV2_22*
_output_shapes
:*
T0
d
AssignVariableOp_22AssignVariableOp!Adam/recurrent/recurrent_kernel/mIdentity_22*
dtype0
?
RestoreV2_23/tensor_namesConst"/device:CPU:0*v
valuemBkBalayer_with_weights-3/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
u
RestoreV2_23/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
RestoreV2_23	RestoreV2ConstRestoreV2_23/tensor_namesRestoreV2_23/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_23IdentityRestoreV2_23*
T0*
_output_shapes
:
d
AssignVariableOp_23AssignVariableOp!Adam/recurrent/recurrent_kernel/vIdentity_23*
dtype0
?
RestoreV2_24/tensor_namesConst"/device:CPU:0*j
valueaB_BUlayer_with_weights-3/cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
u
RestoreV2_24/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_24	RestoreV2ConstRestoreV2_24/tensor_namesRestoreV2_24/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_24IdentityRestoreV2_24*
_output_shapes
:*
T0
X
AssignVariableOp_24AssignVariableOpAdam/recurrent/bias/mIdentity_24*
dtype0
?
RestoreV2_25/tensor_namesConst"/device:CPU:0*j
valueaB_BUlayer_with_weights-3/cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_25/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_25	RestoreV2ConstRestoreV2_25/tensor_namesRestoreV2_25/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_25IdentityRestoreV2_25*
T0*
_output_shapes
:
X
AssignVariableOp_25AssignVariableOpAdam/recurrent/bias/vIdentity_25*
dtype0
?
RestoreV2_26/tensor_namesConst"/device:CPU:0*
_output_shapes
:*K
valueBB@B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_26/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
RestoreV2_26	RestoreV2ConstRestoreV2_26/tensor_namesRestoreV2_26/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_26IdentityRestoreV2_26*
T0*
_output_shapes
:
P
AssignVariableOp_26AssignVariableOphidden/kernelIdentity_26*
dtype0
?
RestoreV2_27/tensor_namesConst"/device:CPU:0*
dtype0*I
value@B>B4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
u
RestoreV2_27/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_27	RestoreV2ConstRestoreV2_27/tensor_namesRestoreV2_27/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_27IdentityRestoreV2_27*
_output_shapes
:*
T0
N
AssignVariableOp_27AssignVariableOphidden/biasIdentity_27*
dtype0
?
RestoreV2_28/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*K
valueBB@B6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_28/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_28	RestoreV2ConstRestoreV2_28/tensor_namesRestoreV2_28/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_28IdentityRestoreV2_28*
_output_shapes
:*
T0
P
AssignVariableOp_28AssignVariableOpoutput/kernelIdentity_28*
dtype0
?
RestoreV2_29/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_29/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_29	RestoreV2ConstRestoreV2_29/tensor_namesRestoreV2_29/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_29IdentityRestoreV2_29*
T0*
_output_shapes
:
N
AssignVariableOp_29AssignVariableOpoutput/biasIdentity_29*
dtype0
?
RestoreV2_30/tensor_namesConst"/device:CPU:0*
dtype0*>
value5B3B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
u
RestoreV2_30/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_30	RestoreV2ConstRestoreV2_30/tensor_namesRestoreV2_30/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
H
Identity_30IdentityRestoreV2_30*
T0	*
_output_shapes
:
G
AssignVariableOp_30AssignVariableOpiterIdentity_30*
dtype0	
?
RestoreV2_31/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*@
value7B5B+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_31/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_31	RestoreV2ConstRestoreV2_31/tensor_namesRestoreV2_31/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_31IdentityRestoreV2_31*
_output_shapes
:*
T0
N
AssignVariableOp_31AssignVariableOpAdam/beta_1Identity_31*
dtype0
?
RestoreV2_32/tensor_namesConst"/device:CPU:0*
dtype0*@
value7B5B+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
u
RestoreV2_32/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
?
RestoreV2_32	RestoreV2ConstRestoreV2_32/tensor_namesRestoreV2_32/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_32IdentityRestoreV2_32*
_output_shapes
:*
T0
N
AssignVariableOp_32AssignVariableOpAdam/beta_2Identity_32*
dtype0
?
RestoreV2_33/tensor_namesConst"/device:CPU:0*
_output_shapes
:*?
value6B4B*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_33/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_33	RestoreV2ConstRestoreV2_33/tensor_namesRestoreV2_33/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_33IdentityRestoreV2_33*
T0*
_output_shapes
:
M
AssignVariableOp_33AssignVariableOp
Adam/decayIdentity_33*
dtype0
?
RestoreV2_34/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_34/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_34	RestoreV2ConstRestoreV2_34/tensor_namesRestoreV2_34/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_34IdentityRestoreV2_34*
_output_shapes
:*
T0
U
AssignVariableOp_34AssignVariableOpAdam/learning_rateIdentity_34*
dtype0
?
RestoreV2_35/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*Q
valueHBFB<layer_with_weights-0/layer/kernel/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_35/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
RestoreV2_35	RestoreV2ConstRestoreV2_35/tensor_namesRestoreV2_35/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_35IdentityRestoreV2_35*
T0*
_output_shapes
:
U
AssignVariableOp_35AssignVariableOpconvolution/kernelIdentity_35*
dtype0
?
RestoreV2_36/tensor_namesConst"/device:CPU:0*
_output_shapes
:*O
valueFBDB:layer_with_weights-0/layer/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_36/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
RestoreV2_36	RestoreV2ConstRestoreV2_36/tensor_namesRestoreV2_36/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_36IdentityRestoreV2_36*
_output_shapes
:*
T0
S
AssignVariableOp_36AssignVariableOpconvolution/biasIdentity_36*
dtype0
?
RestoreV2_37/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB<layer_with_weights-1/layer/kernel/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_37/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_37	RestoreV2ConstRestoreV2_37/tensor_namesRestoreV2_37/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_37IdentityRestoreV2_37*
T0*
_output_shapes
:
O
AssignVariableOp_37AssignVariableOpconv2/kernelIdentity_37*
dtype0
?
RestoreV2_38/tensor_namesConst"/device:CPU:0*O
valueFBDB:layer_with_weights-1/layer/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_38/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_38	RestoreV2ConstRestoreV2_38/tensor_namesRestoreV2_38/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_38IdentityRestoreV2_38*
_output_shapes
:*
T0
M
AssignVariableOp_38AssignVariableOp
conv2/biasIdentity_38*
dtype0
?
RestoreV2_39/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-2/layer/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_39/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
RestoreV2_39	RestoreV2ConstRestoreV2_39/tensor_namesRestoreV2_39/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_39IdentityRestoreV2_39*
T0*
_output_shapes
:
O
AssignVariableOp_39AssignVariableOpconv3/kernelIdentity_39*
dtype0
?
RestoreV2_40/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*O
valueFBDB:layer_with_weights-2/layer/bias/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_40/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_40	RestoreV2ConstRestoreV2_40/tensor_namesRestoreV2_40/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_40IdentityRestoreV2_40*
T0*
_output_shapes
:
M
AssignVariableOp_40AssignVariableOp
conv3/biasIdentity_40*
dtype0
?
RestoreV2_41/tensor_namesConst"/device:CPU:0*P
valueGBEB;layer_with_weights-3/cell/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
u
RestoreV2_41/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_41	RestoreV2ConstRestoreV2_41/tensor_namesRestoreV2_41/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_41IdentityRestoreV2_41*
T0*
_output_shapes
:
S
AssignVariableOp_41AssignVariableOprecurrent/kernelIdentity_41*
dtype0
?
RestoreV2_42/tensor_namesConst"/device:CPU:0*Z
valueQBOBElayer_with_weights-3/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
u
RestoreV2_42/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
RestoreV2_42	RestoreV2ConstRestoreV2_42/tensor_namesRestoreV2_42/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_42IdentityRestoreV2_42*
T0*
_output_shapes
:
]
AssignVariableOp_42AssignVariableOprecurrent/recurrent_kernelIdentity_42*
dtype0
?
RestoreV2_43/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*N
valueEBCB9layer_with_weights-3/cell/bias/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_43/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
RestoreV2_43	RestoreV2ConstRestoreV2_43/tensor_namesRestoreV2_43/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_43IdentityRestoreV2_43*
_output_shapes
:*
T0
Q
AssignVariableOp_43AssignVariableOprecurrent/biasIdentity_43*
dtype0
R
VarIsInitializedOpVarIsInitializedOpconvolution/bias*
_output_shapes
: 
V
VarIsInitializedOp_1VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
e
VarIsInitializedOp_2VarIsInitializedOp!Adam/recurrent/recurrent_kernel/v*
_output_shapes
: 
V
VarIsInitializedOp_3VarIsInitializedOpconvolution/kernel*
_output_shapes
: 
V
VarIsInitializedOp_4VarIsInitializedOpAdam/hidden/bias/v*
_output_shapes
: 
N
VarIsInitializedOp_5VarIsInitializedOp
conv3/bias*
_output_shapes
: 
R
VarIsInitializedOp_6VarIsInitializedOprecurrent/bias*
_output_shapes
: 
N
VarIsInitializedOp_7VarIsInitializedOp
conv2/bias*
_output_shapes
: 
V
VarIsInitializedOp_8VarIsInitializedOpAdam/output/bias/m*
_output_shapes
: 
X
VarIsInitializedOp_9VarIsInitializedOpAdam/hidden/kernel/v*
_output_shapes
: 
P
VarIsInitializedOp_10VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
Y
VarIsInitializedOp_11VarIsInitializedOpAdam/hidden/kernel/m*
_output_shapes
: 
^
VarIsInitializedOp_12VarIsInitializedOpAdam/convolution/kernel/v*
_output_shapes
: 
\
VarIsInitializedOp_13VarIsInitializedOpAdam/recurrent/kernel/v*
_output_shapes
: 
^
VarIsInitializedOp_14VarIsInitializedOpAdam/convolution/kernel/m*
_output_shapes
: 
W
VarIsInitializedOp_15VarIsInitializedOpAdam/hidden/bias/m*
_output_shapes
: 
U
VarIsInitializedOp_16VarIsInitializedOprecurrent/kernel*
_output_shapes
: 
V
VarIsInitializedOp_17VarIsInitializedOpAdam/conv2/bias/m*
_output_shapes
: 
X
VarIsInitializedOp_18VarIsInitializedOpAdam/conv3/kernel/m*
_output_shapes
: 
Y
VarIsInitializedOp_19VarIsInitializedOpAdam/output/kernel/m*
_output_shapes
: 
X
VarIsInitializedOp_20VarIsInitializedOpAdam/conv3/kernel/v*
_output_shapes
: 
V
VarIsInitializedOp_21VarIsInitializedOpAdam/conv3/bias/v*
_output_shapes
: 
R
VarIsInitializedOp_22VarIsInitializedOphidden/kernel*
_output_shapes
: 
R
VarIsInitializedOp_23VarIsInitializedOpoutput/kernel*
_output_shapes
: 
V
VarIsInitializedOp_24VarIsInitializedOpAdam/conv2/bias/v*
_output_shapes
: 
Z
VarIsInitializedOp_25VarIsInitializedOpAdam/recurrent/bias/v*
_output_shapes
: 
J
VarIsInitializedOp_26VarIsInitializedOpcount*
_output_shapes
: 
\
VarIsInitializedOp_27VarIsInitializedOpAdam/convolution/bias/m*
_output_shapes
: 
\
VarIsInitializedOp_28VarIsInitializedOpAdam/convolution/bias/v*
_output_shapes
: 
_
VarIsInitializedOp_29VarIsInitializedOprecurrent/recurrent_kernel*
_output_shapes
: 
X
VarIsInitializedOp_30VarIsInitializedOpAdam/conv2/kernel/m*
_output_shapes
: 
W
VarIsInitializedOp_31VarIsInitializedOpAdam/output/bias/v*
_output_shapes
: 
P
VarIsInitializedOp_32VarIsInitializedOphidden/bias*
_output_shapes
: 
L
VarIsInitializedOp_33VarIsInitializedOpcount_1*
_output_shapes
: 
\
VarIsInitializedOp_34VarIsInitializedOpAdam/recurrent/kernel/m*
_output_shapes
: 
O
VarIsInitializedOp_35VarIsInitializedOp
Adam/decay*
_output_shapes
: 
Z
VarIsInitializedOp_36VarIsInitializedOpAdam/recurrent/bias/m*
_output_shapes
: 
Y
VarIsInitializedOp_37VarIsInitializedOpAdam/output/kernel/v*
_output_shapes
: 
Q
VarIsInitializedOp_38VarIsInitializedOpconv3/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_39VarIsInitializedOpconv2/kernel*
_output_shapes
: 
P
VarIsInitializedOp_40VarIsInitializedOpoutput/bias*
_output_shapes
: 
V
VarIsInitializedOp_41VarIsInitializedOpAdam/conv3/bias/m*
_output_shapes
: 
L
VarIsInitializedOp_42VarIsInitializedOptotal_1*
_output_shapes
: 
P
VarIsInitializedOp_43VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
I
VarIsInitializedOp_44VarIsInitializedOpiter*
_output_shapes
: 
f
VarIsInitializedOp_45VarIsInitializedOp!Adam/recurrent/recurrent_kernel/m*
_output_shapes
: 
X
VarIsInitializedOp_46VarIsInitializedOpAdam/conv2/kernel/v*
_output_shapes
: 
J
VarIsInitializedOp_47VarIsInitializedOptotal*
_output_shapes
: 
?

initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/conv2/bias/m/Assign^Adam/conv2/bias/v/Assign^Adam/conv2/kernel/m/Assign^Adam/conv2/kernel/v/Assign^Adam/conv3/bias/m/Assign^Adam/conv3/bias/v/Assign^Adam/conv3/kernel/m/Assign^Adam/conv3/kernel/v/Assign^Adam/convolution/bias/m/Assign^Adam/convolution/bias/v/Assign!^Adam/convolution/kernel/m/Assign!^Adam/convolution/kernel/v/Assign^Adam/decay/Assign^Adam/hidden/bias/m/Assign^Adam/hidden/bias/v/Assign^Adam/hidden/kernel/m/Assign^Adam/hidden/kernel/v/Assign^Adam/learning_rate/Assign^Adam/output/bias/m/Assign^Adam/output/bias/v/Assign^Adam/output/kernel/m/Assign^Adam/output/kernel/v/Assign^Adam/recurrent/bias/m/Assign^Adam/recurrent/bias/v/Assign^Adam/recurrent/kernel/m/Assign^Adam/recurrent/kernel/v/Assign)^Adam/recurrent/recurrent_kernel/m/Assign)^Adam/recurrent/recurrent_kernel/v/Assign^conv2/bias/Assign^conv2/kernel/Assign^conv3/bias/Assign^conv3/kernel/Assign^convolution/bias/Assign^convolution/kernel/Assign^count/Assign^count_1/Assign^hidden/bias/Assign^hidden/kernel/Assign^iter/Assign^output/bias/Assign^output/kernel/Assign^recurrent/bias/Assign^recurrent/kernel/Assign"^recurrent/recurrent_kernel/Assign^total/Assign^total_1/Assign
W
Const_1Const"/device:CPU:0*
valueB B *
_output_shapes
: *
dtype0
W
Const_2Const"/device:CPU:0*
valueB B *
_output_shapes
: *
dtype0
?
StringJoin/inputs_1Const"/device:CPU:0*
dtype0*<
value3B1 B+_temp_1e163a560a264368b51bce69ab90076b/part*
_output_shapes
: 
f

StringJoin
StringJoinConst_2StringJoin/inputs_1"/device:CPU:0*
_output_shapes
: *
N
L

num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
f
ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
?
SaveV2/tensor_namesConst"/device:CPU:0*?
value?B?,B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-0/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-3/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/cell/bias/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-3/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-3/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:,*
dtype0
?
SaveV2/shape_and_slicesConst"/device:CPU:0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:,
?
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices!hidden/kernel/Read/ReadVariableOphidden/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpiter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp&convolution/kernel/Read/ReadVariableOp$convolution/bias/Read/ReadVariableOp conv2/kernel/Read/ReadVariableOpconv2/bias/Read/ReadVariableOp conv3/kernel/Read/ReadVariableOpconv3/bias/Read/ReadVariableOp$recurrent/kernel/Read/ReadVariableOp.recurrent/recurrent_kernel/Read/ReadVariableOp"recurrent/bias/Read/ReadVariableOp(Adam/hidden/kernel/m/Read/ReadVariableOp&Adam/hidden/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp-Adam/convolution/kernel/m/Read/ReadVariableOp+Adam/convolution/bias/m/Read/ReadVariableOp'Adam/conv2/kernel/m/Read/ReadVariableOp%Adam/conv2/bias/m/Read/ReadVariableOp'Adam/conv3/kernel/m/Read/ReadVariableOp%Adam/conv3/bias/m/Read/ReadVariableOp+Adam/recurrent/kernel/m/Read/ReadVariableOp5Adam/recurrent/recurrent_kernel/m/Read/ReadVariableOp)Adam/recurrent/bias/m/Read/ReadVariableOp(Adam/hidden/kernel/v/Read/ReadVariableOp&Adam/hidden/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOp-Adam/convolution/kernel/v/Read/ReadVariableOp+Adam/convolution/bias/v/Read/ReadVariableOp'Adam/conv2/kernel/v/Read/ReadVariableOp%Adam/conv2/bias/v/Read/ReadVariableOp'Adam/conv3/kernel/v/Read/ReadVariableOp%Adam/conv3/bias/v/Read/ReadVariableOp+Adam/recurrent/kernel/v/Read/ReadVariableOp5Adam/recurrent/recurrent_kernel/v/Read/ReadVariableOp)Adam/recurrent/bias/v/Read/ReadVariableOp"/device:CPU:0*:
dtypes0
.2,	
h
ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
value	B :*
_output_shapes
: 
|
ShardedFilename_1ShardedFilename
StringJoinShardedFilename_1/shard
num_shards"/device:CPU:0*
_output_shapes
: 
?
SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:
q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
SaveV2_1SaveV2ShardedFilename_1SaveV2_1/tensor_namesSaveV2_1/shape_and_slicesConst_1"/device:CPU:0*
dtypes
2
?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilenameShardedFilename_1^SaveV2	^SaveV2_1"/device:CPU:0*
_output_shapes
:*
T0*
N
h
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixesConst_2"/device:CPU:0
e
Identity_44IdentityConst_2^MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0
W
div_no_nan/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
_output_shapes
: *
dtype0
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
D
Identity_45Identity
div_no_nan*
_output_shapes
: *
T0
[
div_no_nan_1/ReadVariableOpReadVariableOptotal_1*
dtype0*
_output_shapes
: 
]
div_no_nan_1/ReadVariableOp_1ReadVariableOpcount_1*
dtype0*
_output_shapes
: 
u
div_no_nan_1DivNoNandiv_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp_1*
_output_shapes
: *
T0
F
Identity_46Identitydiv_no_nan_1*
T0*
_output_shapes
: 
?
metric_op_wrapperConst0^metrics/mae_current_cycle/AssignAddVariableOp_1*
_output_shapes
: *
valueB *
dtype0
?
metric_op_wrapper_1Const3^metrics/mae_remaining_cycles/AssignAddVariableOp_1*
valueB *
_output_shapes
: *
dtype0
Y
save/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*
_output_shapes
:,*?
value?B?,B:layer_with_weights-0/layer/bias/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/layer/bias/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/layer/bias/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/cell/bias/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-3/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-3/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-3/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
?
save/SaveV2/shape_and_slicesConst*
_output_shapes
:,*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$convolution/bias/Read/ReadVariableOp+Adam/convolution/bias/m/Read/ReadVariableOp+Adam/convolution/bias/v/Read/ReadVariableOp&convolution/kernel/Read/ReadVariableOp-Adam/convolution/kernel/m/Read/ReadVariableOp-Adam/convolution/kernel/v/Read/ReadVariableOpconv2/bias/Read/ReadVariableOp%Adam/conv2/bias/m/Read/ReadVariableOp%Adam/conv2/bias/v/Read/ReadVariableOp conv2/kernel/Read/ReadVariableOp'Adam/conv2/kernel/m/Read/ReadVariableOp'Adam/conv2/kernel/v/Read/ReadVariableOpconv3/bias/Read/ReadVariableOp%Adam/conv3/bias/m/Read/ReadVariableOp%Adam/conv3/bias/v/Read/ReadVariableOp conv3/kernel/Read/ReadVariableOp'Adam/conv3/kernel/m/Read/ReadVariableOp'Adam/conv3/kernel/v/Read/ReadVariableOp"recurrent/bias/Read/ReadVariableOp)Adam/recurrent/bias/m/Read/ReadVariableOp)Adam/recurrent/bias/v/Read/ReadVariableOp$recurrent/kernel/Read/ReadVariableOp+Adam/recurrent/kernel/m/Read/ReadVariableOp+Adam/recurrent/kernel/v/Read/ReadVariableOp.recurrent/recurrent_kernel/Read/ReadVariableOp5Adam/recurrent/recurrent_kernel/m/Read/ReadVariableOp5Adam/recurrent/recurrent_kernel/v/Read/ReadVariableOphidden/bias/Read/ReadVariableOp&Adam/hidden/bias/m/Read/ReadVariableOp&Adam/hidden/bias/v/Read/ReadVariableOp!hidden/kernel/Read/ReadVariableOp(Adam/hidden/kernel/m/Read/ReadVariableOp(Adam/hidden/kernel/v/Read/ReadVariableOpoutput/bias/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOp!output/kernel/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOpiter/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp*:
dtypes0
.2,	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B:layer_with_weights-0/layer/bias/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/layer/bias/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/layer/bias/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/cell/bias/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-3/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-3/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBalayer_with_weights-3/cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	
L
save/IdentityIdentitysave/RestoreV2*
_output_shapes
:*
T0
W
save/AssignVariableOpAssignVariableOpconvolution/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
_output_shapes
:*
T0
b
save/AssignVariableOp_1AssignVariableOpAdam/convolution/bias/msave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
b
save/AssignVariableOp_2AssignVariableOpAdam/convolution/bias/vsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
_output_shapes
:*
T0
]
save/AssignVariableOp_3AssignVariableOpconvolution/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
d
save/AssignVariableOp_4AssignVariableOpAdam/convolution/kernel/msave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
_output_shapes
:*
T0
d
save/AssignVariableOp_5AssignVariableOpAdam/convolution/kernel/vsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
_output_shapes
:*
T0
U
save/AssignVariableOp_6AssignVariableOp
conv2/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
\
save/AssignVariableOp_7AssignVariableOpAdam/conv2/bias/msave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
_output_shapes
:*
T0
\
save/AssignVariableOp_8AssignVariableOpAdam/conv2/bias/vsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
_output_shapes
:*
T0
W
save/AssignVariableOp_9AssignVariableOpconv2/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
`
save/AssignVariableOp_10AssignVariableOpAdam/conv2/kernel/msave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
_output_shapes
:*
T0
`
save/AssignVariableOp_11AssignVariableOpAdam/conv2/kernel/vsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
W
save/AssignVariableOp_12AssignVariableOp
conv3/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
_output_shapes
:*
T0
^
save/AssignVariableOp_13AssignVariableOpAdam/conv3/bias/msave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
^
save/AssignVariableOp_14AssignVariableOpAdam/conv3/bias/vsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
_output_shapes
:*
T0
Y
save/AssignVariableOp_15AssignVariableOpconv3/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
_output_shapes
:*
T0
`
save/AssignVariableOp_16AssignVariableOpAdam/conv3/kernel/msave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
`
save/AssignVariableOp_17AssignVariableOpAdam/conv3/kernel/vsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
_output_shapes
:*
T0
[
save/AssignVariableOp_18AssignVariableOprecurrent/biassave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
_output_shapes
:*
T0
b
save/AssignVariableOp_19AssignVariableOpAdam/recurrent/bias/msave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
T0*
_output_shapes
:
b
save/AssignVariableOp_20AssignVariableOpAdam/recurrent/bias/vsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
_output_shapes
:*
T0
]
save/AssignVariableOp_21AssignVariableOprecurrent/kernelsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:22*
T0*
_output_shapes
:
d
save/AssignVariableOp_22AssignVariableOpAdam/recurrent/kernel/msave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:23*
T0*
_output_shapes
:
d
save/AssignVariableOp_23AssignVariableOpAdam/recurrent/kernel/vsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:24*
T0*
_output_shapes
:
g
save/AssignVariableOp_24AssignVariableOprecurrent/recurrent_kernelsave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:25*
_output_shapes
:*
T0
n
save/AssignVariableOp_25AssignVariableOp!Adam/recurrent/recurrent_kernel/msave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:26*
T0*
_output_shapes
:
n
save/AssignVariableOp_26AssignVariableOp!Adam/recurrent/recurrent_kernel/vsave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:27*
T0*
_output_shapes
:
X
save/AssignVariableOp_27AssignVariableOphidden/biassave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:28*
T0*
_output_shapes
:
_
save/AssignVariableOp_28AssignVariableOpAdam/hidden/bias/msave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:29*
T0*
_output_shapes
:
_
save/AssignVariableOp_29AssignVariableOpAdam/hidden/bias/vsave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:30*
T0*
_output_shapes
:
Z
save/AssignVariableOp_30AssignVariableOphidden/kernelsave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:31*
T0*
_output_shapes
:
a
save/AssignVariableOp_31AssignVariableOpAdam/hidden/kernel/msave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:32*
_output_shapes
:*
T0
a
save/AssignVariableOp_32AssignVariableOpAdam/hidden/kernel/vsave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:33*
_output_shapes
:*
T0
X
save/AssignVariableOp_33AssignVariableOpoutput/biassave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:34*
T0*
_output_shapes
:
_
save/AssignVariableOp_34AssignVariableOpAdam/output/bias/msave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:35*
T0*
_output_shapes
:
_
save/AssignVariableOp_35AssignVariableOpAdam/output/bias/vsave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:36*
_output_shapes
:*
T0
Z
save/AssignVariableOp_36AssignVariableOpoutput/kernelsave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:37*
T0*
_output_shapes
:
a
save/AssignVariableOp_37AssignVariableOpAdam/output/kernel/msave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:38*
_output_shapes
:*
T0
a
save/AssignVariableOp_38AssignVariableOpAdam/output/kernel/vsave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:39*
T0*
_output_shapes
:
X
save/AssignVariableOp_39AssignVariableOpAdam/beta_1save/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:40*
T0*
_output_shapes
:
X
save/AssignVariableOp_40AssignVariableOpAdam/beta_2save/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:41*
T0*
_output_shapes
:
W
save/AssignVariableOp_41AssignVariableOp
Adam/decaysave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:42*
_output_shapes
:*
T0	
Q
save/AssignVariableOp_42AssignVariableOpitersave/Identity_42*
dtype0	
R
save/Identity_43Identitysave/RestoreV2:43*
T0*
_output_shapes
:
_
save/AssignVariableOp_43AssignVariableOpAdam/learning_ratesave/Identity_43*
dtype0
?	
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
N
init_1NoOp^count/Assign^count_1/Assign^total/Assign^total_1/Assign߄
?E
?
__inference_cudnn_lstm_20201

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4??
CudnnRNNV3?concat/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOp?zeros_like/ReadVariableOpG
transpose/permConst*
dtype0*!
valueB"          @
	transpose	Transposeinputstranspose/perm:output:0*
T08
ExpandDims/dimConst*
value	B : *
dtype0B

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0:
ExpandDims_1/dimConst*
value	B : *
dtype0F
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0/
ConstConst*
value	B :*
dtype09
split/split_dimConst*
value	B :*
dtype0;
split/ReadVariableOpReadVariableOpkernel*
dtype0`
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*
	num_split1
Const_1Const*
value	B :*
dtype0;
split_1/split_dimConst*
dtype0*
value	B :G
split_1/ReadVariableOpReadVariableOprecurrent_kernel*
dtype0f
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*
	num_split>
zeros_like/ReadVariableOpReadVariableOpbias*
dtype0<

zeros_likeConst*
dtype0*
valueB?*    V
concat/ReadVariableOpReadVariableOpbias^zeros_like/ReadVariableOp*
dtype05
concat/axisConst*
dtype0*
value	B : n
concatConcatV2zeros_like:output:0concat/ReadVariableOp:value:0concat/axis:output:0*
T0*
N&
ShapeShapetranspose:y:0*
T0A
strided_slice/stackConst*
dtype0*
valueB:C
strided_slice/stack_1Const*
valueB:*
dtype0C
strided_slice/stack_2Const*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
T0*
Index0*
shrink_axis_mask(
Shape_1Shapetranspose:y:0*
T0C
strided_slice_1/stackConst*
dtype0*
valueB: E
strided_slice_1/stack_1Const*
dtype0*
valueB:E
strided_slice_1/stack_2Const*
valueB:*
dtype0?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
shrink_axis_mask*
T0*
Index0;
	Fill/dimsPackstrided_slice:output:0*
T0*
NC
FillFillFill/dims:output:0strided_slice_1:output:0*
T01
Const_2Const*
value	B :*
dtype0;
split_2/split_dimConst*
dtype0*
value	B : W
split_2Splitsplit_2/split_dim:output:0concat:output:0*
	num_split*
T0>
Const_3Const*
valueB:
?????????*
dtype0E
transpose_1/permConst*
valueB"       *
dtype0L
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0>
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0E
transpose_2/permConst*
valueB"       *
dtype0L
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0@
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0E
transpose_3/permConst*
valueB"       *
dtype0L
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0@
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0E
transpose_4/permConst*
valueB"       *
dtype0L
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0@
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0E
transpose_5/permConst*
dtype0*
valueB"       N
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0@
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0E
transpose_6/permConst*
dtype0*
valueB"       N
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0@
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0E
transpose_7/permConst*
valueB"       *
dtype0N
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0@
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0E
transpose_8/permConst*
valueB"       *
dtype0N
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0@
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0A
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0A
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0B

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0B

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0B

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0B

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0B

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0B

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T07
concat_1/axisConst*
value	B : *
dtype0?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
T0*
N~

CudnnRNNV3
CudnnRNNV3transpose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0Fill:output:0*
T0L
strided_slice_2/stackConst*
dtype0*
valueB:
?????????E
strided_slice_2/stack_1Const*
dtype0*
valueB: E
strided_slice_2/stack_2Const*
valueB:*
dtype0?
strided_slice_2StridedSliceCudnnRNNV3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
T0*
Index0*
shrink_axis_maskI
transpose_9/permConst*!
valueB"          *
dtype0Q
transpose_9	TransposeCudnnRNNV3:output:0transpose_9/perm:output:0*
T0C
strided_slice_3/stackConst*
valueB: *
dtype0E
strided_slice_3/stack_1Const*
valueB:*
dtype0E
strided_slice_3/stack_2Const*
dtype0*
valueB:?
strided_slice_3StridedSliceCudnnRNNV3:output_h:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
shrink_axis_mask*
T0*
Index0C
strided_slice_4/stackConst*
dtype0*
valueB: E
strided_slice_4/stack_1Const*
dtype0*
valueB:E
strided_slice_4/stack_2Const*
dtype0*
valueB:?
strided_slice_4StridedSliceCudnnRNNV3:output_c:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
T0*
shrink_axis_mask*
Index0C
runtimeConst"/device:CPU:0*
valueB
 *   @*
dtype0?
IdentityIdentitystrided_slice_2:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_1Identitytranspose_9:y:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_2Identitystrided_slice_3:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_3Identitystrided_slice_4:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_4Identityruntime:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*=
api_implements+)lstm_f0f2b305-d1ba-4093-8a99-2644b1263515*
_input_shapes *
api_preferred_deviceGPU26
zeros_like/ReadVariableOpzeros_like/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp2

CudnnRNNV3
CudnnRNNV32,
split/ReadVariableOpsplit/ReadVariableOp2.
concat/ReadVariableOpconcat/ReadVariableOp:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinit_h:&"
 
_user_specified_nameinit_c:&"
 
_user_specified_namekernel:0,
*
_user_specified_namerecurrent_kernel:$ 

_user_specified_namebias
?
?
while_cond_19977_rewritten
while_loop_counter
while_maximum_iterations
time
tensorarrayv2_1

init_h

init_c
less_1_strided_slice+
'tensorarrayunstack_tensorlistfromtensor
recurrent_kernel
recurrent_recurrent_kernel
recurrent_bias
mul_2_0_accumulator
time_0_accumulator
sigmoid_2_0_accumulator
tanh_1_0_accumulator
mul_0_accumulator
mul_1_0_accumulator
sigmoid_1_0_accumulator
init_c_0_accumulator
sigmoid_0_accumulator
tanh_0_accumulator!
split_split_dim_0_accumulator
matmul_0_accumulator
matmul_1_0_accumulator'
#matmul_readvariableop_0_accumulator5
1tensorarrayv2read_tensorlistgetitem_0_accumulator)
%matmul_1_readvariableop_0_accumulator
init_h_0_accumulator_
[tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0_accumulator
identity
[
LessLesswhile_loop_counterwhile_maximum_iterations*
_output_shapes
: *
T0K
Less_1Lesstimeless_1_strided_slice*
T0*
_output_shapes
: F

LogicalAnd
LogicalAndLess:z:0
Less_1:z:0*
_output_shapes
: E
IdentityIdentityLogicalAnd:z:0*
_output_shapes
: *
T0
"
identityIdentity:output:0*w
_input_shapesf
d: : : : :??????????:??????????: : :::: : : : : : : : : : : : : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : :  : : : : : : : 
?G
?
__inference_standard_lstm_20080

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?whilec
transpose/permConst*
dtype0*!
valueB"          *
_output_shapes
:n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????B
ShapeShapetranspose:y:0*
_output_shapes
:*
T0]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:_
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: f
TensorArrayV2/element_shapeConst*
valueB :
?????????*
_output_shapes
: *
dtype0?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0_
strided_slice_1/stackConst*
valueB: *
_output_shapes
:*
dtype0a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
shrink_axis_mask*
T0*
Index0*(
_output_shapes
:??????????^
MatMul/ReadVariableOpReadVariableOpkernel* 
_output_shapes
:
??*
dtype0|
MatMulMatMulstrided_slice_1:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????j
MatMul_1/ReadVariableOpReadVariableOprecurrent_kernel*
dtype0* 
_output_shapes
:
??n
MatMul_1MatMulinit_hMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
addAddMatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????X
BiasAdd/ReadVariableOpReadVariableOpbias*
dtype0*
_output_shapes	
:?n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????G
ConstConst*
_output_shapes
: *
value	B :*
dtype0Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
	num_split*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????U
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*(
_output_shapes
:??????????*
T0T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*(
_output_shapes
:??????????*
T0S
add_1Addmul:z:0	mul_1:z:0*(
_output_shapes
:??????????*
T0W
	Sigmoid_2Sigmoidsplit:output:3*(
_output_shapes
:??????????*
T0L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*(
_output_shapes
:??????????*
T0h
TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
valueB :
?????????*
dtype0?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*

shape_type0*
_output_shapes
: *
element_dtype0F
timeConst*
dtype0*
value	B : *
_output_shapes
: Z
while/maximum_iterationsConst*
_output_shapes
: *
value	B :*
dtype0T
while/loop_counterConst*
dtype0*
value	B : *
_output_shapes
: ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T
2*r
_output_shapes`
^: : : : :??????????:??????????: : : : : : : : : : : : : : : : : : : : : : : *M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations *
_lower_using_switch_merge(*
bodyR
while_body_19978*
condR
while_cond_19977K
while/IdentityIdentitywhile:output:0*
T0*
_output_shapes
: M
while/Identity_1Identitywhile:output:1*
T0*
_output_shapes
: M
while/Identity_2Identitywhile:output:2*
_output_shapes
: *
T0M
while/Identity_3Identitywhile:output:3*
_output_shapes
: *
T0_
while/Identity_4Identitywhile:output:4*(
_output_shapes
:??????????*
T0_
while/Identity_5Identitywhile:output:5*
T0*(
_output_shapes
:??????????M
while/Identity_6Identitywhile:output:6*
_output_shapes
: *
T0M
while/Identity_7Identitywhile:output:7*
_output_shapes
: *
T0M
while/Identity_8Identitywhile:output:8*
_output_shapes
: *
T0M
while/Identity_9Identitywhile:output:9*
_output_shapes
: *
T0O
while/Identity_10Identitywhile:output:10*
_output_shapes
: *
T0?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
dtype0*
_output_shapes
:*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile/Identity_3:output:09TensorArrayV2Stack/TensorListStack/element_shape:output:0*
element_dtype0*,
_output_shapes
:??????????h
strided_slice_2/stackConst*
valueB:
?????????*
_output_shapes
:*
dtype0a
strided_slice_2/stack_1Const*
valueB: *
_output_shapes
:*
dtype0a
strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*,
_output_shapes
:??????????*
T0[
runtimeConst"/device:CPU:0*
valueB
 *  ??*
dtype0*
_output_shapes
: ?
IdentityIdentitystrided_slice_2:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:???????????

Identity_1Identitytranspose_1:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*,
_output_shapes
:??????????*
T0?

Identity_2Identitywhile/Identity_4:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:???????????

Identity_3Identitywhile/Identity_5:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:???????????

Identity_4Identityruntime:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*
_output_shapes
: *
T0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*=
api_implements+)lstm_f0f2b305-d1ba-4093-8a99-2644b1263515*
api_preferred_deviceCPU*_
_input_shapesN
L:??????????:??????????:??????????:::22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2
whilewhile20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinit_h:&"
 
_user_specified_nameinit_c:&"
 
_user_specified_namekernel:0,
*
_user_specified_namerecurrent_kernel:$ 

_user_specified_namebias
?X
?
__forward_cudnn_lstm_20204

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4

cudnnrnnv3
strided_slice_2_stack
strided_slice_2_stack_1
strided_slice_2_stack_2
transpose_9_perm
cudnnrnnv3_0
strided_slice_3_stack
strided_slice_3_stack_1
strided_slice_3_stack_2
cudnnrnnv3_1
strided_slice_4_stack
strided_slice_4_stack_1
strided_slice_4_stack_2
cudnnrnnv3_2
	transpose

expanddims
expanddims_1
concat_1
fill
cudnnrnnv3_3
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis??
CudnnRNNV3?concat/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOp?zeros_like/ReadVariableOpG
transpose/permConst*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T08
ExpandDims/dimConst*
value	B : *
dtype0D

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0:
ExpandDims_1/dimConst*
dtype0*
value	B : H
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0/
ConstConst*
dtype0*
value	B :9
split/split_dimConst*
value	B :*
dtype0;
split/ReadVariableOpReadVariableOpkernel*
dtype0`
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*
	num_split1
Const_1Const*
value	B :*
dtype0;
split_1/split_dimConst*
dtype0*
value	B :G
split_1/ReadVariableOpReadVariableOprecurrent_kernel*
dtype0f
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
	num_split*
T0>
zeros_like/ReadVariableOpReadVariableOpbias*
dtype0<

zeros_likeConst*
valueB?*    *
dtype0V
concat/ReadVariableOpReadVariableOpbias^zeros_like/ReadVariableOp*
dtype05
concat/axisConst*
value	B : *
dtype0n
concatConcatV2zeros_like:output:0concat/ReadVariableOp:value:0concat/axis:output:0*
N*
T0(
ShapeShapetranspose_0:y:0*
T0A
strided_slice/stackConst*
valueB:*
dtype0C
strided_slice/stack_1Const*
valueB:*
dtype0C
strided_slice/stack_2Const*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
T0*
shrink_axis_mask*
Index0*
Shape_1Shapetranspose_0:y:0*
T0C
strided_slice_1/stackConst*
dtype0*
valueB: E
strided_slice_1/stack_1Const*
valueB:*
dtype0E
strided_slice_1/stack_2Const*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
T0*
Index0*
shrink_axis_mask;
	Fill/dimsPackstrided_slice:output:0*
T0*
NC
FillFillFill/dims:output:0strided_slice_1:output:0*
T01
Const_2Const*
dtype0*
value	B :;
split_2/split_dimConst*
dtype0*
value	B : W
split_2Splitsplit_2/split_dim:output:0concat:output:0*
	num_split*
T0>
Const_3Const*
valueB:
?????????*
dtype0E
transpose_1/permConst*
dtype0*
valueB"       L
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0>
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0E
transpose_2/permConst*
dtype0*
valueB"       L
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0@
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0E
transpose_3/permConst*
dtype0*
valueB"       L
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0@
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0E
transpose_4/permConst*
valueB"       *
dtype0L
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0@
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0E
transpose_5/permConst*
valueB"       *
dtype0N
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0@
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0E
transpose_6/permConst*
dtype0*
valueB"       N
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0@
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0E
transpose_7/permConst*
dtype0*
valueB"       N
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0@
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0E
transpose_8/permConst*
dtype0*
valueB"       N
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0@
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0A
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0A
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0B

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0B

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0B

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0B

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0B

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0B

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T07
concat_1/axisConst*
dtype0*
value	B : ?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
T0*
N?

CudnnRNNV3
CudnnRNNV3transpose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0Fill:output:0*
T0L
strided_slice_2/stackConst*
valueB:
?????????*
dtype0E
strided_slice_2/stack_1Const*
dtype0*
valueB: E
strided_slice_2/stack_2Const*
dtype0*
valueB:?
strided_slice_2StridedSliceCudnnRNNV3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
shrink_axis_mask*
T0*
Index0I
transpose_9/permConst*
dtype0*!
valueB"          Q
transpose_9	TransposeCudnnRNNV3:output:0transpose_9/perm:output:0*
T0C
strided_slice_3/stackConst*
valueB: *
dtype0E
strided_slice_3/stack_1Const*
valueB:*
dtype0E
strided_slice_3/stack_2Const*
valueB:*
dtype0?
strided_slice_3StridedSliceCudnnRNNV3:output_h:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
shrink_axis_mask*
T0C
strided_slice_4/stackConst*
valueB: *
dtype0E
strided_slice_4/stack_1Const*
dtype0*
valueB:E
strided_slice_4/stack_2Const*
dtype0*
valueB:?
strided_slice_4StridedSliceCudnnRNNV3:output_c:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
shrink_axis_mask*
Index0*
T0C
runtimeConst"/device:CPU:0*
dtype0*
valueB
 *   @?
IdentityIdentitystrided_slice_2:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_1Identitytranspose_9:y:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_2Identitystrided_slice_3:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_3Identitystrided_slice_4:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_4Identityruntime:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0"-
transpose_5_permtranspose_5/perm:output:0"%
cudnnrnnv3_0CudnnRNNV3:output_h:0"%
cudnnrnnv3_1CudnnRNNV3:output_c:0"*
cudnnrnnv3_2CudnnRNNV3:reserve_space:0"*
cudnnrnnv3_3CudnnRNNV3:host_reserved:0")
transpose_permtranspose/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"!

expanddimsExpandDims:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"%
expanddims_1ExpandDims_1:output:0"
concat_1concat_1_0:output:0";
strided_slice_3_stack_1 strided_slice_3/stack_1:output:0"-
transpose_9_permtranspose_9/perm:output:0";
strided_slice_3_stack_2 strided_slice_3/stack_2:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"-
transpose_3_permtranspose_3/perm:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"-
transpose_8_permtranspose_8/perm:output:0"
identityIdentity:output:0"-
transpose_2_permtranspose_2/perm:output:0"
fillFill:output:0"7
strided_slice_2_stackstrided_slice_2/stack:output:0"'
concat_1_axisconcat_1/axis:output:0"
	transposetranspose_0:y:0"-
transpose_7_permtranspose_7/perm:output:0"+
split_split_dimsplit/split_dim:output:0"#
concat_axisconcat/axis:output:0"-
transpose_1_permtranspose_1/perm:output:0"7
strided_slice_3_stackstrided_slice_3/stack:output:0"
init_cinit_c_0"!

cudnnrnnv3CudnnRNNV3:output:0";
strided_slice_2_stack_1 strided_slice_2/stack_1:output:0";
strided_slice_2_stack_2 strided_slice_2/stack_2:output:0";
strided_slice_4_stack_1 strided_slice_4/stack_1:output:0"-
transpose_6_permtranspose_6/perm:output:0"
init_hinit_h_0";
strided_slice_4_stack_2 strided_slice_4/stack_2:output:0"7
strided_slice_4_stackstrided_slice_4/stack:output:0*
api_preferred_deviceGPU*
_input_shapes *I
backward_function_name/-__inference___backward_cudnn_lstm_20202_20380*=
api_implements+)lstm_f0f2b305-d1ba-4093-8a99-2644b12635152,
split/ReadVariableOpsplit/ReadVariableOp2.
concat/ReadVariableOpconcat/ReadVariableOp26
zeros_like/ReadVariableOpzeros_like/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp2

CudnnRNNV3
CudnnRNNV3:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinit_h:&"
 
_user_specified_nameinit_c:&"
 
_user_specified_namekernel:0,
*
_user_specified_namerecurrent_kernel:$ 

_user_specified_namebias
??
?
__forward_standard_lstm_20668

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4&
"tensorarrayv2stack_tensorliststack
strided_slice_2_stack
strided_slice_2_stack_1
strided_slice_2_stack_2
transpose_1_perm	
while
while_0
while_1
while_2
while_maximum_iterations
while_3
while_4
while_5
while_6
while_7
while_8
while_9
while_10
while_11
while_12
while_13
while_14
while_15
while_16
while_17
while_18
while_19
while_20
while_21
	transpose
transpose_perm??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?whilec
transpose/permConst*
dtype0*!
valueB"          *
_output_shapes
:B
transpose_0	Transposeinputstranspose/perm:output:0*
T0D
ShapeShapetranspose_0:y:0*
_output_shapes
:*
T0]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:_
strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
shrink_axis_mask*
Index0*
_output_shapes
: *
T0f
TensorArrayV2/element_shapeConst*
dtype0*
valueB :
?????????*
_output_shapes
: ?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
element_dtype0*
_output_shapes
: *

shape_type0?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
valueB"?????  *
dtype0*
_output_shapes
:?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose_0:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *

shape_type0*
element_dtype0_
strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0?
strided_slice_1StridedSlicetranspose_0:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*(
_output_shapes
:??????????*
T0*
shrink_axis_mask*
Index0^
MatMul/ReadVariableOpReadVariableOpkernel* 
_output_shapes
:
??*
dtype0|
MatMulMatMulstrided_slice_1:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????j
MatMul_1/ReadVariableOpReadVariableOprecurrent_kernel*
dtype0* 
_output_shapes
:
??n
MatMul_1MatMulinit_hMatMul_1/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0c
addAddMatMul:product:0MatMul_1:product:0*(
_output_shapes
:??????????*
T0X
BiasAdd/ReadVariableOpReadVariableOpbias*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????G
ConstConst*
dtype0*
_output_shapes
: *
value	B :Q
split/split_dimConst*
_output_shapes
: *
value	B :*
dtype0?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
	num_split*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
T0U
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*(
_output_shapes
:??????????*
T0T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????S
add_1Addmul:z:0	mul_1:z:0*(
_output_shapes
:??????????*
T0W
	Sigmoid_2Sigmoidsplit:output:3*(
_output_shapes
:??????????*
T0L
Tanh_1Tanh	add_1:z:0*(
_output_shapes
:??????????*
T0Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????h
TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
valueB :
?????????*
dtype0?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
element_dtype0*
_output_shapes
: *

shape_type0F
timeConst*
dtype0*
_output_shapes
: *
value	B : Z
while/maximum_iterationsConst*
value	B :*
dtype0*
_output_shapes
: T
while/loop_counterConst*
_output_shapes
: *
value	B : *
dtype0?

while_22Whilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbiasmul_2_0/accumulator:handle:0time_0/accumulator:handle:0 Sigmoid_2_0/accumulator:handle:0Tanh_1_0/accumulator:handle:0mul_0/accumulator:handle:0mul_1_0/accumulator:handle:0 Sigmoid_1_0/accumulator:handle:0init_c_0/accumulator:handle:0Sigmoid_0/accumulator:handle:0Tanh_0/accumulator:handle:0&split/split_dim_0/accumulator:handle:0MatMul_0/accumulator:handle:0MatMul_1_0/accumulator:handle:0,MatMul/ReadVariableOp_0/accumulator:handle:0:TensorArrayV2Read/TensorListGetItem_0/accumulator:handle:0.MatMul_1/ReadVariableOp_0/accumulator:handle:0init_h_0/accumulator:handle:0dtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0/accumulator:handle:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*&
condR
while_cond_19977_rewritten*q
output_shapes`
^: : : : :??????????:??????????: : : : : : : : : : : : : : : : : : : : : : : *&
bodyR
while_body_19978_rewritten*
_lower_using_switch_merge(*&
T!
2*
parallel_iterations N
while/IdentityIdentitywhile_22:output:0*
_output_shapes
: *
T0P
while/Identity_1Identitywhile_22:output:1*
T0*
_output_shapes
: P
while/Identity_2Identitywhile_22:output:2*
_output_shapes
: *
T0P
while/Identity_3Identitywhile_22:output:3*
_output_shapes
: *
T0b
while/Identity_4Identitywhile_22:output:4*
T0*(
_output_shapes
:??????????b
while/Identity_5Identitywhile_22:output:5*
T0*(
_output_shapes
:??????????P
while/Identity_6Identitywhile_22:output:6*
T0*
_output_shapes
: P
while/Identity_7Identitywhile_22:output:7*
T0*
_output_shapes
: P
while/Identity_8Identitywhile_22:output:8*
_output_shapes
: *
T0P
while/Identity_9Identitywhile_22:output:9*
T0*
_output_shapes
: R
while/Identity_10Identitywhile_22:output:10*
T0*
_output_shapes
: ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
dtype0*
valueB"?????   *
_output_shapes
:?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile/Identity_3:output:09TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0h
strided_slice_2/stackConst*
valueB:
?????????*
_output_shapes
:*
dtype0a
strided_slice_2/stack_1Const*
_output_shapes
:*
valueB: *
dtype0a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
shrink_axis_mask*(
_output_shapes
:??????????*
Index0*
T0e
transpose_1/permConst*!
valueB"          *
_output_shapes
:*
dtype0?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*,
_output_shapes
:??????????*
T0[
runtimeConst"/device:CPU:0*
dtype0*
valueB
 *  ??*
_output_shapes
: ?
IdentityIdentitystrided_slice_2:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp	^while_22*
T0*(
_output_shapes
:???????????

Identity_1Identitytranspose_1:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp	^while_22*,
_output_shapes
:??????????*
T0?

Identity_2Identitywhile/Identity_4:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp	^while_22*
T0*(
_output_shapes
:???????????

Identity_3Identitywhile/Identity_5:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp	^while_22*(
_output_shapes
:??????????*
T0?

Identity_4Identityruntime:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp	^while_22*
_output_shapes
: *
T0r
!mul_2_0/accumulator/element_shapeConst*
_output_shapes
:*
valueB"?????   *
dtype0?
mul_2_0/accumulatorEmptyTensorList*mul_2_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *

shape_type0*
element_dtype0J
Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
time_0/accumulatorEmptyTensorListConst_1:output:0!while/maximum_iterations:output:0*
_output_shapes
: *

shape_type0*
element_dtype0v
%Sigmoid_2_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????????
Sigmoid_2_0/accumulatorEmptyTensorList.Sigmoid_2_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*

shape_type0*
_output_shapes
: *
element_dtype0s
"Tanh_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
Tanh_1_0/accumulatorEmptyTensorList+Tanh_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*

shape_type0*
_output_shapes
: *
element_dtype0p
mul_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
mul_0/accumulatorEmptyTensorList(mul_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type0r
!mul_1_0/accumulator/element_shapeConst*
_output_shapes
:*
valueB"????????*
dtype0?
mul_1_0/accumulatorEmptyTensorList*mul_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*

shape_type0*
_output_shapes
: *
element_dtype0v
%Sigmoid_1_0/accumulator/element_shapeConst*
dtype0*
valueB"????????*
_output_shapes
:?
Sigmoid_1_0/accumulatorEmptyTensorList.Sigmoid_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type0s
"init_c_0/accumulator/element_shapeConst*
dtype0*
valueB"?????   *
_output_shapes
:?
init_c_0/accumulatorEmptyTensorList+init_c_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *

shape_type0*
element_dtype0t
#Sigmoid_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????????
Sigmoid_0/accumulatorEmptyTensorList,Sigmoid_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type0q
 Tanh_0/accumulator/element_shapeConst*
_output_shapes
:*
valueB"????????*
dtype0?
Tanh_0/accumulatorEmptyTensorList)Tanh_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *

shape_type0*
element_dtype0J
Const_2Const*
dtype0*
valueB *
_output_shapes
: ?
split/split_dim_0/accumulatorEmptyTensorListConst_2:output:0!while/maximum_iterations:output:0*

shape_type0*
element_dtype0*
_output_shapes
: s
"MatMul_0/accumulator/element_shapeConst*
valueB"????????*
dtype0*
_output_shapes
:?
MatMul_0/accumulatorEmptyTensorList+MatMul_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *

shape_type0*
element_dtype0u
$MatMul_1_0/accumulator/element_shapeConst*
valueB"????????*
_output_shapes
:*
dtype0?
MatMul_1_0/accumulatorEmptyTensorList-MatMul_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*

shape_type0*
element_dtype0*
_output_shapes
: |
1MatMul/ReadVariableOp_0/accumulator/element_shapeConst*
valueB :
?????????*
dtype0*
_output_shapes
: ?
#MatMul/ReadVariableOp_0/accumulatorEmptyTensorList:MatMul/ReadVariableOp_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
element_dtype0*
_output_shapes
: *

shape_type0?
?TensorArrayV2Read/TensorListGetItem_0/accumulator/element_shapeConst*
_output_shapes
:*
valueB"?????  *
dtype0?
1TensorArrayV2Read/TensorListGetItem_0/accumulatorEmptyTensorListHTensorArrayV2Read/TensorListGetItem_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *

shape_type0*
element_dtype0~
3MatMul_1/ReadVariableOp_0/accumulator/element_shapeConst*
dtype0*
valueB :
?????????*
_output_shapes
: ?
%MatMul_1/ReadVariableOp_0/accumulatorEmptyTensorList<MatMul_1/ReadVariableOp_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
element_dtype0*
_output_shapes
: *

shape_type0s
"init_h_0/accumulator/element_shapeConst*
valueB"?????   *
_output_shapes
:*
dtype0?
init_h_0/accumulatorEmptyTensorList+init_h_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*

shape_type0*
_output_shapes
: *
element_dtype0J
Const_3Const*
valueB *
_output_shapes
: *
dtype0?
[tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0/accumulatorEmptyTensorListConst_3:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type0"
while_0while_22:output:8"
while_1while_22:output:9"
while_2while_22:output:10"
while_3while_22:output:0"
while_4while_22:output:11"
while_5while_22:output:12"
while_10while_22:output:17")
transpose_permtranspose/perm:output:0"
while_11while_22:output:18"
while_6while_22:output:13"
while_7while_22:output:14"
while_12while_22:output:19"
while_8while_22:output:15"
while_13while_22:output:20"
while_9while_22:output:16"
while_14while_22:output:21"
while_20while_22:output:27"
while_15while_22:output:22"
while_16while_22:output:23"
while_21while_22:output:28"
while_17while_22:output:24"
while_18while_22:output:25"
while_19while_22:output:26"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"Q
"tensorarrayv2stack_tensorliststack+TensorArrayV2Stack/TensorListStack:tensor:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
whilewhile_22:output:7"
identityIdentity:output:0"=
while_maximum_iterations!while/maximum_iterations:output:0"7
strided_slice_2_stackstrided_slice_2/stack:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0";
strided_slice_2_stack_1 strided_slice_2/stack_1:output:0";
strided_slice_2_stack_2 strided_slice_2/stack_2:output:0*L
backward_function_name20__inference___backward_standard_lstm_20666_21168*
api_preferred_deviceCPU*_
_input_shapesN
L:??????????:??????????:??????????:::*=
api_implements+)lstm_f0f2b305-d1ba-4093-8a99-2644b126351522
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2
whilewhile_2220
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:0,
*
_user_specified_namerecurrent_kernel:$ 

_user_specified_namebias:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinit_h:&"
 
_user_specified_nameinit_c:&"
 
_user_specified_namekernel
?X
?
while_body_19978_rewritten
while_loop_counter
while_maximum_iterations
time
tensorarrayv2_1

init_h

init_c
strided_slice_0_0S
Otensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0.
*matmul_readvariableop_recurrent_kernel_0_0:
6matmul_1_readvariableop_recurrent_recurrent_kernel_0_0-
)biasadd_readvariableop_recurrent_bias_0_0*
&tensorlistpushback_mul_2_0_accumulator+
'tensorlistpushback_1_time_0_accumulator0
,tensorlistpushback_2_sigmoid_2_0_accumulator-
)tensorlistpushback_3_tanh_1_0_accumulator*
&tensorlistpushback_4_mul_0_accumulator,
(tensorlistpushback_5_mul_1_0_accumulator0
,tensorlistpushback_6_sigmoid_1_0_accumulator-
)tensorlistpushback_7_init_c_0_accumulator.
*tensorlistpushback_8_sigmoid_0_accumulator+
'tensorlistpushback_9_tanh_0_accumulator7
3tensorlistpushback_10_split_split_dim_0_accumulator.
*tensorlistpushback_11_matmul_0_accumulator0
,tensorlistpushback_12_matmul_1_0_accumulator=
9tensorlistpushback_13_matmul_readvariableop_0_accumulatorK
Gtensorlistpushback_14_tensorarrayv2read_tensorlistgetitem_0_accumulator?
;tensorlistpushback_15_matmul_1_readvariableop_0_accumulator.
*tensorlistpushback_16_init_h_0_accumulatoru
qtensorlistpushback_17_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0_accumulator
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
(matmul_readvariableop_recurrent_kernel_08
4matmul_1_readvariableop_recurrent_recurrent_kernel_0+
'biasadd_readvariableop_recurrent_bias_0
tensorlistpushback
tensorlistpushback_1
tensorlistpushback_2
tensorlistpushback_3
tensorlistpushback_4
tensorlistpushback_5
tensorlistpushback_6
tensorlistpushback_7
tensorlistpushback_8
tensorlistpushback_9
tensorlistpushback_10
tensorlistpushback_11
tensorlistpushback_12
tensorlistpushback_13
tensorlistpushback_14
tensorlistpushback_15
tensorlistpushback_16
tensorlistpushback_17??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
valueB"?????  *
dtype0*
_output_shapes
:?
#TensorArrayV2Read/TensorListGetItemTensorListGetItemOtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0time:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
element_dtype0*(
_output_shapes
:??????????z
MatMul/ReadVariableOpReadVariableOp*matmul_readvariableop_recurrent_kernel_0_0*
_output_shapes
:*
dtype0?
MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0MatMul/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????????????
MatMul_1/ReadVariableOpReadVariableOp6matmul_1_readvariableop_recurrent_recurrent_kernel_0_0*
_output_shapes
:*
dtype0v
MatMul_1MatMulinit_hMatMul_1/ReadVariableOp:value:0*0
_output_shapes
:??????????????????*
T0k
addAddMatMul:product:0MatMul_1:product:0*
T0*0
_output_shapes
:??????????????????z
BiasAdd/ReadVariableOpReadVariableOp)biasadd_readvariableop_recurrent_bias_0_0*
dtype0*
_output_shapes
:v
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*0
_output_shapes
:??????????????????*
T0G
ConstConst*
dtype0*
value	B :*
_output_shapes
: Q
split/split_dimConst*
_output_shapes
: *
value	B :*
dtype0?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
	num_split*
T0*?
_output_shapesr
p:??????????????????:??????????????????:??????????????????:??????????????????]
SigmoidSigmoidsplit:output:0*
T0*0
_output_shapes
:??????????????????_
	Sigmoid_1Sigmoidsplit:output:1*
T0*0
_output_shapes
:??????????????????T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:??????????W
TanhTanhsplit:output:2*
T0*0
_output_shapes
:??????????????????^
mul_1MulSigmoid:y:0Tanh:y:0*0
_output_shapes
:??????????????????*
T0S
add_1Addmul:z:0	mul_1:z:0*(
_output_shapes
:??????????*
T0_
	Sigmoid_2Sigmoidsplit:output:3*0
_output_shapes
:??????????????????*
T0L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*(
_output_shapes
:??????????*
T0?
$TensorArrayV2Write/TensorListSetItemTensorListSetItemtensorarrayv2_1time	mul_2:z:0*
_output_shapes
: *
element_dtype0I
add_2/yConst*
value	B :*
_output_shapes
: *
dtype0E
add_2Addtimeadd_2/y:output:0*
T0*
_output_shapes
: I
add_3/yConst*
_output_shapes
: *
dtype0*
value	B :S
add_3Addwhile_loop_counteradd_3/y:output:0*
_output_shapes
: *
T0?
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes
: ?

Identity_1Identitywhile_maximum_iterations^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
: *
T0?

Identity_2Identity	add_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
: *
T0?

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes
: ?

Identity_4Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*(
_output_shapes
:??????????*
T0?

Identity_5Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:???????????
TensorListPushBackTensorListPushBack&tensorlistpushback_mul_2_0_accumulator	mul_2:z:0*
_output_shapes
: *
element_dtype0?
TensorListPushBack_1TensorListPushBack'tensorlistpushback_1_time_0_accumulatortime*
_output_shapes
: *
element_dtype0?
TensorListPushBack_2TensorListPushBack,tensorlistpushback_2_sigmoid_2_0_accumulatorSigmoid_2:y:0*
_output_shapes
: *
element_dtype0?
TensorListPushBack_3TensorListPushBack)tensorlistpushback_3_tanh_1_0_accumulator
Tanh_1:y:0*
element_dtype0*
_output_shapes
: ?
TensorListPushBack_4TensorListPushBack&tensorlistpushback_4_mul_0_accumulatormul:z:0*
_output_shapes
: *
element_dtype0?
TensorListPushBack_5TensorListPushBack(tensorlistpushback_5_mul_1_0_accumulator	mul_1:z:0*
_output_shapes
: *
element_dtype0?
TensorListPushBack_6TensorListPushBack,tensorlistpushback_6_sigmoid_1_0_accumulatorSigmoid_1:y:0*
element_dtype0*
_output_shapes
: ?
TensorListPushBack_7TensorListPushBack)tensorlistpushback_7_init_c_0_accumulatorinit_c*
element_dtype0*
_output_shapes
: ?
TensorListPushBack_8TensorListPushBack*tensorlistpushback_8_sigmoid_0_accumulatorSigmoid:y:0*
_output_shapes
: *
element_dtype0?
TensorListPushBack_9TensorListPushBack'tensorlistpushback_9_tanh_0_accumulatorTanh:y:0*
_output_shapes
: *
element_dtype0?
TensorListPushBack_10TensorListPushBack3tensorlistpushback_10_split_split_dim_0_accumulatorsplit/split_dim:output:0*
_output_shapes
: *
element_dtype0?
TensorListPushBack_11TensorListPushBack*tensorlistpushback_11_matmul_0_accumulatorMatMul:product:0*
element_dtype0*
_output_shapes
: ?
TensorListPushBack_12TensorListPushBack,tensorlistpushback_12_matmul_1_0_accumulatorMatMul_1:product:0*
element_dtype0*
_output_shapes
: ?
TensorListPushBack_13TensorListPushBack9tensorlistpushback_13_matmul_readvariableop_0_accumulatorMatMul/ReadVariableOp:value:0*
element_dtype0*
_output_shapes
: ?
TensorListPushBack_14TensorListPushBackGtensorlistpushback_14_tensorarrayv2read_tensorlistgetitem_0_accumulator*TensorArrayV2Read/TensorListGetItem:item:0*
_output_shapes
: *
element_dtype0?
TensorListPushBack_15TensorListPushBack;tensorlistpushback_15_matmul_1_readvariableop_0_accumulatorMatMul_1/ReadVariableOp:value:0*
_output_shapes
: *
element_dtype0?
TensorListPushBack_16TensorListPushBack*tensorlistpushback_16_init_h_0_accumulatorinit_h*
_output_shapes
: *
element_dtype0?
TensorListPushBack_17TensorListPushBackqtensorlistpushback_17_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0_accumulatorOtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0*
element_dtype0*
_output_shapes
: ">
tensorlistpushback_12%TensorListPushBack_12:output_handle:0"<
tensorlistpushback_3$TensorListPushBack_3:output_handle:0">
tensorlistpushback_13%TensorListPushBack_13:output_handle:0"<
tensorlistpushback_4$TensorListPushBack_4:output_handle:0"<
tensorlistpushback_5$TensorListPushBack_5:output_handle:0">
tensorlistpushback_14%TensorListPushBack_14:output_handle:0"<
tensorlistpushback_6$TensorListPushBack_6:output_handle:0">
tensorlistpushback_15%TensorListPushBack_15:output_handle:0">
tensorlistpushback_16%TensorListPushBack_16:output_handle:0"<
tensorlistpushback_7$TensorListPushBack_7:output_handle:0">
tensorlistpushback_17%TensorListPushBack_17:output_handle:0"<
tensorlistpushback_8$TensorListPushBack_8:output_handle:0"<
tensorlistpushback_9$TensorListPushBack_9:output_handle:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"T
'biasadd_readvariableop_recurrent_bias_0)biasadd_readvariableop_recurrent_bias_0_0"
identityIdentity:output:0"!

identity_5Identity_5:output:0"$
strided_slice_0strided_slice_0_0"n
4matmul_1_readvariableop_recurrent_recurrent_kernel_06matmul_1_readvariableop_recurrent_recurrent_kernel_0_0"8
tensorlistpushback"TensorListPushBack:output_handle:0"?
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Otensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0"V
(matmul_readvariableop_recurrent_kernel_0*matmul_readvariableop_recurrent_kernel_0_0">
tensorlistpushback_10%TensorListPushBack_10:output_handle:0"<
tensorlistpushback_1$TensorListPushBack_1:output_handle:0"<
tensorlistpushback_2$TensorListPushBack_2:output_handle:0">
tensorlistpushback_11%TensorListPushBack_11:output_handle:0*w
_input_shapesf
d: : : : :??????????:??????????: : :::: : : : : : : : : : : : : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp: : : :  : : : : : : : : :	 :
 : : : : : : : : : : : : : : : 
?f
?
0__inference___backward_standard_lstm_20666_21168
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4K
Ggradients_strided_slice_2_grad_shape_tensorarrayv2stack_tensorliststackI
Egradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stackK
Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_1K
Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_2A
=gradients_transpose_1_grad_invertpermutation_transpose_1_perm
gradients_zeros_like_while!
gradients_variableshape_while#
gradients_variableshape_1_while#
gradients_variableshape_2_while<
8gradients_while_grad_while_grad_while_maximum_iterations)
%gradients_while_grad_while_grad_while+
'gradients_while_grad_while_grad_while_1+
'gradients_while_grad_while_grad_while_2+
'gradients_while_grad_while_grad_while_3+
'gradients_while_grad_while_grad_while_4+
'gradients_while_grad_while_grad_while_5+
'gradients_while_grad_while_grad_while_6+
'gradients_while_grad_while_grad_while_7+
'gradients_while_grad_while_grad_while_8+
'gradients_while_grad_while_grad_while_9,
(gradients_while_grad_while_grad_while_10,
(gradients_while_grad_while_grad_while_11,
(gradients_while_grad_while_grad_while_12,
(gradients_while_grad_while_grad_while_13,
(gradients_while_grad_while_grad_while_14,
(gradients_while_grad_while_grad_while_15,
(gradients_while_grad_while_grad_while_16,
(gradients_while_grad_while_grad_while_17,
(gradients_while_grad_while_grad_while_18J
Fgradients_tensorarrayunstack_tensorlistfromtensor_grad_shape_transpose=
9gradients_transpose_grad_invertpermutation_transpose_perm&
"gradients_transpose_grad_transpose#
gradients_while_grad_identity_4#
gradients_while_grad_identity_5#
gradients_while_grad_identity_7#
gradients_while_grad_identity_8#
gradients_while_grad_identity_9?_
gradients/grad_ys_0Identityplaceholder*(
_output_shapes
:??????????*
T0e
gradients/grad_ys_1Identityplaceholder_1*,
_output_shapes
:??????????*
T0a
gradients/grad_ys_2Identityplaceholder_2*(
_output_shapes
:??????????*
T0a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:??????????O
gradients/grad_ys_4Identityplaceholder_4*
_output_shapes
: *
T0?
$gradients/strided_slice_2_grad/ShapeShapeGgradients_strided_slice_2_grad_shape_tensorarrayv2stack_tensorliststack*
T0*
_output_shapes
:?
/gradients/strided_slice_2_grad/StridedSliceGradStridedSliceGrad-gradients/strided_slice_2_grad/Shape:output:0Egradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stackGgradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_1Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_2gradients/grad_ys_0:output:0*,
_output_shapes
:??????????*
T0*
Index0*
shrink_axis_mask?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_1_grad/InvertPermutation:y:0*,
_output_shapes
:??????????*
T0?
gradients/AddNAddN8gradients/strided_slice_2_grad/StridedSliceGrad:output:0(gradients/transpose_1_grad/transpose:y:0*B
_class8
64loc:@gradients/strided_slice_2_grad/StridedSliceGrad*,
_output_shapes
:??????????*
T0*
N?
Tgradients/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensor/element_shapeConst*
dtype0*
_output_shapes
:*
valueB"?????   ?
Fgradients/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensorTensorListFromTensorgradients/AddN:sum:0]gradients/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0^
gradients/zeros_like	ZerosLikegradients_zeros_like_while*
_output_shapes
: *
T0c
gradients/VariableShapeVariableShapegradients_variableshape_while*
_output_shapes
:Z
gradients/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
gradients/zerosFill gradients/VariableShape:output:0gradients/zeros/Const:output:0*0
_output_shapes
:??????????????????*
T0g
gradients/VariableShape_1VariableShapegradients_variableshape_1_while*
_output_shapes
:\
gradients/zeros_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    ?
gradients/zeros_1Fill"gradients/VariableShape_1:output:0 gradients/zeros_1/Const:output:0*0
_output_shapes
:??????????????????*
T0g
gradients/VariableShape_2VariableShapegradients_variableshape_2_while*
_output_shapes
:\
gradients/zeros_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0?
gradients/zeros_2Fill"gradients/VariableShape_2:output:0 gradients/zeros_2/Const:output:0*
T0*#
_output_shapes
:?????????c
!gradients/while_grad/grad_counterConst*
_output_shapes
: *
value	B : *
dtype0?
gradients/while_grad/while_gradWhile*gradients/while_grad/grad_counter:output:08gradients_while_grad_while_grad_while_maximum_iterations%gradients_while_grad_while_grad_whileVgradients/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensor:output_handle:0gradients/grad_ys_2:output:0gradients/grad_ys_3:output:0gradients/zeros_like:y:0gradients/zeros:output:0gradients/zeros_1:output:0gradients/zeros_2:output:0'gradients_while_grad_while_grad_while_1'gradients_while_grad_while_grad_while_2'gradients_while_grad_while_grad_while_3'gradients_while_grad_while_grad_while_4'gradients_while_grad_while_grad_while_5'gradients_while_grad_while_grad_while_6'gradients_while_grad_while_grad_while_7'gradients_while_grad_while_grad_while_8'gradients_while_grad_while_grad_while_9(gradients_while_grad_while_grad_while_10(gradients_while_grad_while_grad_while_11(gradients_while_grad_while_grad_while_12(gradients_while_grad_while_grad_while_13(gradients_while_grad_while_grad_while_14(gradients_while_grad_while_grad_while_15(gradients_while_grad_while_grad_while_16(gradients_while_grad_while_grad_while_17(gradients_while_grad_while_grad_while_18*'
bodyR
while_body_19978_grad_20768*
parallel_iterations *
_lower_using_switch_merge(*?
_output_shapes?
?: : : : :??????????:??????????: :??????????:??????????:?????????: : : : : : : : : : : : : : : : : : *%
T 
2*?
output_shapes?
?: : : : :??????????:??????????: :??????????:??????????:?????????: : : : : : : : : : : : : : : : : : *1
cond)R'
%while_cond_19977_rewritten_grad_21051t
gradients/while_grad/IdentityIdentity(gradients/while_grad/while_grad:output:0*
T0*
_output_shapes
: v
gradients/while_grad/Identity_1Identity(gradients/while_grad/while_grad:output:1*
_output_shapes
: *
T0v
gradients/while_grad/Identity_2Identity(gradients/while_grad/while_grad:output:2*
T0*
_output_shapes
: v
gradients/while_grad/Identity_3Identity(gradients/while_grad/while_grad:output:3*
_output_shapes
: *
T0?
gradients/while_grad/Identity_4Identity(gradients/while_grad/while_grad:output:4*
T0*(
_output_shapes
:???????????
gradients/while_grad/Identity_5Identity(gradients/while_grad/while_grad:output:5*
T0*(
_output_shapes
:??????????v
gradients/while_grad/Identity_6Identity(gradients/while_grad/while_grad:output:6*
_output_shapes
: *
T0?
gradients/while_grad/Identity_7Identity(gradients/while_grad/while_grad:output:7*
T0*(
_output_shapes
:???????????
gradients/while_grad/Identity_8Identity(gradients/while_grad/while_grad:output:8*
T0*(
_output_shapes
:???????????
gradients/while_grad/Identity_9Identity(gradients/while_grad/while_grad:output:9*#
_output_shapes
:?????????*
T0x
 gradients/while_grad/Identity_10Identity)gradients/while_grad/while_grad:output:10*
T0*
_output_shapes
: x
 gradients/while_grad/Identity_11Identity)gradients/while_grad/while_grad:output:11*
T0*
_output_shapes
: x
 gradients/while_grad/Identity_12Identity)gradients/while_grad/while_grad:output:12*
T0*
_output_shapes
: x
 gradients/while_grad/Identity_13Identity)gradients/while_grad/while_grad:output:13*
T0*
_output_shapes
: x
 gradients/while_grad/Identity_14Identity)gradients/while_grad/while_grad:output:14*
_output_shapes
: *
T0x
 gradients/while_grad/Identity_15Identity)gradients/while_grad/while_grad:output:15*
_output_shapes
: *
T0x
 gradients/while_grad/Identity_16Identity)gradients/while_grad/while_grad:output:16*
T0*
_output_shapes
: x
 gradients/while_grad/Identity_17Identity)gradients/while_grad/while_grad:output:17*
_output_shapes
: *
T0x
 gradients/while_grad/Identity_18Identity)gradients/while_grad/while_grad:output:18*
_output_shapes
: *
T0x
 gradients/while_grad/Identity_19Identity)gradients/while_grad/while_grad:output:19*
_output_shapes
: *
T0x
 gradients/while_grad/Identity_20Identity)gradients/while_grad/while_grad:output:20*
_output_shapes
: *
T0x
 gradients/while_grad/Identity_21Identity)gradients/while_grad/while_grad:output:21*
_output_shapes
: *
T0x
 gradients/while_grad/Identity_22Identity)gradients/while_grad/while_grad:output:22*
T0*
_output_shapes
: x
 gradients/while_grad/Identity_23Identity)gradients/while_grad/while_grad:output:23*
T0*
_output_shapes
: x
 gradients/while_grad/Identity_24Identity)gradients/while_grad/while_grad:output:24*
_output_shapes
: *
T0x
 gradients/while_grad/Identity_25Identity)gradients/while_grad/while_grad:output:25*
_output_shapes
: *
T0x
 gradients/while_grad/Identity_26Identity)gradients/while_grad/while_grad:output:26*
_output_shapes
: *
T0x
 gradients/while_grad/Identity_27Identity)gradients/while_grad/while_grad:output:27*
T0*
_output_shapes
: ?
<gradients/TensorArrayUnstack/TensorListFromTensor_grad/ShapeShapeFgradients_tensorarrayunstack_tensorlistfromtensor_grad_shape_transpose*
T0*
_output_shapes
:?
Bgradients/TensorArrayUnstack/TensorListFromTensor_grad/Slice/beginConst*
valueB:*
dtype0*
_output_shapes
:?
Agradients/TensorArrayUnstack/TensorListFromTensor_grad/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
??????????
<gradients/TensorArrayUnstack/TensorListFromTensor_grad/SliceSliceEgradients/TensorArrayUnstack/TensorListFromTensor_grad/Shape:output:0Kgradients/TensorArrayUnstack/TensorListFromTensor_grad/Slice/begin:output:0Jgradients/TensorArrayUnstack/TensorListFromTensor_grad/Slice/size:output:0*
_output_shapes
:*
T0*
Index0?
Fgradients/TensorArrayUnstack/TensorListFromTensor_grad/TensorListStackTensorListStack(gradients/while_grad/Identity_6:output:0Egradients/TensorArrayUnstack/TensorListFromTensor_grad/Slice:output:0*
element_dtype0*,
_output_shapes
:??????????*
num_elements?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	TransposeOgradients/TensorArrayUnstack/TensorListFromTensor_grad/TensorListStack:tensor:0.gradients/transpose_grad/InvertPermutation:y:0*,
_output_shapes
:??????????*
T0"K
gradients_while_grad_identity_4(gradients/while_grad/Identity_4:output:0"K
gradients_while_grad_identity_5(gradients/while_grad/Identity_5:output:0"K
gradients_while_grad_identity_7(gradients/while_grad/Identity_7:output:0"K
gradients_while_grad_identity_8(gradients/while_grad/Identity_8:output:0"K
gradients_while_grad_identity_9(gradients/while_grad/Identity_9:output:0"L
"gradients_transpose_grad_transpose&gradients/transpose_grad/transpose:y:0*?
_input_shapes?
?:??????????:??????????:??????????:??????????: :??????????::::: :::: : : : : : : : : : : : : : : : : : : : :??????????:*=
api_implements+)lstm_f0f2b305-d1ba-4093-8a99-2644b1263515*8
forward_function_name__forward_standard_lstm_20668*
api_preferred_deviceCPU:  : : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : : :  :! :" :# 
?
?
while_cond_19977
while_loop_counter
while_maximum_iterations
time
tensorarrayv2_1

init_h

init_c
less_1_strided_slice+
'tensorarrayunstack_tensorlistfromtensor
recurrent_kernel
recurrent_recurrent_kernel
recurrent_bias
identity
[
LessLesswhile_loop_counterwhile_maximum_iterations*
_output_shapes
: *
T0K
Less_1Lesstimeless_1_strided_slice*
_output_shapes
: *
T0F

LogicalAnd
LogicalAndLess:z:0
Less_1:z:0*
_output_shapes
: E
IdentityIdentityLogicalAnd:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*S
_input_shapesB
@: : : : :??????????:??????????: : :::: : : :	 :
 :  : : : : : 
??
?
-__inference___backward_cudnn_lstm_20202_20380
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_strided_slice_2_grad_shape_cudnnrnnv3I
Egradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stackK
Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_1K
Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_2A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm3
/gradients_strided_slice_3_grad_shape_cudnnrnnv3I
Egradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stackK
Ggradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_1K
Ggradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_23
/gradients_strided_slice_4_grad_shape_cudnnrnnv3I
Egradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stackK
Ggradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_1K
Ggradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_2#
gradients_zeros_like_cudnnrnnv3:
6gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_transpose;
7gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims=
9gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims_19
5gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_concat_15
1gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_fill;
7gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_cudnnrnnv3=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis&
"gradients_transpose_grad_transpose%
!gradients_expanddims_grad_reshape'
#gradients_expanddims_1_grad_reshape
gradients_split_grad_concat!
gradients_split_1_grad_concat!
gradients_concat_grad_slice_1?_
gradients/grad_ys_0Identityplaceholder*(
_output_shapes
:??????????*
T0e
gradients/grad_ys_1Identityplaceholder_1*,
_output_shapes
:??????????*
T0a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:??????????a
gradients/grad_ys_3Identityplaceholder_3*(
_output_shapes
:??????????*
T0O
gradients/grad_ys_4Identityplaceholder_4*
_output_shapes
: *
T0?
$gradients/strided_slice_2_grad/ShapeShape/gradients_strided_slice_2_grad_shape_cudnnrnnv3*
T0*
_output_shapes
:?
/gradients/strided_slice_2_grad/StridedSliceGradStridedSliceGrad-gradients/strided_slice_2_grad/Shape:output:0Egradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stackGgradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_1Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_2gradients/grad_ys_0:output:0*
T0*,
_output_shapes
:??????????*
shrink_axis_mask*
Index0?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*,
_output_shapes
:??????????*
T0?
$gradients/strided_slice_3_grad/ShapeShape/gradients_strided_slice_3_grad_shape_cudnnrnnv3*
_output_shapes
:*
T0?
/gradients/strided_slice_3_grad/StridedSliceGradStridedSliceGrad-gradients/strided_slice_3_grad/Shape:output:0Egradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stackGgradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_1Ggradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_2gradients/grad_ys_2:output:0*
shrink_axis_mask*
T0*,
_output_shapes
:??????????*
Index0?
$gradients/strided_slice_4_grad/ShapeShape/gradients_strided_slice_4_grad_shape_cudnnrnnv3*
T0*
_output_shapes
:?
/gradients/strided_slice_4_grad/StridedSliceGradStridedSliceGrad-gradients/strided_slice_4_grad/Shape:output:0Egradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stackGgradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_1Ggradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_2gradients/grad_ys_3:output:0*
Index0*
T0*,
_output_shapes
:??????????*
shrink_axis_mask?
gradients/AddNAddN8gradients/strided_slice_2_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*B
_class8
64loc:@gradients/strided_slice_2_grad/StridedSliceGrad*,
_output_shapes
:??????????e
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnnv3*
_output_shapes
:*
T0?
,gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3CudnnRNNBackpropV36gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_transpose7gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims9gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims_15gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_concat_11gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_fill/gradients_strided_slice_2_grad_shape_cudnnrnnv3/gradients_strided_slice_3_grad_shape_cudnnrnnv3/gradients_strided_slice_4_grad_shape_cudnnrnnv3gradients/AddN:sum:08gradients/strided_slice_3_grad/StridedSliceGrad:output:08gradients/strided_slice_4_grad/StridedSliceGrad:output:0gradients_zeros_like_cudnnrnnv37gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_cudnnrnnv3*
T0*d
_output_shapesR
P:??????????:??????????:??????????:???
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose=gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:??????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape?gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:??????????y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape?gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:??????????^
gradients/concat_1_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: ?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
valueB:??*
dtype0*
_output_shapes
:k
gradients/concat_1_grad/Shape_1Const*
dtype0*
valueB:??*
_output_shapes
:k
gradients/concat_1_grad/Shape_2Const*
dtype0*
valueB:??*
_output_shapes
:k
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
valueB:??*
dtype0k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:??k
gradients/concat_1_grad/Shape_5Const*
dtype0*
valueB:??*
_output_shapes
:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
valueB:??*
dtype0k
gradients/concat_1_grad/Shape_7Const*
valueB:??*
_output_shapes
:*
dtype0j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:?j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
valueB:?*
dtype0k
 gradients/concat_1_grad/Shape_10Const*
valueB:?*
dtype0*
_output_shapes
:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:?k
 gradients/concat_1_grad/Shape_12Const*
valueB:?*
_output_shapes
:*
dtype0k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:?k
 gradients/concat_1_grad/Shape_14Const*
dtype0*
valueB:?*
_output_shapes
:k
 gradients/concat_1_grad/Shape_15Const*
dtype0*
valueB:?*
_output_shapes
:?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*t
_output_shapesb
`::::::::::::::::*
N?
gradients/concat_1_grad/SliceSlice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:???
gradients/concat_1_grad/Slice_1Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
T0*
Index0*
_output_shapes

:???
gradients/concat_1_grad/Slice_2Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
_output_shapes

:??*
T0*
Index0?
gradients/concat_1_grad/Slice_3Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
_output_shapes

:??*
T0*
Index0?
gradients/concat_1_grad/Slice_4Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
_output_shapes

:??*
Index0*
T0?
gradients/concat_1_grad/Slice_5Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
_output_shapes

:??*
T0*
Index0?
gradients/concat_1_grad/Slice_6Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
_output_shapes

:??*
T0*
Index0?
gradients/concat_1_grad/Slice_7Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:???
gradients/concat_1_grad/Slice_8Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
T0*
Index0*
_output_shapes	
:??
gradients/concat_1_grad/Slice_9Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
_output_shapes	
:?*
T0*
Index0?
 gradients/concat_1_grad/Slice_10Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:??
 gradients/concat_1_grad/Slice_11Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
_output_shapes	
:?*
Index0*
T0?
 gradients/concat_1_grad/Slice_12Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:??
 gradients/concat_1_grad/Slice_13Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:??
 gradients/concat_1_grad/Slice_14Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
_output_shapes	
:?*
T0?
 gradients/concat_1_grad/Slice_15Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
T0*
Index0*
_output_shapes	
:?m
gradients/Reshape_grad/ShapeConst*
valueB"?   ?  *
dtype0*
_output_shapes
:?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_1_grad/ShapeConst*
dtype0*
valueB"?   ?  *
_output_shapes
:?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0* 
_output_shapes
:
??*
T0o
gradients/Reshape_2_grad/ShapeConst*
dtype0*
valueB"?   ?  *
_output_shapes
:?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0* 
_output_shapes
:
??*
T0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
valueB"?   ?  *
dtype0?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"?   ?   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"?   ?   ?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0* 
_output_shapes
:
??*
T0o
gradients/Reshape_6_grad/ShapeConst*
valueB"?   ?   *
dtype0*
_output_shapes
:?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0* 
_output_shapes
:
??*
T0o
gradients/Reshape_7_grad/ShapeConst*
valueB"?   ?   *
dtype0*
_output_shapes
:?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0* 
_output_shapes
:
??*
T0i
gradients/Reshape_8_grad/ShapeConst*
dtype0*
valueB:?*
_output_shapes
:?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:?i
gradients/Reshape_9_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:??
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:?j
gradients/Reshape_10_grad/ShapeConst*
valueB:?*
dtype0*
_output_shapes
:?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
valueB:?*
dtype0?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:?j
gradients/Reshape_12_grad/ShapeConst*
valueB:?*
dtype0*
_output_shapes
:?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_13_grad/ShapeConst*
dtype0*
valueB:?*
_output_shapes
:?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_14_grad/ShapeConst*
dtype0*
valueB:?*
_output_shapes
:?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
valueB:?*
dtype0?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
_output_shapes	
:?*
T0?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
_output_shapes	
:?*
T0?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim* 
_output_shapes
:
??*
T0*
N?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim* 
_output_shapes
:
??*
T0*
N\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
_output_shapes
: *
T0f
gradients/concat_grad/ShapeConst*
dtype0*
valueB:?*
_output_shapes
:h
gradients/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0* 
_output_shapes
::*
N?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
_output_shapes	
:?*
T0?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
T0*
_output_shapes	
:?*
Index0"G
gradients_split_1_grad_concat&gradients/split_1_grad/concat:output:0"O
!gradients_expanddims_grad_reshape*gradients/ExpandDims_grad/Reshape:output:0"G
gradients_concat_grad_slice_1&gradients/concat_grad/Slice_1:output:0"C
gradients_split_grad_concat$gradients/split_grad/concat:output:0"S
#gradients_expanddims_1_grad_reshape,gradients/ExpandDims_1_grad/Reshape:output:0"L
"gradients_transpose_grad_transpose&gradients/transpose_grad/transpose:y:0*5
forward_function_name__forward_cudnn_lstm_20204*
api_preferred_deviceGPU*?
_input_shapes?
?:??????????:??????????:??????????:??????????: :??????????:::::??????????::::??????????:::::??????????:??????????:??????????:??:?????????:::??????????:??????????: ::::::::: : : : *=
api_implements+)lstm_f0f2b305-d1ba-4093-8a99-2644b1263515:  : : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : : :  :! :" :# :$ :% :& :' :( 
?
?
%while_cond_19977_rewritten_grad_21051
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
placeholder_8
placeholder_9
placeholder_10
placeholder_11
placeholder_12
placeholder_13
placeholder_14
placeholder_15
placeholder_16
placeholder_17
placeholder_18
placeholder_19
placeholder_20
placeholder_21
placeholder_22
placeholder_23
placeholder_24
placeholder_25
placeholder_26
placeholder_27
identity
I
LessLessplaceholderplaceholder_2*
_output_shapes
: *
T0?
IdentityIdentityLess:z:0*
_output_shapes
: *
T0
"
identityIdentity:output:0*?
_input_shapes?
?: : : : :??????????:??????????: :??????????????????:??????????????????:?????????: : : : : : : : : : : : : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : :  : : : : : : : 
??
?
while_body_19978_grad_20768
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
placeholder_8
placeholder_9H
Dgradients_tensorarrayv2write_tensorlistsetitem_grad_zeros_like_mul_2N
Jgradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_time(
$gradients_mul_2_grad_shape_sigmoid_2'
#gradients_mul_2_grad_shape_1_tanh_1"
gradients_add_1_grad_shape_mul&
"gradients_add_1_grad_shape_1_mul_1&
"gradients_mul_grad_shape_sigmoid_1%
!gradients_mul_grad_shape_1_init_c&
"gradients_mul_1_grad_shape_sigmoid%
!gradients_mul_1_grad_shape_1_tanh/
+gradients_split_grad_concat_split_split_dim#
gradients_add_grad_shape_matmul'
#gradients_add_grad_shape_1_matmul_16
2gradients_matmul_grad_matmul_matmul_readvariableopF
Bgradients_matmul_grad_matmul_1_tensorarrayv2read_tensorlistgetitem:
6gradients_matmul_1_grad_matmul_matmul_1_readvariableop+
'gradients_matmul_1_grad_matmul_1_init_h?
?gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9T
Pgradients_tensorarrayv2write_tensorlistsetitem_grad_zeros_like_tensorlistpopback[
Wgradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_tensorlistpopback0
,gradients_mul_2_grad_shape_tensorlistpopback2
.gradients_mul_2_grad_shape_1_tensorlistpopback0
,gradients_add_1_grad_shape_tensorlistpopback2
.gradients_add_1_grad_shape_1_tensorlistpopback.
*gradients_mul_grad_shape_tensorlistpopback0
,gradients_mul_grad_shape_1_tensorlistpopback0
,gradients_mul_1_grad_shape_tensorlistpopback2
.gradients_mul_1_grad_shape_1_tensorlistpopback1
-gradients_split_grad_concat_tensorlistpopback.
*gradients_add_grad_shape_tensorlistpopback0
,gradients_add_grad_shape_1_tensorlistpopback2
.gradients_matmul_grad_matmul_tensorlistpopback4
0gradients_matmul_grad_matmul_1_tensorlistpopback4
0gradients_matmul_1_grad_matmul_tensorlistpopback6
2gradients_matmul_1_grad_matmul_1_tensorlistpopbackY
Ugradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorlistpopbackO
gradients/grad_ys_0Identityplaceholder_3*
_output_shapes
: *
T0a
gradients/grad_ys_1Identityplaceholder_4*(
_output_shapes
:??????????*
T0a
gradients/grad_ys_2Identityplaceholder_5*
T0*(
_output_shapes
:??????????O
gradients/grad_ys_3Identityplaceholder_6*
T0*
_output_shapes
: i
gradients/grad_ys_4Identityplaceholder_7*
T0*0
_output_shapes
:??????????????????i
gradients/grad_ys_5Identityplaceholder_8*
T0*0
_output_shapes
:??????????????????\
gradients/grad_ys_6Identityplaceholder_9*
T0*#
_output_shapes
:??????????
^gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like/TensorListPopBack/element_shapeConst*
_output_shapes
: *
valueB :
?????????*
dtype0?
Pgradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like/TensorListPopBackTensorListPopBackDgradients_tensorarrayv2write_tensorlistsetitem_grad_zeros_like_mul_2ggradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like/TensorListPopBack/element_shape:output:0**
_output_shapes
: :??????????*
element_dtype0?
>gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like	ZerosLikeYgradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like/TensorListPopBack:tensor:0*
T0*(
_output_shapes
:???????????
egradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Wgradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBackTensorListPopBackJgradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_timengradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack/element_shape:output:0*
element_dtype0*
_output_shapes
: : ?
Egradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItemTensorListSetItemgradients/grad_ys_0:output:0`gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:tensor:0Bgradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like:y:0*
_output_shapes
: *
element_dtype0?
9gradients/TensorArrayV2Write/TensorListSetItem_grad/ShapeShapeYgradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like/TensorListPopBack:tensor:0*
T0*
_output_shapes
:?
Egradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListGetItemTensorListGetItemgradients/grad_ys_0:output:0`gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:tensor:0Bgradients/TensorArrayV2Write/TensorListSetItem_grad/Shape:output:0*
element_dtype0*(
_output_shapes
:???????????
gradients/AddNAddNgradients/grad_ys_1:output:0Lgradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListGetItem:item:0*
N*&
_class
loc:@gradients/grad_ys_1*(
_output_shapes
:??????????*
T0?
:gradients/mul_2_grad/Shape/TensorListPopBack/element_shapeConst*
valueB :
?????????*
dtype0*
_output_shapes
: ?
,gradients/mul_2_grad/Shape/TensorListPopBackTensorListPopBack$gradients_mul_2_grad_shape_sigmoid_2Cgradients/mul_2_grad/Shape/TensorListPopBack/element_shape:output:0*2
_output_shapes 
: :??????????????????*
element_dtype0
gradients/mul_2_grad/ShapeShape5gradients/mul_2_grad/Shape/TensorListPopBack:tensor:0*
T0*
_output_shapes
:?
<gradients/mul_2_grad/Shape_1/TensorListPopBack/element_shapeConst*
dtype0*
_output_shapes
: *
valueB :
??????????
.gradients/mul_2_grad/Shape_1/TensorListPopBackTensorListPopBack#gradients_mul_2_grad_shape_1_tanh_1Egradients/mul_2_grad/Shape_1/TensorListPopBack/element_shape:output:0*
element_dtype0**
_output_shapes
: :???????????
gradients/mul_2_grad/Shape_1Shape7gradients/mul_2_grad/Shape_1/TensorListPopBack:tensor:0*
_output_shapes
:*
T0?
*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/mul_2_grad/Shape:output:0%gradients/mul_2_grad/Shape_1:output:0*2
_output_shapes 
:?????????:??????????
gradients/mul_2_grad/MulMulgradients/AddN:sum:07gradients/mul_2_grad/Shape_1/TensorListPopBack:tensor:0*
T0*(
_output_shapes
:???????????
gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul:z:0/gradients/mul_2_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:?
gradients/mul_2_grad/ReshapeReshape!gradients/mul_2_grad/Sum:output:0#gradients/mul_2_grad/Shape:output:0*
T0*0
_output_shapes
:???????????????????
gradients/mul_2_grad/Mul_1Mul5gradients/mul_2_grad/Shape/TensorListPopBack:tensor:0gradients/AddN:sum:0*
T0*(
_output_shapes
:???????????
gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/Mul_1:z:0/gradients/mul_2_grad/BroadcastGradientArgs:r1:0*
_output_shapes
:*
T0?
gradients/mul_2_grad/Reshape_1Reshape#gradients/mul_2_grad/Sum_1:output:0%gradients/mul_2_grad/Shape_1:output:0*
T0*(
_output_shapes
:???????????
$gradients/Sigmoid_2_grad/SigmoidGradSigmoidGrad5gradients/mul_2_grad/Shape/TensorListPopBack:tensor:0%gradients/mul_2_grad/Reshape:output:0*0
_output_shapes
:??????????????????*
T0?
gradients/Tanh_1_grad/TanhGradTanhGrad7gradients/mul_2_grad/Shape_1/TensorListPopBack:tensor:0'gradients/mul_2_grad/Reshape_1:output:0*(
_output_shapes
:??????????*
T0?
gradients/AddN_1AddNgradients/grad_ys_2:output:0"gradients/Tanh_1_grad/TanhGrad:z:0*&
_class
loc:@gradients/grad_ys_2*(
_output_shapes
:??????????*
T0*
N?
:gradients/add_1_grad/Shape/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,gradients/add_1_grad/Shape/TensorListPopBackTensorListPopBackgradients_add_1_grad_shape_mulCgradients/add_1_grad/Shape/TensorListPopBack/element_shape:output:0*
element_dtype0**
_output_shapes
: :??????????
gradients/add_1_grad/ShapeShape5gradients/add_1_grad/Shape/TensorListPopBack:tensor:0*
T0*
_output_shapes
:?
<gradients/add_1_grad/Shape_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
valueB :
?????????*
dtype0?
.gradients/add_1_grad/Shape_1/TensorListPopBackTensorListPopBack"gradients_add_1_grad_shape_1_mul_1Egradients/add_1_grad/Shape_1/TensorListPopBack/element_shape:output:0*2
_output_shapes 
: :??????????????????*
element_dtype0?
gradients/add_1_grad/Shape_1Shape7gradients/add_1_grad/Shape_1/TensorListPopBack:tensor:0*
_output_shapes
:*
T0?
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/add_1_grad/Shape:output:0%gradients/add_1_grad/Shape_1:output:0*2
_output_shapes 
:?????????:??????????
gradients/add_1_grad/SumSumgradients/AddN_1:sum:0/gradients/add_1_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:?
gradients/add_1_grad/ReshapeReshape!gradients/add_1_grad/Sum:output:0#gradients/add_1_grad/Shape:output:0*(
_output_shapes
:??????????*
T0?
gradients/add_1_grad/Sum_1Sumgradients/AddN_1:sum:0/gradients/add_1_grad/BroadcastGradientArgs:r1:0*
_output_shapes
:*
T0?
gradients/add_1_grad/Reshape_1Reshape#gradients/add_1_grad/Sum_1:output:0%gradients/add_1_grad/Shape_1:output:0*
T0*0
_output_shapes
:???????????????????
8gradients/mul_grad/Shape/TensorListPopBack/element_shapeConst*
dtype0*
valueB :
?????????*
_output_shapes
: ?
*gradients/mul_grad/Shape/TensorListPopBackTensorListPopBack"gradients_mul_grad_shape_sigmoid_1Agradients/mul_grad/Shape/TensorListPopBack/element_shape:output:0*
element_dtype0*2
_output_shapes 
: :??????????????????{
gradients/mul_grad/ShapeShape3gradients/mul_grad/Shape/TensorListPopBack:tensor:0*
_output_shapes
:*
T0?
:gradients/mul_grad/Shape_1/TensorListPopBack/element_shapeConst*
dtype0*
valueB :
?????????*
_output_shapes
: ?
,gradients/mul_grad/Shape_1/TensorListPopBackTensorListPopBack!gradients_mul_grad_shape_1_init_cCgradients/mul_grad/Shape_1/TensorListPopBack/element_shape:output:0*
element_dtype0**
_output_shapes
: :??????????
gradients/mul_grad/Shape_1Shape5gradients/mul_grad/Shape_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:?
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/mul_grad/Shape:output:0#gradients/mul_grad/Shape_1:output:0*2
_output_shapes 
:?????????:??????????
gradients/mul_grad/MulMul%gradients/add_1_grad/Reshape:output:05gradients/mul_grad/Shape_1/TensorListPopBack:tensor:0*(
_output_shapes
:??????????*
T0?
gradients/mul_grad/SumSumgradients/mul_grad/Mul:z:0-gradients/mul_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:?
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sum:output:0!gradients/mul_grad/Shape:output:0*0
_output_shapes
:??????????????????*
T0?
gradients/mul_grad/Mul_1Mul3gradients/mul_grad/Shape/TensorListPopBack:tensor:0%gradients/add_1_grad/Reshape:output:0*(
_output_shapes
:??????????*
T0?
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1:z:0-gradients/mul_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:?
gradients/mul_grad/Reshape_1Reshape!gradients/mul_grad/Sum_1:output:0#gradients/mul_grad/Shape_1:output:0*
T0*(
_output_shapes
:???????????
:gradients/mul_1_grad/Shape/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,gradients/mul_1_grad/Shape/TensorListPopBackTensorListPopBack"gradients_mul_1_grad_shape_sigmoidCgradients/mul_1_grad/Shape/TensorListPopBack/element_shape:output:0*2
_output_shapes 
: :??????????????????*
element_dtype0
gradients/mul_1_grad/ShapeShape5gradients/mul_1_grad/Shape/TensorListPopBack:tensor:0*
T0*
_output_shapes
:?
<gradients/mul_1_grad/Shape_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.gradients/mul_1_grad/Shape_1/TensorListPopBackTensorListPopBack!gradients_mul_1_grad_shape_1_tanhEgradients/mul_1_grad/Shape_1/TensorListPopBack/element_shape:output:0*
element_dtype0*2
_output_shapes 
: :???????????????????
gradients/mul_1_grad/Shape_1Shape7gradients/mul_1_grad/Shape_1/TensorListPopBack:tensor:0*
_output_shapes
:*
T0?
*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/mul_1_grad/Shape:output:0%gradients/mul_1_grad/Shape_1:output:0*2
_output_shapes 
:?????????:??????????
gradients/mul_1_grad/MulMul'gradients/add_1_grad/Reshape_1:output:07gradients/mul_1_grad/Shape_1/TensorListPopBack:tensor:0*0
_output_shapes
:??????????????????*
T0?
gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul:z:0/gradients/mul_1_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:?
gradients/mul_1_grad/ReshapeReshape!gradients/mul_1_grad/Sum:output:0#gradients/mul_1_grad/Shape:output:0*0
_output_shapes
:??????????????????*
T0?
gradients/mul_1_grad/Mul_1Mul5gradients/mul_1_grad/Shape/TensorListPopBack:tensor:0'gradients/add_1_grad/Reshape_1:output:0*
T0*0
_output_shapes
:???????????????????
gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1:z:0/gradients/mul_1_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:?
gradients/mul_1_grad/Reshape_1Reshape#gradients/mul_1_grad/Sum_1:output:0%gradients/mul_1_grad/Shape_1:output:0*
T0*0
_output_shapes
:???????????????????
$gradients/Sigmoid_1_grad/SigmoidGradSigmoidGrad3gradients/mul_grad/Shape/TensorListPopBack:tensor:0#gradients/mul_grad/Reshape:output:0*
T0*0
_output_shapes
:???????????????????
"gradients/Sigmoid_grad/SigmoidGradSigmoidGrad5gradients/mul_1_grad/Shape/TensorListPopBack:tensor:0%gradients/mul_1_grad/Reshape:output:0*0
_output_shapes
:??????????????????*
T0?
gradients/Tanh_grad/TanhGradTanhGrad7gradients/mul_1_grad/Shape_1/TensorListPopBack:tensor:0'gradients/mul_1_grad/Reshape_1:output:0*0
_output_shapes
:??????????????????*
T0?
;gradients/split_grad/concat/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-gradients/split_grad/concat/TensorListPopBackTensorListPopBack+gradients_split_grad_concat_split_split_dimDgradients/split_grad/concat/TensorListPopBack/element_shape:output:0*
_output_shapes
: : *
element_dtype0?
gradients/split_grad/concatConcatV2&gradients/Sigmoid_grad/SigmoidGrad:z:0(gradients/Sigmoid_1_grad/SigmoidGrad:z:0 gradients/Tanh_grad/TanhGrad:z:0(gradients/Sigmoid_2_grad/SigmoidGrad:z:06gradients/split_grad/concat/TensorListPopBack:tensor:0*
N*
T0*0
_output_shapes
:???????????????????
"gradients/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/split_grad/concat:output:0*#
_output_shapes
:?????????*
T0?
8gradients/add_grad/Shape/TensorListPopBack/element_shapeConst*
dtype0*
valueB :
?????????*
_output_shapes
: ?
*gradients/add_grad/Shape/TensorListPopBackTensorListPopBackgradients_add_grad_shape_matmulAgradients/add_grad/Shape/TensorListPopBack/element_shape:output:0*
element_dtype0*2
_output_shapes 
: :??????????????????{
gradients/add_grad/ShapeShape3gradients/add_grad/Shape/TensorListPopBack:tensor:0*
T0*
_output_shapes
:?
:gradients/add_grad/Shape_1/TensorListPopBack/element_shapeConst*
valueB :
?????????*
dtype0*
_output_shapes
: ?
,gradients/add_grad/Shape_1/TensorListPopBackTensorListPopBack#gradients_add_grad_shape_1_matmul_1Cgradients/add_grad/Shape_1/TensorListPopBack/element_shape:output:0*2
_output_shapes 
: :??????????????????*
element_dtype0
gradients/add_grad/Shape_1Shape5gradients/add_grad/Shape_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:?
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/add_grad/Shape:output:0#gradients/add_grad/Shape_1:output:0*2
_output_shapes 
:?????????:??????????
gradients/add_grad/SumSum$gradients/split_grad/concat:output:0-gradients/add_grad/BroadcastGradientArgs:r0:0*
_output_shapes
:*
T0?
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0!gradients/add_grad/Shape:output:0*
T0*0
_output_shapes
:???????????????????
gradients/add_grad/Sum_1Sum$gradients/split_grad/concat:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:?
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*0
_output_shapes
:??????????????????*
T0?
<gradients/MatMul_grad/MatMul/TensorListPopBack/element_shapeConst*
valueB :
?????????*
_output_shapes
: *
dtype0?
.gradients/MatMul_grad/MatMul/TensorListPopBackTensorListPopBack2gradients_matmul_grad_matmul_matmul_readvariableopEgradients/MatMul_grad/MatMul/TensorListPopBack/element_shape:output:0*
_output_shapes
: :*
element_dtype0?
gradients/MatMul_grad/MatMulMatMul#gradients/add_grad/Reshape:output:07gradients/MatMul_grad/MatMul/TensorListPopBack:tensor:0*
transpose_b(*(
_output_shapes
:??????????*
T0?
>gradients/MatMul_grad/MatMul_1/TensorListPopBack/element_shapeConst*
valueB :
?????????*
_output_shapes
: *
dtype0?
0gradients/MatMul_grad/MatMul_1/TensorListPopBackTensorListPopBackBgradients_matmul_grad_matmul_1_tensorarrayv2read_tensorlistgetitemGgradients/MatMul_grad/MatMul_1/TensorListPopBack/element_shape:output:0**
_output_shapes
: :??????????*
element_dtype0?
gradients/MatMul_grad/MatMul_1MatMul9gradients/MatMul_grad/MatMul_1/TensorListPopBack:tensor:0#gradients/add_grad/Reshape:output:0*(
_output_shapes
:??????????*
transpose_a(*
T0?
>gradients/MatMul_1_grad/MatMul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
valueB :
?????????*
dtype0?
0gradients/MatMul_1_grad/MatMul/TensorListPopBackTensorListPopBack6gradients_matmul_1_grad_matmul_matmul_1_readvariableopGgradients/MatMul_1_grad/MatMul/TensorListPopBack/element_shape:output:0*
element_dtype0*
_output_shapes
: :?
gradients/MatMul_1_grad/MatMulMatMul%gradients/add_grad/Reshape_1:output:09gradients/MatMul_1_grad/MatMul/TensorListPopBack:tensor:0*
transpose_b(*(
_output_shapes
:??????????*
T0?
@gradients/MatMul_1_grad/MatMul_1/TensorListPopBack/element_shapeConst*
valueB :
?????????*
dtype0*
_output_shapes
: ?
2gradients/MatMul_1_grad/MatMul_1/TensorListPopBackTensorListPopBack'gradients_matmul_1_grad_matmul_1_init_hIgradients/MatMul_1_grad/MatMul_1/TensorListPopBack/element_shape:output:0*
element_dtype0**
_output_shapes
: :???????????
 gradients/MatMul_1_grad/MatMul_1MatMul;gradients/MatMul_1_grad/MatMul_1/TensorListPopBack:tensor:0%gradients/add_grad/Reshape_1:output:0*
T0*(
_output_shapes
:??????????*
transpose_a(?
gradients/AddN_2AddNgradients/grad_ys_6:output:0+gradients/BiasAdd_grad/BiasAddGrad:output:0*#
_output_shapes
:?????????*&
_class
loc:@gradients/grad_ys_6*
T0*
N?
cgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength/TensorListPopBack/element_shapeConst*
_output_shapes
: *
valueB :
?????????*
dtype0?
Ugradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength/TensorListPopBackTensorListPopBack?gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0lgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength/TensorListPopBack/element_shape:output:0*
element_dtype0*
_output_shapes
: : ?
Cgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLengthTensorListLength^gradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength/TensorListPopBack:tensor:0*
_output_shapes
: ?
Igradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShapeTensorListElementShape^gradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength/TensorListPopBack:tensor:0*#
_output_shapes
:?????????*

shape_type0?
Dgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListReserveTensorListReserveYgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape:element_shape:0Lgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength:length:0*

shape_type0*
_output_shapes
: *
element_dtype0?
Dgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListSetItemTensorListSetItemMgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListReserve:handle:0`gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:tensor:0&gradients/MatMul_grad/MatMul:product:0*
element_dtype0*
_output_shapes
: ?
gradients/AddN_3AddNgradients/grad_ys_3:output:0Tgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListSetItem:output_handle:0*
_output_shapes
: *&
_class
loc:@gradients/grad_ys_3*
N*
T0?
gradients/AddN_4AddNgradients/grad_ys_4:output:0(gradients/MatMul_grad/MatMul_1:product:0*(
_output_shapes
:??????????*&
_class
loc:@gradients/grad_ys_4*
T0*
N?
gradients/AddN_5AddNgradients/grad_ys_5:output:0*gradients/MatMul_1_grad/MatMul_1:product:0*
N*
T0*&
_class
loc:@gradients/grad_ys_5*(
_output_shapes
:??????????G
add/yConst*
dtype0*
_output_shapes
: *
value	B :H
addAddplaceholderadd/y:output:0*
_output_shapes
: *
T0>
IdentityIdentityadd:z:0*
_output_shapes
: *
T0F

Identity_1Identityplaceholder_1*
T0*
_output_shapes
: F

Identity_2Identityplaceholder_2*
_output_shapes
: *
T0?

Identity_3IdentityUgradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem:output_handle:0*
_output_shapes
: *
T0s

Identity_4Identity(gradients/MatMul_1_grad/MatMul:product:0*
T0*(
_output_shapes
:??????????p

Identity_5Identity%gradients/mul_grad/Reshape_1:output:0*
T0*(
_output_shapes
:??????????O

Identity_6Identitygradients/AddN_3:sum:0*
_output_shapes
: *
T0a

Identity_7Identitygradients/AddN_4:sum:0*(
_output_shapes
:??????????*
T0a

Identity_8Identitygradients/AddN_5:sum:0*(
_output_shapes
:??????????*
T0\

Identity_9Identitygradients/AddN_2:sum:0*#
_output_shapes
:?????????*
T0"p
.gradients_matmul_grad_matmul_tensorlistpopback>gradients/MatMul_grad/MatMul/TensorListPopBack:output_handle:0"p
.gradients_mul_2_grad_shape_1_tensorlistpopback>gradients/mul_2_grad/Shape_1/TensorListPopBack:output_handle:0"p
.gradients_add_1_grad_shape_1_tensorlistpopback>gradients/add_1_grad/Shape_1/TensorListPopBack:output_handle:0"?
Ugradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorlistpopbackegradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength/TensorListPopBack:output_handle:0"?
Pgradients_tensorarrayv2write_tensorlistsetitem_grad_zeros_like_tensorlistpopback`gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like/TensorListPopBack:output_handle:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"l
,gradients_mul_1_grad_shape_tensorlistpopback<gradients/mul_1_grad/Shape/TensorListPopBack:output_handle:0"!

identity_9Identity_9:output:0"l
,gradients_mul_grad_shape_1_tensorlistpopback<gradients/mul_grad/Shape_1/TensorListPopBack:output_handle:0"l
,gradients_add_1_grad_shape_tensorlistpopback<gradients/add_1_grad/Shape/TensorListPopBack:output_handle:0"t
0gradients_matmul_grad_matmul_1_tensorlistpopback@gradients/MatMul_grad/MatMul_1/TensorListPopBack:output_handle:0"t
0gradients_matmul_1_grad_matmul_tensorlistpopback@gradients/MatMul_1_grad/MatMul/TensorListPopBack:output_handle:0"?
Wgradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_tensorlistpopbackggradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:output_handle:0"l
,gradients_add_grad_shape_1_tensorlistpopback<gradients/add_grad/Shape_1/TensorListPopBack:output_handle:0"p
.gradients_mul_1_grad_shape_1_tensorlistpopback>gradients/mul_1_grad/Shape_1/TensorListPopBack:output_handle:0"h
*gradients_mul_grad_shape_tensorlistpopback:gradients/mul_grad/Shape/TensorListPopBack:output_handle:0"l
,gradients_mul_2_grad_shape_tensorlistpopback<gradients/mul_2_grad/Shape/TensorListPopBack:output_handle:0"h
*gradients_add_grad_shape_tensorlistpopback:gradients/add_grad/Shape/TensorListPopBack:output_handle:0"x
2gradients_matmul_1_grad_matmul_1_tensorlistpopbackBgradients/MatMul_1_grad/MatMul_1/TensorListPopBack:output_handle:0"n
-gradients_split_grad_concat_tensorlistpopback=gradients/split_grad/concat/TensorListPopBack:output_handle:0*?
_input_shapes?
?: : : : :??????????:??????????: :??????????????????:??????????????????:?????????: : : : : : : : : : : : : : : : : : : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : :  : 
?+
?
while_body_19978
while_loop_counter
while_maximum_iterations
time
tensorarrayv2_1

init_h

init_c
strided_slice_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
(matmul_readvariableop_recurrent_kernel_08
4matmul_1_readvariableop_recurrent_recurrent_kernel_0+
'biasadd_readvariableop_recurrent_bias_0
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_sliceO
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
&matmul_readvariableop_recurrent_kernel6
2matmul_1_readvariableop_recurrent_recurrent_kernel)
%biasadd_readvariableop_recurrent_bias??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
valueB"?????  *
dtype0*
_output_shapes
:?
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0time:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
MatMul/ReadVariableOpReadVariableOp(matmul_readvariableop_recurrent_kernel_0*
dtype0* 
_output_shapes
:
???
MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
MatMul_1/ReadVariableOpReadVariableOp4matmul_1_readvariableop_recurrent_recurrent_kernel_0*
dtype0* 
_output_shapes
:
??n
MatMul_1MatMulinit_hMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
addAddMatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????{
BiasAdd/ReadVariableOpReadVariableOp'biasadd_readvariableop_recurrent_bias_0*
dtype0*
_output_shapes	
:?n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????G
ConstConst*
_output_shapes
: *
dtype0*
value	B :Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*
	num_split*d
_output_shapesR
P:??????????:??????????:??????????:??????????U
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*(
_output_shapes
:??????????*
T0T
mulMulSigmoid_1:y:0init_c*(
_output_shapes
:??????????*
T0O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????S
add_1Addmul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:???????????
$TensorArrayV2Write/TensorListSetItemTensorListSetItemtensorarrayv2_1time	mul_2:z:0*
_output_shapes
: *
element_dtype0I
add_2/yConst*
value	B :*
_output_shapes
: *
dtype0E
add_2Addtimeadd_2/y:output:0*
_output_shapes
: *
T0I
add_3/yConst*
_output_shapes
: *
value	B :*
dtype0S
add_3Addwhile_loop_counteradd_3/y:output:0*
_output_shapes
: *
T0?
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes
: ?

Identity_1Identitywhile_maximum_iterations^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes
: ?

Identity_2Identity	add_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
: *
T0?

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes
: ?

Identity_4Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:???????????

Identity_5Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????"R
&matmul_readvariableop_recurrent_kernel(matmul_readvariableop_recurrent_kernel_0"?
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0" 
strided_slicestrided_slice_0"!

identity_1Identity_1:output:0"P
%biasadd_readvariableop_recurrent_bias'biasadd_readvariableop_recurrent_bias_0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"!

identity_5Identity_5:output:0"j
2matmul_1_readvariableop_recurrent_recurrent_kernel4matmul_1_readvariableop_recurrent_recurrent_kernel_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp: : : :	 :
 :  : : : : : "7D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"?
local_variables??
]
	total_1:0total_1/Assigntotal_1/Read/ReadVariableOp:0(2total_1/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H
]
	count_1:0count_1/Assigncount_1/Read/ReadVariableOp:0(2count_1/Initializer/zeros:0@H
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"?
trainable_variables??
?
convolution/kernel:0convolution/kernel/Assign(convolution/kernel/Read/ReadVariableOp:0(2/convolution/kernel/Initializer/random_uniform:08

convolution/bias:0convolution/bias/Assign&convolution/bias/Read/ReadVariableOp:0(2$convolution/bias/Initializer/zeros:08
x
conv2/kernel:0conv2/kernel/Assign"conv2/kernel/Read/ReadVariableOp:0(2)conv2/kernel/Initializer/random_uniform:08
g
conv2/bias:0conv2/bias/Assign conv2/bias/Read/ReadVariableOp:0(2conv2/bias/Initializer/zeros:08
x
conv3/kernel:0conv3/kernel/Assign"conv3/kernel/Read/ReadVariableOp:0(2)conv3/kernel/Initializer/random_uniform:08
g
conv3/bias:0conv3/bias/Assign conv3/bias/Read/ReadVariableOp:0(2conv3/bias/Initializer/zeros:08
?
recurrent/kernel:0recurrent/kernel/Assign&recurrent/kernel/Read/ReadVariableOp:0(2-recurrent/kernel/Initializer/random_uniform:08
?
recurrent/recurrent_kernel:0!recurrent/recurrent_kernel/Assign0recurrent/recurrent_kernel/Read/ReadVariableOp:0(2.recurrent/recurrent_kernel/Initializer/mul_1:08
x
recurrent/bias:0recurrent/bias/Assign$recurrent/bias/Read/ReadVariableOp:0(2#recurrent/bias/Initializer/concat:08
|
hidden/kernel:0hidden/kernel/Assign#hidden/kernel/Read/ReadVariableOp:0(2*hidden/kernel/Initializer/random_uniform:08
k
hidden/bias:0hidden/bias/Assign!hidden/bias/Read/ReadVariableOp:0(2hidden/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08"?/
	variables?/?/
?
convolution/kernel:0convolution/kernel/Assign(convolution/kernel/Read/ReadVariableOp:0(2/convolution/kernel/Initializer/random_uniform:08

convolution/bias:0convolution/bias/Assign&convolution/bias/Read/ReadVariableOp:0(2$convolution/bias/Initializer/zeros:08
x
conv2/kernel:0conv2/kernel/Assign"conv2/kernel/Read/ReadVariableOp:0(2)conv2/kernel/Initializer/random_uniform:08
g
conv2/bias:0conv2/bias/Assign conv2/bias/Read/ReadVariableOp:0(2conv2/bias/Initializer/zeros:08
x
conv3/kernel:0conv3/kernel/Assign"conv3/kernel/Read/ReadVariableOp:0(2)conv3/kernel/Initializer/random_uniform:08
g
conv3/bias:0conv3/bias/Assign conv3/bias/Read/ReadVariableOp:0(2conv3/bias/Initializer/zeros:08
?
recurrent/kernel:0recurrent/kernel/Assign&recurrent/kernel/Read/ReadVariableOp:0(2-recurrent/kernel/Initializer/random_uniform:08
?
recurrent/recurrent_kernel:0!recurrent/recurrent_kernel/Assign0recurrent/recurrent_kernel/Read/ReadVariableOp:0(2.recurrent/recurrent_kernel/Initializer/mul_1:08
x
recurrent/bias:0recurrent/bias/Assign$recurrent/bias/Read/ReadVariableOp:0(2#recurrent/bias/Initializer/concat:08
|
hidden/kernel:0hidden/kernel/Assign#hidden/kernel/Read/ReadVariableOp:0(2*hidden/kernel/Initializer/random_uniform:08
k
hidden/bias:0hidden/bias/Assign!hidden/bias/Read/ReadVariableOp:0(2hidden/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:0H
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:0H
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:0H
?
Adam/learning_rate:0Adam/learning_rate/Assign(Adam/learning_rate/Read/ReadVariableOp:0(2.Adam/learning_rate/Initializer/initial_value:0H
?
Adam/convolution/kernel/m:0 Adam/convolution/kernel/m/Assign/Adam/convolution/kernel/m/Read/ReadVariableOp:0(2-Adam/convolution/kernel/m/Initializer/zeros:0
?
Adam/convolution/bias/m:0Adam/convolution/bias/m/Assign-Adam/convolution/bias/m/Read/ReadVariableOp:0(2+Adam/convolution/bias/m/Initializer/zeros:0
?
Adam/conv2/kernel/m:0Adam/conv2/kernel/m/Assign)Adam/conv2/kernel/m/Read/ReadVariableOp:0(2'Adam/conv2/kernel/m/Initializer/zeros:0
?
Adam/conv2/bias/m:0Adam/conv2/bias/m/Assign'Adam/conv2/bias/m/Read/ReadVariableOp:0(2%Adam/conv2/bias/m/Initializer/zeros:0
?
Adam/conv3/kernel/m:0Adam/conv3/kernel/m/Assign)Adam/conv3/kernel/m/Read/ReadVariableOp:0(2'Adam/conv3/kernel/m/Initializer/zeros:0
?
Adam/conv3/bias/m:0Adam/conv3/bias/m/Assign'Adam/conv3/bias/m/Read/ReadVariableOp:0(2%Adam/conv3/bias/m/Initializer/zeros:0
?
Adam/recurrent/kernel/m:0Adam/recurrent/kernel/m/Assign-Adam/recurrent/kernel/m/Read/ReadVariableOp:0(2+Adam/recurrent/kernel/m/Initializer/zeros:0
?
#Adam/recurrent/recurrent_kernel/m:0(Adam/recurrent/recurrent_kernel/m/Assign7Adam/recurrent/recurrent_kernel/m/Read/ReadVariableOp:0(25Adam/recurrent/recurrent_kernel/m/Initializer/zeros:0
?
Adam/recurrent/bias/m:0Adam/recurrent/bias/m/Assign+Adam/recurrent/bias/m/Read/ReadVariableOp:0(2)Adam/recurrent/bias/m/Initializer/zeros:0
?
Adam/hidden/kernel/m:0Adam/hidden/kernel/m/Assign*Adam/hidden/kernel/m/Read/ReadVariableOp:0(2(Adam/hidden/kernel/m/Initializer/zeros:0
?
Adam/hidden/bias/m:0Adam/hidden/bias/m/Assign(Adam/hidden/bias/m/Read/ReadVariableOp:0(2&Adam/hidden/bias/m/Initializer/zeros:0
?
Adam/output/kernel/m:0Adam/output/kernel/m/Assign*Adam/output/kernel/m/Read/ReadVariableOp:0(2(Adam/output/kernel/m/Initializer/zeros:0
?
Adam/output/bias/m:0Adam/output/bias/m/Assign(Adam/output/bias/m/Read/ReadVariableOp:0(2&Adam/output/bias/m/Initializer/zeros:0
?
Adam/convolution/kernel/v:0 Adam/convolution/kernel/v/Assign/Adam/convolution/kernel/v/Read/ReadVariableOp:0(2-Adam/convolution/kernel/v/Initializer/zeros:0
?
Adam/convolution/bias/v:0Adam/convolution/bias/v/Assign-Adam/convolution/bias/v/Read/ReadVariableOp:0(2+Adam/convolution/bias/v/Initializer/zeros:0
?
Adam/conv2/kernel/v:0Adam/conv2/kernel/v/Assign)Adam/conv2/kernel/v/Read/ReadVariableOp:0(2'Adam/conv2/kernel/v/Initializer/zeros:0
?
Adam/conv2/bias/v:0Adam/conv2/bias/v/Assign'Adam/conv2/bias/v/Read/ReadVariableOp:0(2%Adam/conv2/bias/v/Initializer/zeros:0
?
Adam/conv3/kernel/v:0Adam/conv3/kernel/v/Assign)Adam/conv3/kernel/v/Read/ReadVariableOp:0(2'Adam/conv3/kernel/v/Initializer/zeros:0
?
Adam/conv3/bias/v:0Adam/conv3/bias/v/Assign'Adam/conv3/bias/v/Read/ReadVariableOp:0(2%Adam/conv3/bias/v/Initializer/zeros:0
?
Adam/recurrent/kernel/v:0Adam/recurrent/kernel/v/Assign-Adam/recurrent/kernel/v/Read/ReadVariableOp:0(2+Adam/recurrent/kernel/v/Initializer/zeros:0
?
#Adam/recurrent/recurrent_kernel/v:0(Adam/recurrent/recurrent_kernel/v/Assign7Adam/recurrent/recurrent_kernel/v/Read/ReadVariableOp:0(25Adam/recurrent/recurrent_kernel/v/Initializer/zeros:0
?
Adam/recurrent/bias/v:0Adam/recurrent/bias/v/Assign+Adam/recurrent/bias/v/Read/ReadVariableOp:0(2)Adam/recurrent/bias/v/Initializer/zeros:0
?
Adam/hidden/kernel/v:0Adam/hidden/kernel/v/Assign*Adam/hidden/kernel/v/Read/ReadVariableOp:0(2(Adam/hidden/kernel/v/Initializer/zeros:0
?
Adam/hidden/bias/v:0Adam/hidden/bias/v/Assign(Adam/hidden/bias/v/Read/ReadVariableOp:0(2&Adam/hidden/bias/v/Initializer/zeros:0
?
Adam/output/kernel/v:0Adam/output/kernel/v/Assign*Adam/output/kernel/v/Read/ReadVariableOp:0(2(Adam/output/kernel/v/Initializer/zeros:0
?
Adam/output/bias/v:0Adam/output/bias/v/Assign(Adam/output/bias/v/Read/ReadVariableOp:0(2&Adam/output/bias/v/Initializer/zeros:0*@
__saved_model_init_op'%
__saved_model_init_op
init_1*?
train?
@
output_target/
output_target:0??????????????????
%
IR
IR:0?????????
0
Qdlin'
Qdlin:0??????????
=
Discharge_time+
Discharge_time:0?????????
0
Tdlin'
Tdlin:0??????????
%
QD
QD:0?????????G
&metrics/mae_remaining_cycles/update_op
metric_op_wrapper_1:0 
loss

loss/mul:0 B
#metrics/mae_current_cycle/update_op
metric_op_wrapper:0 9
"metrics/mae_remaining_cycles/value
Identity_46:0 J
predictions/output4
output/clippy/clip_by_value:0?????????6
metrics/mae_current_cycle/value
Identity_45:0 tensorflow/supervised/training*Q
__saved_model_train_op75
__saved_model_train_op
training_1/group_deps??
?!?!
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
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
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2
?
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
/
Sign
x"T
y"T"
Ttype:

2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?"eval*2.0.0-beta02v1.12.1-3259-gf59745a3818??
z
QdlinPlaceholder*
dtype0*0
_output_shapes
:??????????*%
shape:??????????
z
TdlinPlaceholder*%
shape:??????????*
dtype0*0
_output_shapes
:??????????
m
IRPlaceholder* 
shape:?????????*+
_output_shapes
:?????????*
dtype0
y
Discharge_timePlaceholder*+
_output_shapes
:?????????* 
shape:?????????*
dtype0
m
QDPlaceholder*
dtype0* 
shape:?????????*+
_output_shapes
:?????????
[
detail_concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
?
detail_concat/concatConcatV2QdlinTdlindetail_concat/concat/axis*
T0*
N*0
_output_shapes
:??????????
?
3convolution/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
_class
loc:@convolution/kernel*!
valueB"	          *
dtype0
?
1convolution/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *%
_class
loc:@convolution/kernel*
valueB
 *?c?*
dtype0
?
1convolution/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *?c>*%
_class
loc:@convolution/kernel*
_output_shapes
: 
?
;convolution/kernel/Initializer/random_uniform/RandomUniformRandomUniform3convolution/kernel/Initializer/random_uniform/shape*"
_output_shapes
:	 *%
_class
loc:@convolution/kernel*
T0*
dtype0
?
1convolution/kernel/Initializer/random_uniform/subSub1convolution/kernel/Initializer/random_uniform/max1convolution/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@convolution/kernel
?
1convolution/kernel/Initializer/random_uniform/mulMul;convolution/kernel/Initializer/random_uniform/RandomUniform1convolution/kernel/Initializer/random_uniform/sub*
T0*"
_output_shapes
:	 *%
_class
loc:@convolution/kernel
?
-convolution/kernel/Initializer/random_uniformAdd1convolution/kernel/Initializer/random_uniform/mul1convolution/kernel/Initializer/random_uniform/min*"
_output_shapes
:	 *
T0*%
_class
loc:@convolution/kernel
?
convolution/kernelVarHandleOp*%
_class
loc:@convolution/kernel*#
shared_nameconvolution/kernel*
_output_shapes
: *
shape:	 *
dtype0
u
3convolution/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconvolution/kernel*
_output_shapes
: 
?
convolution/kernel/AssignAssignVariableOpconvolution/kernel-convolution/kernel/Initializer/random_uniform*
dtype0*%
_class
loc:@convolution/kernel
?
&convolution/kernel/Read/ReadVariableOpReadVariableOpconvolution/kernel*
dtype0*%
_class
loc:@convolution/kernel*"
_output_shapes
:	 
?
"convolution/bias/Initializer/zerosConst*
valueB *    *
dtype0*
_output_shapes
: *#
_class
loc:@convolution/bias
?
convolution/biasVarHandleOp*
_output_shapes
: *#
_class
loc:@convolution/bias*
dtype0*
shape: *!
shared_nameconvolution/bias
q
1convolution/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconvolution/bias*
_output_shapes
: 
?
convolution/bias/AssignAssignVariableOpconvolution/bias"convolution/bias/Initializer/zeros*
dtype0*#
_class
loc:@convolution/bias
?
$convolution/bias/Read/ReadVariableOpReadVariableOpconvolution/bias*#
_class
loc:@convolution/bias*
_output_shapes
: *
dtype0
c
convolution/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
n
convolution/Reshape/shapeConst*
dtype0*!
valueB"?????     *
_output_shapes
:
?
convolution/ReshapeReshapedetail_concat/concatconvolution/Reshape/shape*
T0*,
_output_shapes
:??????????
c
!convolution/conv1d/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
?
convolution/conv1d/ExpandDims
ExpandDimsconvolution/Reshape!convolution/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:??????????
?
.convolution/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconvolution/kernel*
dtype0*"
_output_shapes
:	 
e
#convolution/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
convolution/conv1d/ExpandDims_1
ExpandDims.convolution/conv1d/ExpandDims_1/ReadVariableOp#convolution/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:	 
?
convolution/conv1dConv2Dconvolution/conv1d/ExpandDimsconvolution/conv1d/ExpandDims_1*
T0*
paddingSAME*0
_output_shapes
:?????????? *
strides

?
convolution/conv1d/SqueezeSqueezeconvolution/conv1d*
T0*,
_output_shapes
:?????????? *
squeeze_dims

o
"convolution/BiasAdd/ReadVariableOpReadVariableOpconvolution/bias*
dtype0*
_output_shapes
: 
?
convolution/BiasAddBiasAddconvolution/conv1d/Squeeze"convolution/BiasAdd/ReadVariableOp*
T0*,
_output_shapes
:?????????? 
d
convolution/ReluReluconvolution/BiasAdd*,
_output_shapes
:?????????? *
T0
t
convolution/Reshape_1/shapeConst*
_output_shapes
:*%
valueB"????   N      *
dtype0
?
convolution/Reshape_1Reshapeconvolution/Reluconvolution/Reshape_1/shape*
T0*0
_output_shapes
:?????????? 
l
conv_pool/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"????N      
?
conv_pool/ReshapeReshapeconvolution/Reshape_1conv_pool/Reshape/shape*
T0*,
_output_shapes
:?????????? 
Z
conv_pool/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
?
conv_pool/ExpandDims
ExpandDimsconv_pool/Reshapeconv_pool/ExpandDims/dim*0
_output_shapes
:?????????? *
T0
?
conv_pool/MaxPoolMaxPoolconv_pool/ExpandDims*
strides
*0
_output_shapes
:?????????? *
paddingVALID*
ksize

}
conv_pool/SqueezeSqueezeconv_pool/MaxPool*,
_output_shapes
:?????????? *
squeeze_dims
*
T0
r
conv_pool/Reshape_1/shapeConst*
_output_shapes
:*%
valueB"????   ?       *
dtype0
?
conv_pool/Reshape_1Reshapeconv_pool/Squeezeconv_pool/Reshape_1/shape*0
_output_shapes
:?????????? *
T0
?
-conv2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*!
valueB"	       @   *
dtype0*
_class
loc:@conv2/kernel
?
+conv2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *????*
dtype0*
_class
loc:@conv2/kernel
?
+conv2/kernel/Initializer/random_uniform/maxConst*
_class
loc:@conv2/kernel*
_output_shapes
: *
dtype0*
valueB
 *???=
?
5conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform-conv2/kernel/Initializer/random_uniform/shape*
T0*
dtype0*"
_output_shapes
:	 @*
_class
loc:@conv2/kernel
?
+conv2/kernel/Initializer/random_uniform/subSub+conv2/kernel/Initializer/random_uniform/max+conv2/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@conv2/kernel*
_output_shapes
: 
?
+conv2/kernel/Initializer/random_uniform/mulMul5conv2/kernel/Initializer/random_uniform/RandomUniform+conv2/kernel/Initializer/random_uniform/sub*"
_output_shapes
:	 @*
T0*
_class
loc:@conv2/kernel
?
'conv2/kernel/Initializer/random_uniformAdd+conv2/kernel/Initializer/random_uniform/mul+conv2/kernel/Initializer/random_uniform/min*
_class
loc:@conv2/kernel*
T0*"
_output_shapes
:	 @
?
conv2/kernelVarHandleOp*
shape:	 @*
_output_shapes
: *
shared_nameconv2/kernel*
dtype0*
_class
loc:@conv2/kernel
i
-conv2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2/kernel*
_output_shapes
: 
?
conv2/kernel/AssignAssignVariableOpconv2/kernel'conv2/kernel/Initializer/random_uniform*
_class
loc:@conv2/kernel*
dtype0
?
 conv2/kernel/Read/ReadVariableOpReadVariableOpconv2/kernel*
dtype0*"
_output_shapes
:	 @*
_class
loc:@conv2/kernel
?
conv2/bias/Initializer/zerosConst*
_output_shapes
:@*
dtype0*
_class
loc:@conv2/bias*
valueB@*    
?

conv2/biasVarHandleOp*
shared_name
conv2/bias*
_class
loc:@conv2/bias*
_output_shapes
: *
shape:@*
dtype0
e
+conv2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
conv2/bias*
_output_shapes
: 
{
conv2/bias/AssignAssignVariableOp
conv2/biasconv2/bias/Initializer/zeros*
_class
loc:@conv2/bias*
dtype0
?
conv2/bias/Read/ReadVariableOpReadVariableOp
conv2/bias*
_output_shapes
:@*
_class
loc:@conv2/bias*
dtype0
]
conv2/dilation_rateConst*
valueB:*
_output_shapes
:*
dtype0
h
conv2/Reshape/shapeConst*
dtype0*!
valueB"?????       *
_output_shapes
:
y
conv2/ReshapeReshapeconv_pool/Reshape_1conv2/Reshape/shape*,
_output_shapes
:?????????? *
T0
]
conv2/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
?
conv2/conv1d/ExpandDims
ExpandDimsconv2/Reshapeconv2/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:?????????? 
y
(conv2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv2/kernel*
dtype0*"
_output_shapes
:	 @
_
conv2/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
conv2/conv1d/ExpandDims_1
ExpandDims(conv2/conv1d/ExpandDims_1/ReadVariableOpconv2/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:	 @
?
conv2/conv1dConv2Dconv2/conv1d/ExpandDimsconv2/conv1d/ExpandDims_1*
T0*/
_output_shapes
:?????????8@*
paddingSAME*
strides

z
conv2/conv1d/SqueezeSqueezeconv2/conv1d*
squeeze_dims
*
T0*+
_output_shapes
:?????????8@
c
conv2/BiasAdd/ReadVariableOpReadVariableOp
conv2/bias*
_output_shapes
:@*
dtype0
?
conv2/BiasAddBiasAddconv2/conv1d/Squeezeconv2/BiasAdd/ReadVariableOp*+
_output_shapes
:?????????8@*
T0
W

conv2/ReluReluconv2/BiasAdd*
T0*+
_output_shapes
:?????????8@
n
conv2/Reshape_1/shapeConst*
_output_shapes
:*%
valueB"????   8   @   *
dtype0
w
conv2/Reshape_1Reshape
conv2/Reluconv2/Reshape_1/shape*
T0*/
_output_shapes
:?????????8@
h
pool2/Reshape/shapeConst*!
valueB"????8   @   *
_output_shapes
:*
dtype0
t
pool2/ReshapeReshapeconv2/Reshape_1pool2/Reshape/shape*
T0*+
_output_shapes
:?????????8@
V
pool2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
}
pool2/ExpandDims
ExpandDimspool2/Reshapepool2/ExpandDims/dim*/
_output_shapes
:?????????8@*
T0
?
pool2/MaxPoolMaxPoolpool2/ExpandDims*/
_output_shapes
:?????????@*
paddingVALID*
ksize
*
strides

t
pool2/SqueezeSqueezepool2/MaxPool*+
_output_shapes
:?????????@*
T0*
squeeze_dims

n
pool2/Reshape_1/shapeConst*%
valueB"????      @   *
_output_shapes
:*
dtype0
z
pool2/Reshape_1Reshapepool2/Squeezepool2/Reshape_1/shape*/
_output_shapes
:?????????@*
T0
?
-conv3/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@conv3/kernel*
_output_shapes
:*
dtype0*!
valueB"	   @   ?   
?
+conv3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *?[q?*
_class
loc:@conv3/kernel
?
+conv3/kernel/Initializer/random_uniform/maxConst*
_class
loc:@conv3/kernel*
_output_shapes
: *
valueB
 *?[q=*
dtype0
?
5conv3/kernel/Initializer/random_uniform/RandomUniformRandomUniform-conv3/kernel/Initializer/random_uniform/shape*
_class
loc:@conv3/kernel*#
_output_shapes
:	@?*
T0*
dtype0
?
+conv3/kernel/Initializer/random_uniform/subSub+conv3/kernel/Initializer/random_uniform/max+conv3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@conv3/kernel
?
+conv3/kernel/Initializer/random_uniform/mulMul5conv3/kernel/Initializer/random_uniform/RandomUniform+conv3/kernel/Initializer/random_uniform/sub*
T0*#
_output_shapes
:	@?*
_class
loc:@conv3/kernel
?
'conv3/kernel/Initializer/random_uniformAdd+conv3/kernel/Initializer/random_uniform/mul+conv3/kernel/Initializer/random_uniform/min*#
_output_shapes
:	@?*
T0*
_class
loc:@conv3/kernel
?
conv3/kernelVarHandleOp*
_class
loc:@conv3/kernel*
_output_shapes
: *
shared_nameconv3/kernel*
shape:	@?*
dtype0
i
-conv3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3/kernel*
_output_shapes
: 
?
conv3/kernel/AssignAssignVariableOpconv3/kernel'conv3/kernel/Initializer/random_uniform*
dtype0*
_class
loc:@conv3/kernel
?
 conv3/kernel/Read/ReadVariableOpReadVariableOpconv3/kernel*
dtype0*#
_output_shapes
:	@?*
_class
loc:@conv3/kernel
?
conv3/bias/Initializer/zerosConst*
_class
loc:@conv3/bias*
dtype0*
_output_shapes	
:?*
valueB?*    
?

conv3/biasVarHandleOp*
shape:?*
_output_shapes
: *
shared_name
conv3/bias*
_class
loc:@conv3/bias*
dtype0
e
+conv3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
conv3/bias*
_output_shapes
: 
{
conv3/bias/AssignAssignVariableOp
conv3/biasconv3/bias/Initializer/zeros*
_class
loc:@conv3/bias*
dtype0
?
conv3/bias/Read/ReadVariableOpReadVariableOp
conv3/bias*
_class
loc:@conv3/bias*
dtype0*
_output_shapes	
:?
]
conv3/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
h
conv3/Reshape/shapeConst*
_output_shapes
:*!
valueB"????   @   *
dtype0
t
conv3/ReshapeReshapepool2/Reshape_1conv3/Reshape/shape*
T0*+
_output_shapes
:?????????@
]
conv3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0
?
conv3/conv1d/ExpandDims
ExpandDimsconv3/Reshapeconv3/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:?????????@
z
(conv3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv3/kernel*#
_output_shapes
:	@?*
dtype0
_
conv3/conv1d/ExpandDims_1/dimConst*
value	B : *
_output_shapes
: *
dtype0
?
conv3/conv1d/ExpandDims_1
ExpandDims(conv3/conv1d/ExpandDims_1/ReadVariableOpconv3/conv1d/ExpandDims_1/dim*
T0*'
_output_shapes
:	@?
?
conv3/conv1dConv2Dconv3/conv1d/ExpandDimsconv3/conv1d/ExpandDims_1*
strides
*0
_output_shapes
:?????????
?*
T0*
paddingSAME
{
conv3/conv1d/SqueezeSqueezeconv3/conv1d*,
_output_shapes
:?????????
?*
squeeze_dims
*
T0
d
conv3/BiasAdd/ReadVariableOpReadVariableOp
conv3/bias*
dtype0*
_output_shapes	
:?
?
conv3/BiasAddBiasAddconv3/conv1d/Squeezeconv3/BiasAdd/ReadVariableOp*
T0*,
_output_shapes
:?????????
?
X

conv3/ReluReluconv3/BiasAdd*
T0*,
_output_shapes
:?????????
?
n
conv3/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"????   
   ?   
x
conv3/Reshape_1Reshape
conv3/Reluconv3/Reshape_1/shape*0
_output_shapes
:?????????
?*
T0
h
pool3/Reshape/shapeConst*!
valueB"????
   ?   *
dtype0*
_output_shapes
:
u
pool3/ReshapeReshapeconv3/Reshape_1pool3/Reshape/shape*
T0*,
_output_shapes
:?????????
?
V
pool3/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
~
pool3/ExpandDims
ExpandDimspool3/Reshapepool3/ExpandDims/dim*0
_output_shapes
:?????????
?*
T0
?
pool3/MaxPoolMaxPoolpool3/ExpandDims*0
_output_shapes
:??????????*
strides
*
ksize
*
paddingVALID
u
pool3/SqueezeSqueezepool3/MaxPool*,
_output_shapes
:??????????*
T0*
squeeze_dims

n
pool3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????      ?   
{
pool3/Reshape_1Reshapepool3/Squeezepool3/Reshape_1/shape*
T0*0
_output_shapes
:??????????
s
convolution_flat/Reshape/shapeConst*!
valueB"????   ?   *
dtype0*
_output_shapes
:
?
convolution_flat/ReshapeReshapepool3/Reshape_1convolution_flat/Reshape/shape*,
_output_shapes
:??????????*
T0
^
convolution_flat/ShapeShapeconvolution_flat/Reshape*
_output_shapes
:*
T0
n
$convolution_flat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
p
&convolution_flat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&convolution_flat/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
convolution_flat/strided_sliceStridedSliceconvolution_flat/Shape$convolution_flat/strided_slice/stack&convolution_flat/strided_slice/stack_1&convolution_flat/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
m
"convolution_flat/Reshape_1/shape/1Const*
valueB :
?????????*
_output_shapes
: *
dtype0
?
 convolution_flat/Reshape_1/shapePackconvolution_flat/strided_slice"convolution_flat/Reshape_1/shape/1*
N*
T0*
_output_shapes
:
?
convolution_flat/Reshape_1Reshapeconvolution_flat/Reshape convolution_flat/Reshape_1/shape*(
_output_shapes
:??????????*
T0
u
 convolution_flat/Reshape_2/shapeConst*
dtype0*!
valueB"????   ?  *
_output_shapes
:
?
convolution_flat/Reshape_2Reshapeconvolution_flat/Reshape_1 convolution_flat/Reshape_2/shape*,
_output_shapes
:??????????*
T0
j
dropout_cnn/Reshape/shapeConst*
_output_shapes
:*
valueB"?????  *
dtype0
?
dropout_cnn/ReshapeReshapeconvolution_flat/Reshape_2dropout_cnn/Reshape/shape*(
_output_shapes
:??????????*
T0
h
dropout_cnn/IdentityIdentitydropout_cnn/Reshape*
T0*(
_output_shapes
:??????????
p
dropout_cnn/Reshape_1/shapeConst*
_output_shapes
:*!
valueB"????   ?  *
dtype0
?
dropout_cnn/Reshape_1Reshapedropout_cnn/Identitydropout_cnn/Reshape_1/shape*
T0*,
_output_shapes
:??????????
X
all_concat/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
?
all_concat/concatConcatV2dropout_cnn/Reshape_1IRDischarge_timeQDall_concat/concat/axis*
T0*
N*,
_output_shapes
:??????????
?
1recurrent/kernel/Initializer/random_uniform/shapeConst*
valueB"?     *
_output_shapes
:*
dtype0*#
_class
loc:@recurrent/kernel
?
/recurrent/kernel/Initializer/random_uniform/minConst*
valueB
 *???*
_output_shapes
: *#
_class
loc:@recurrent/kernel*
dtype0
?
/recurrent/kernel/Initializer/random_uniform/maxConst*#
_class
loc:@recurrent/kernel*
dtype0*
valueB
 *??=*
_output_shapes
: 
?
9recurrent/kernel/Initializer/random_uniform/RandomUniformRandomUniform1recurrent/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
??*
T0*
dtype0*#
_class
loc:@recurrent/kernel
?
/recurrent/kernel/Initializer/random_uniform/subSub/recurrent/kernel/Initializer/random_uniform/max/recurrent/kernel/Initializer/random_uniform/min*#
_class
loc:@recurrent/kernel*
_output_shapes
: *
T0
?
/recurrent/kernel/Initializer/random_uniform/mulMul9recurrent/kernel/Initializer/random_uniform/RandomUniform/recurrent/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
??*#
_class
loc:@recurrent/kernel*
T0
?
+recurrent/kernel/Initializer/random_uniformAdd/recurrent/kernel/Initializer/random_uniform/mul/recurrent/kernel/Initializer/random_uniform/min* 
_output_shapes
:
??*#
_class
loc:@recurrent/kernel*
T0
?
recurrent/kernelVarHandleOp*#
_class
loc:@recurrent/kernel*
dtype0*!
shared_namerecurrent/kernel*
_output_shapes
: *
shape:
??
q
1recurrent/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOprecurrent/kernel*
_output_shapes
: 
?
recurrent/kernel/AssignAssignVariableOprecurrent/kernel+recurrent/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@recurrent/kernel
?
$recurrent/kernel/Read/ReadVariableOpReadVariableOprecurrent/kernel*
dtype0*#
_class
loc:@recurrent/kernel* 
_output_shapes
:
??
?
:recurrent/recurrent_kernel/Initializer/random_normal/shapeConst*-
_class#
!loc:@recurrent/recurrent_kernel*
valueB"   ?   *
dtype0*
_output_shapes
:
?
9recurrent/recurrent_kernel/Initializer/random_normal/meanConst*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
: *
valueB
 *    
?
;recurrent/recurrent_kernel/Initializer/random_normal/stddevConst*
dtype0*
valueB
 *  ??*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
: 
?
Irecurrent/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal:recurrent/recurrent_kernel/Initializer/random_normal/shape*
T0*
dtype0* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel
?
8recurrent/recurrent_kernel/Initializer/random_normal/mulMulIrecurrent/recurrent_kernel/Initializer/random_normal/RandomStandardNormal;recurrent/recurrent_kernel/Initializer/random_normal/stddev*
T0*-
_class#
!loc:@recurrent/recurrent_kernel* 
_output_shapes
:
??
?
4recurrent/recurrent_kernel/Initializer/random_normalAdd8recurrent/recurrent_kernel/Initializer/random_normal/mul9recurrent/recurrent_kernel/Initializer/random_normal/mean* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel*
T0
?
)recurrent/recurrent_kernel/Initializer/QrQr4recurrent/recurrent_kernel/Initializer/random_normal*-
_class#
!loc:@recurrent/recurrent_kernel*,
_output_shapes
:
??:
??*
T0
?
/recurrent/recurrent_kernel/Initializer/DiagPartDiagPart+recurrent/recurrent_kernel/Initializer/Qr:1*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes	
:?*
T0
?
+recurrent/recurrent_kernel/Initializer/SignSign/recurrent/recurrent_kernel/Initializer/DiagPart*
T0*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes	
:?
?
*recurrent/recurrent_kernel/Initializer/mulMul)recurrent/recurrent_kernel/Initializer/Qr+recurrent/recurrent_kernel/Initializer/Sign*-
_class#
!loc:@recurrent/recurrent_kernel*
T0* 
_output_shapes
:
??
?
Frecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
valueB"       *
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
:
?
Arecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose*recurrent/recurrent_kernel/Initializer/mulFrecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*-
_class#
!loc:@recurrent/recurrent_kernel*
T0* 
_output_shapes
:
??
?
4recurrent/recurrent_kernel/Initializer/Reshape/shapeConst*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel*
valueB"?      *
_output_shapes
:
?
.recurrent/recurrent_kernel/Initializer/ReshapeReshapeArecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose4recurrent/recurrent_kernel/Initializer/Reshape/shape*
T0* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel
?
.recurrent/recurrent_kernel/Initializer/mul_1/xConst*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
,recurrent/recurrent_kernel/Initializer/mul_1Mul.recurrent/recurrent_kernel/Initializer/mul_1/x.recurrent/recurrent_kernel/Initializer/Reshape*
T0*-
_class#
!loc:@recurrent/recurrent_kernel* 
_output_shapes
:
??
?
recurrent/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*+
shared_namerecurrent/recurrent_kernel*-
_class#
!loc:@recurrent/recurrent_kernel*
shape:
??
?
;recurrent/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOprecurrent/recurrent_kernel*
_output_shapes
: 
?
!recurrent/recurrent_kernel/AssignAssignVariableOprecurrent/recurrent_kernel,recurrent/recurrent_kernel/Initializer/mul_1*-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0
?
.recurrent/recurrent_kernel/Read/ReadVariableOpReadVariableOprecurrent/recurrent_kernel*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel* 
_output_shapes
:
??
?
 recurrent/bias/Initializer/zerosConst*
dtype0*
valueB?*    *!
_class
loc:@recurrent/bias*
_output_shapes	
:?
?
recurrent/bias/Initializer/onesConst*!
_class
loc:@recurrent/bias*
_output_shapes	
:?*
dtype0*
valueB?*  ??
?
"recurrent/bias/Initializer/zeros_1Const*!
_class
loc:@recurrent/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
&recurrent/bias/Initializer/concat/axisConst*!
_class
loc:@recurrent/bias*
dtype0*
value	B : *
_output_shapes
: 
?
!recurrent/bias/Initializer/concatConcatV2 recurrent/bias/Initializer/zerosrecurrent/bias/Initializer/ones"recurrent/bias/Initializer/zeros_1&recurrent/bias/Initializer/concat/axis*
T0*
_output_shapes	
:?*!
_class
loc:@recurrent/bias*
N
?
recurrent/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namerecurrent/bias*
shape:?*!
_class
loc:@recurrent/bias
m
/recurrent/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOprecurrent/bias*
_output_shapes
: 
?
recurrent/bias/AssignAssignVariableOprecurrent/bias!recurrent/bias/Initializer/concat*!
_class
loc:@recurrent/bias*
dtype0
?
"recurrent/bias/Read/ReadVariableOpReadVariableOprecurrent/bias*!
_class
loc:@recurrent/bias*
_output_shapes	
:?*
dtype0
P
recurrent/ShapeShapeall_concat/concat*
T0*
_output_shapes
:
g
recurrent/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
i
recurrent/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
recurrent/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
recurrent/strided_sliceStridedSlicerecurrent/Shaperecurrent/strided_slice/stackrecurrent/strided_slice/stack_1recurrent/strided_slice/stack_2*
shrink_axis_mask*
T0*
_output_shapes
: *
Index0
X
recurrent/zeros/mul/yConst*
dtype0*
_output_shapes
: *
value
B :?
k
recurrent/zeros/mulMulrecurrent/strided_slicerecurrent/zeros/mul/y*
_output_shapes
: *
T0
Y
recurrent/zeros/Less/yConst*
dtype0*
_output_shapes
: *
value
B :?
j
recurrent/zeros/LessLessrecurrent/zeros/mulrecurrent/zeros/Less/y*
_output_shapes
: *
T0
[
recurrent/zeros/packed/1Const*
value
B :?*
dtype0*
_output_shapes
: 

recurrent/zeros/packedPackrecurrent/strided_slicerecurrent/zeros/packed/1*
T0*
_output_shapes
:*
N
Z
recurrent/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
y
recurrent/zerosFillrecurrent/zeros/packedrecurrent/zeros/Const*(
_output_shapes
:??????????*
T0
Z
recurrent/zeros_1/mul/yConst*
value
B :?*
_output_shapes
: *
dtype0
o
recurrent/zeros_1/mulMulrecurrent/strided_slicerecurrent/zeros_1/mul/y*
T0*
_output_shapes
: 
[
recurrent/zeros_1/Less/yConst*
dtype0*
_output_shapes
: *
value
B :?
p
recurrent/zeros_1/LessLessrecurrent/zeros_1/mulrecurrent/zeros_1/Less/y*
T0*
_output_shapes
: 
]
recurrent/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?
?
recurrent/zeros_1/packedPackrecurrent/strided_slicerecurrent/zeros_1/packed/1*
T0*
_output_shapes
:*
N
\
recurrent/zeros_1/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

recurrent/zeros_1Fillrecurrent/zeros_1/packedrecurrent/zeros_1/Const*(
_output_shapes
:??????????*
T0
?
!recurrent/StatefulPartitionedCallStatefulPartitionedCallall_concat/concatrecurrent/zerosrecurrent/zeros_1recurrent/kernelrecurrent/recurrent_kernelrecurrent/bias*j
_output_shapesX
V:??????????:??????????:??????????:??????????: **
config_proto

GPU 

CPU2J 8*(
f#R!
__inference_standard_lstm_22536*,
_gradient_op_typePartitionedCall-22537*
Tout	
2*
Tin

2
w
dropout_lstm/IdentityIdentity!recurrent/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????
?
.hidden/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"?       * 
_class
loc:@hidden/kernel
?
,hidden/kernel/Initializer/random_uniform/minConst*
valueB
 *?KF?* 
_class
loc:@hidden/kernel*
dtype0*
_output_shapes
: 
?
,hidden/kernel/Initializer/random_uniform/maxConst*
dtype0* 
_class
loc:@hidden/kernel*
_output_shapes
: *
valueB
 *?KF>
?
6hidden/kernel/Initializer/random_uniform/RandomUniformRandomUniform.hidden/kernel/Initializer/random_uniform/shape* 
_class
loc:@hidden/kernel*
T0*
_output_shapes
:	? *
dtype0
?
,hidden/kernel/Initializer/random_uniform/subSub,hidden/kernel/Initializer/random_uniform/max,hidden/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@hidden/kernel
?
,hidden/kernel/Initializer/random_uniform/mulMul6hidden/kernel/Initializer/random_uniform/RandomUniform,hidden/kernel/Initializer/random_uniform/sub* 
_class
loc:@hidden/kernel*
_output_shapes
:	? *
T0
?
(hidden/kernel/Initializer/random_uniformAdd,hidden/kernel/Initializer/random_uniform/mul,hidden/kernel/Initializer/random_uniform/min*
_output_shapes
:	? *
T0* 
_class
loc:@hidden/kernel
?
hidden/kernelVarHandleOp*
shape:	? *
_output_shapes
: *
shared_namehidden/kernel*
dtype0* 
_class
loc:@hidden/kernel
k
.hidden/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden/kernel*
_output_shapes
: 
?
hidden/kernel/AssignAssignVariableOphidden/kernel(hidden/kernel/Initializer/random_uniform* 
_class
loc:@hidden/kernel*
dtype0
?
!hidden/kernel/Read/ReadVariableOpReadVariableOphidden/kernel*
dtype0* 
_class
loc:@hidden/kernel*
_output_shapes
:	? 
?
hidden/bias/Initializer/zerosConst*
_class
loc:@hidden/bias*
_output_shapes
: *
dtype0*
valueB *    
?
hidden/biasVarHandleOp*
_class
loc:@hidden/bias*
shared_namehidden/bias*
dtype0*
_output_shapes
: *
shape: 
g
,hidden/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden/bias*
_output_shapes
: 

hidden/bias/AssignAssignVariableOphidden/biashidden/bias/Initializer/zeros*
dtype0*
_class
loc:@hidden/bias
?
hidden/bias/Read/ReadVariableOpReadVariableOphidden/bias*
_output_shapes
: *
_class
loc:@hidden/bias*
dtype0
k
hidden/MatMul/ReadVariableOpReadVariableOphidden/kernel*
dtype0*
_output_shapes
:	? 
~
hidden/MatMulMatMuldropout_lstm/Identityhidden/MatMul/ReadVariableOp*'
_output_shapes
:????????? *
T0
e
hidden/BiasAdd/ReadVariableOpReadVariableOphidden/bias*
_output_shapes
: *
dtype0
y
hidden/BiasAddBiasAddhidden/MatMulhidden/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:????????? 
U
hidden/ReluReluhidden/BiasAdd*'
_output_shapes
:????????? *
T0
?
.output/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@output/kernel*
valueB"       *
dtype0*
_output_shapes
:
?
,output/kernel/Initializer/random_uniform/minConst*
_output_shapes
: * 
_class
loc:@output/kernel*
dtype0*
valueB
 *A׾
?
,output/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: *
valueB
 *A?>
?
6output/kernel/Initializer/random_uniform/RandomUniformRandomUniform.output/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *
T0* 
_class
loc:@output/kernel
?
,output/kernel/Initializer/random_uniform/subSub,output/kernel/Initializer/random_uniform/max,output/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@output/kernel
?
,output/kernel/Initializer/random_uniform/mulMul6output/kernel/Initializer/random_uniform/RandomUniform,output/kernel/Initializer/random_uniform/sub*
_output_shapes

: * 
_class
loc:@output/kernel*
T0
?
(output/kernel/Initializer/random_uniformAdd,output/kernel/Initializer/random_uniform/mul,output/kernel/Initializer/random_uniform/min* 
_class
loc:@output/kernel*
_output_shapes

: *
T0
?
output/kernelVarHandleOp*
shared_nameoutput/kernel* 
_class
loc:@output/kernel*
dtype0*
shape
: *
_output_shapes
: 
k
.output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/kernel*
_output_shapes
: 
?
output/kernel/AssignAssignVariableOpoutput/kernel(output/kernel/Initializer/random_uniform*
dtype0* 
_class
loc:@output/kernel
?
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

: * 
_class
loc:@output/kernel*
dtype0
?
output/bias/Initializer/zerosConst*
_class
loc:@output/bias*
valueB*    *
_output_shapes
:*
dtype0
?
output/biasVarHandleOp*
shape:*
_class
loc:@output/bias*
shared_nameoutput/bias*
_output_shapes
: *
dtype0
g
,output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/bias*
_output_shapes
: 

output/bias/AssignAssignVariableOpoutput/biasoutput/bias/Initializer/zeros*
_class
loc:@output/bias*
dtype0
?
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_class
loc:@output/bias*
dtype0*
_output_shapes
:
j
output/MatMul/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

: *
dtype0
t
output/MatMulMatMulhidden/Reluoutput/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
e
output/BiasAdd/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
y
output/BiasAddBiasAddoutput/MatMuloutput/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????
\
output/clippy/ReluReluoutput/BiasAdd*'
_output_shapes
:?????????*
T0
X
output/clippy/ConstConst*
_output_shapes
: *
valueB
 *????*
dtype0
Z
output/clippy/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
?
#output/clippy/clip_by_value/MinimumMinimumoutput/clippy/Reluoutput/clippy/Const*
T0*'
_output_shapes
:?????????
?
output/clippy/clip_by_valueMaximum#output/clippy/clip_by_value/Minimumoutput/clippy/Const_1*'
_output_shapes
:?????????*
T0
?
output_targetPlaceholder*%
shape:??????????????????*
dtype0*0
_output_shapes
:??????????????????
v
total/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0*
_class

loc:@total
x
totalVarHandleOp*
dtype0*
shape: *
_output_shapes
: *
_class

loc:@total*
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
_class

loc:@count*
valueB
 *    *
_output_shapes
: *
dtype0
x
countVarHandleOp*
shape: *
shared_namecount*
_class

loc:@count*
dtype0*
_output_shapes
: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0*
_class

loc:@count
q
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_class

loc:@count*
_output_shapes
: 
z
total_1/Initializer/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@total_1
~
total_1VarHandleOp*
_class
loc:@total_1*
shared_name	total_1*
dtype0*
shape: *
_output_shapes
: 
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
dtype0*
_class
loc:@total_1
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
dtype0*
_class
loc:@total_1*
_output_shapes
: 
z
count_1/Initializer/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: *
_class
loc:@count_1
~
count_1VarHandleOp*
dtype0*
shape: *
shared_name	count_1*
_output_shapes
: *
_class
loc:@count_1
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
_class
loc:@count_1*
dtype0
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
?
metrics/mae_current_cycle/subSuboutput_targetoutput/clippy/clip_by_value*'
_output_shapes
:?????????*
T0
u
metrics/mae_current_cycle/AbsAbsmetrics/mae_current_cycle/sub*
T0*'
_output_shapes
:?????????
r
0metrics/mae_current_cycle/Mean/reduction_indicesConst*
value	B : *
_output_shapes
: *
dtype0
?
metrics/mae_current_cycle/MeanMeanmetrics/mae_current_cycle/Abs0metrics/mae_current_cycle/Mean/reduction_indices*
T0*
_output_shapes
:
w
-metrics/mae_current_cycle/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
y
/metrics/mae_current_cycle/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
y
/metrics/mae_current_cycle/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
'metrics/mae_current_cycle/strided_sliceStridedSlicemetrics/mae_current_cycle/Mean-metrics/mae_current_cycle/strided_slice/stack/metrics/mae_current_cycle/strided_slice/stack_1/metrics/mae_current_cycle/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
d
metrics/mae_current_cycle/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * ?E
?
metrics/mae_current_cycle/mulMul'metrics/mae_current_cycle/strided_slicemetrics/mae_current_cycle/mul/y*
T0*
_output_shapes
: 
b
metrics/mae_current_cycle/ConstConst*
_output_shapes
: *
dtype0*
valueB 
?
metrics/mae_current_cycle/SumSummetrics/mae_current_cycle/mulmetrics/mae_current_cycle/Const*
_output_shapes
: *
T0
w
-metrics/mae_current_cycle/AssignAddVariableOpAssignAddVariableOptotalmetrics/mae_current_cycle/Sum*
dtype0
?
(metrics/mae_current_cycle/ReadVariableOpReadVariableOptotal.^metrics/mae_current_cycle/AssignAddVariableOp^metrics/mae_current_cycle/Sum*
dtype0*
_output_shapes
: 
`
metrics/mae_current_cycle/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
v
metrics/mae_current_cycle/CastCastmetrics/mae_current_cycle/Size*

SrcT0*
_output_shapes
: *

DstT0
?
/metrics/mae_current_cycle/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/mae_current_cycle/Cast.^metrics/mae_current_cycle/AssignAddVariableOp*
dtype0
?
*metrics/mae_current_cycle/ReadVariableOp_1ReadVariableOpcount.^metrics/mae_current_cycle/AssignAddVariableOp0^metrics/mae_current_cycle/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
3metrics/mae_current_cycle/div_no_nan/ReadVariableOpReadVariableOptotal0^metrics/mae_current_cycle/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
5metrics/mae_current_cycle/div_no_nan/ReadVariableOp_1ReadVariableOpcount0^metrics/mae_current_cycle/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
$metrics/mae_current_cycle/div_no_nanDivNoNan3metrics/mae_current_cycle/div_no_nan/ReadVariableOp5metrics/mae_current_cycle/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
u
"metrics/mae_current_cycle/IdentityIdentity$metrics/mae_current_cycle/div_no_nan*
T0*
_output_shapes
: 
?
 metrics/mae_remaining_cycles/subSuboutput_targetoutput/clippy/clip_by_value*'
_output_shapes
:?????????*
T0
{
 metrics/mae_remaining_cycles/AbsAbs metrics/mae_remaining_cycles/sub*
T0*'
_output_shapes
:?????????
u
3metrics/mae_remaining_cycles/Mean/reduction_indicesConst*
dtype0*
value	B : *
_output_shapes
: 
?
!metrics/mae_remaining_cycles/MeanMean metrics/mae_remaining_cycles/Abs3metrics/mae_remaining_cycles/Mean/reduction_indices*
T0*
_output_shapes
:
z
0metrics/mae_remaining_cycles/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
|
2metrics/mae_remaining_cycles/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
|
2metrics/mae_remaining_cycles/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
*metrics/mae_remaining_cycles/strided_sliceStridedSlice!metrics/mae_remaining_cycles/Mean0metrics/mae_remaining_cycles/strided_slice/stack2metrics/mae_remaining_cycles/strided_slice/stack_12metrics/mae_remaining_cycles/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
g
"metrics/mae_remaining_cycles/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 * ?E
?
 metrics/mae_remaining_cycles/mulMul*metrics/mae_remaining_cycles/strided_slice"metrics/mae_remaining_cycles/mul/y*
_output_shapes
: *
T0
e
"metrics/mae_remaining_cycles/ConstConst*
dtype0*
valueB *
_output_shapes
: 
?
 metrics/mae_remaining_cycles/SumSum metrics/mae_remaining_cycles/mul"metrics/mae_remaining_cycles/Const*
T0*
_output_shapes
: 

0metrics/mae_remaining_cycles/AssignAddVariableOpAssignAddVariableOptotal_1 metrics/mae_remaining_cycles/Sum*
dtype0
?
+metrics/mae_remaining_cycles/ReadVariableOpReadVariableOptotal_11^metrics/mae_remaining_cycles/AssignAddVariableOp!^metrics/mae_remaining_cycles/Sum*
dtype0*
_output_shapes
: 
c
!metrics/mae_remaining_cycles/SizeConst*
_output_shapes
: *
dtype0*
value	B :
|
!metrics/mae_remaining_cycles/CastCast!metrics/mae_remaining_cycles/Size*

DstT0*

SrcT0*
_output_shapes
: 
?
2metrics/mae_remaining_cycles/AssignAddVariableOp_1AssignAddVariableOpcount_1!metrics/mae_remaining_cycles/Cast1^metrics/mae_remaining_cycles/AssignAddVariableOp*
dtype0
?
-metrics/mae_remaining_cycles/ReadVariableOp_1ReadVariableOpcount_11^metrics/mae_remaining_cycles/AssignAddVariableOp3^metrics/mae_remaining_cycles/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
6metrics/mae_remaining_cycles/div_no_nan/ReadVariableOpReadVariableOptotal_13^metrics/mae_remaining_cycles/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
8metrics/mae_remaining_cycles/div_no_nan/ReadVariableOp_1ReadVariableOpcount_13^metrics/mae_remaining_cycles/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
?
'metrics/mae_remaining_cycles/div_no_nanDivNoNan6metrics/mae_remaining_cycles/div_no_nan/ReadVariableOp8metrics/mae_remaining_cycles/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
{
%metrics/mae_remaining_cycles/IdentityIdentity'metrics/mae_remaining_cycles/div_no_nan*
_output_shapes
: *
T0
?
"loss/output_loss/SquaredDifferenceSquaredDifferenceoutput/clippy/clip_by_valueoutput_target*'
_output_shapes
:?????????*
T0
r
'loss/output_loss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
loss/output_loss/MeanMean"loss/output_loss/SquaredDifference'loss/output_loss/Mean/reduction_indices*#
_output_shapes
:?????????*
T0
j
%loss/output_loss/weighted_loss/Cast/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Sloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
dtype0*
valueB *
_output_shapes
: 
?
Rloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
value	B : *
dtype0
?
Rloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/output_loss/Mean*
_output_shapes
:*
T0
?
Qloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
i
aloss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
?
@loss/output_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeloss/output_loss/Meanb^loss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
?
@loss/output_loss/weighted_loss/broadcast_weights/ones_like/ConstConstb^loss/output_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
:loss/output_loss/weighted_loss/broadcast_weights/ones_likeFill@loss/output_loss/weighted_loss/broadcast_weights/ones_like/Shape@loss/output_loss/weighted_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:?????????*
T0
?
0loss/output_loss/weighted_loss/broadcast_weightsMul%loss/output_loss/weighted_loss/Cast/x:loss/output_loss/weighted_loss/broadcast_weights/ones_like*#
_output_shapes
:?????????*
T0
?
"loss/output_loss/weighted_loss/MulMulloss/output_loss/Mean0loss/output_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
`
loss/output_loss/ConstConst*
dtype0*
valueB: *
_output_shapes
:
x
loss/output_loss/SumSum"loss/output_loss/weighted_loss/Mulloss/output_loss/Const*
_output_shapes
: *
T0
j
loss/output_loss/num_elementsSize"loss/output_loss/weighted_loss/Mul*
_output_shapes
: *
T0
y
"loss/output_loss/num_elements/CastCastloss/output_loss/num_elements*

DstT0*
_output_shapes
: *

SrcT0
[
loss/output_loss/Const_1Const*
_output_shapes
: *
dtype0*
valueB 
n
loss/output_loss/Sum_1Sumloss/output_loss/Sumloss/output_loss/Const_1*
_output_shapes
: *
T0

loss/output_loss/valueDivNoNanloss/output_loss/Sum_1"loss/output_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
T
loss/mulMul
loss/mul/xloss/output_loss/value*
_output_shapes
: *
T0
q
iter/Initializer/zerosConst*
value	B	 R *
dtype0	*
_output_shapes
: *
_class
	loc:@iter
u
iterVarHandleOp*
shared_nameiter*
_class
	loc:@iter*
_output_shapes
: *
dtype0	*
shape: 
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
c
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	*
_class
	loc:@iter
n
iter/Read/ReadVariableOpReadVariableOpiter*
dtype0	*
_class
	loc:@iter*
_output_shapes
: 
(
evaluation/group_depsNoOp	^loss/mul
Z
ConstConst"/device:CPU:0*
valueB Bmodel*
_output_shapes
: *
dtype0
?
RestoreV2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
J
AssignVariableOpAssignVariableOphidden/kernelIdentity*
dtype0
?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*I
value@B>B4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
L
AssignVariableOp_1AssignVariableOphidden/bias
Identity_1*
dtype0
?
RestoreV2_2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*K
valueBB@B6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_2IdentityRestoreV2_2*
_output_shapes
:*
T0
N
AssignVariableOp_2AssignVariableOpoutput/kernel
Identity_2*
dtype0
?
RestoreV2_3/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_3IdentityRestoreV2_3*
_output_shapes
:*
T0
L
AssignVariableOp_3AssignVariableOpoutput/bias
Identity_3*
dtype0
?
RestoreV2_4/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*>
value5B3B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_4	RestoreV2ConstRestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
F

Identity_4IdentityRestoreV2_4*
T0	*
_output_shapes
:
E
AssignVariableOp_4AssignVariableOpiter
Identity_4*
dtype0	
?
RestoreV2_5/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*Q
valueHBFB<layer_with_weights-0/layer/kernel/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
RestoreV2_5	RestoreV2ConstRestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_5IdentityRestoreV2_5*
_output_shapes
:*
T0
S
AssignVariableOp_5AssignVariableOpconvolution/kernel
Identity_5*
dtype0
?
RestoreV2_6/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB:layer_with_weights-0/layer/bias/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_6	RestoreV2ConstRestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_6IdentityRestoreV2_6*
T0*
_output_shapes
:
Q
AssignVariableOp_6AssignVariableOpconvolution/bias
Identity_6*
dtype0
?
RestoreV2_7/tensor_namesConst"/device:CPU:0*
dtype0*Q
valueHBFB<layer_with_weights-1/layer/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_7	RestoreV2ConstRestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_7IdentityRestoreV2_7*
_output_shapes
:*
T0
M
AssignVariableOp_7AssignVariableOpconv2/kernel
Identity_7*
dtype0
?
RestoreV2_8/tensor_namesConst"/device:CPU:0*O
valueFBDB:layer_with_weights-1/layer/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_8	RestoreV2ConstRestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_8IdentityRestoreV2_8*
_output_shapes
:*
T0
K
AssignVariableOp_8AssignVariableOp
conv2/bias
Identity_8*
dtype0
?
RestoreV2_9/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB<layer_with_weights-2/layer/kernel/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_9	RestoreV2ConstRestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_9IdentityRestoreV2_9*
T0*
_output_shapes
:
M
AssignVariableOp_9AssignVariableOpconv3/kernel
Identity_9*
dtype0
?
RestoreV2_10/tensor_namesConst"/device:CPU:0*
_output_shapes
:*O
valueFBDB:layer_with_weights-2/layer/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
RestoreV2_10	RestoreV2ConstRestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_10IdentityRestoreV2_10*
_output_shapes
:*
T0
M
AssignVariableOp_10AssignVariableOp
conv3/biasIdentity_10*
dtype0
?
RestoreV2_11/tensor_namesConst"/device:CPU:0*P
valueGBEB;layer_with_weights-3/cell/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_11	RestoreV2ConstRestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_11IdentityRestoreV2_11*
T0*
_output_shapes
:
S
AssignVariableOp_11AssignVariableOprecurrent/kernelIdentity_11*
dtype0
?
RestoreV2_12/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Z
valueQBOBElayer_with_weights-3/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_12	RestoreV2ConstRestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_12IdentityRestoreV2_12*
T0*
_output_shapes
:
]
AssignVariableOp_12AssignVariableOprecurrent/recurrent_kernelIdentity_12*
dtype0
?
RestoreV2_13/tensor_namesConst"/device:CPU:0*N
valueEBCB9layer_with_weights-3/cell/bias/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
u
RestoreV2_13/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_13	RestoreV2ConstRestoreV2_13/tensor_namesRestoreV2_13/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_13IdentityRestoreV2_13*
_output_shapes
:*
T0
Q
AssignVariableOp_13AssignVariableOprecurrent/biasIdentity_13*
dtype0
N
VarIsInitializedOpVarIsInitializedOpconv2/kernel*
_output_shapes
: 
I
VarIsInitializedOp_1VarIsInitializedOptotal*
_output_shapes
: 
P
VarIsInitializedOp_2VarIsInitializedOpconv3/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOpoutput/kernel*
_output_shapes
: 
T
VarIsInitializedOp_4VarIsInitializedOprecurrent/kernel*
_output_shapes
: 
^
VarIsInitializedOp_5VarIsInitializedOprecurrent/recurrent_kernel*
_output_shapes
: 
Q
VarIsInitializedOp_6VarIsInitializedOphidden/kernel*
_output_shapes
: 
K
VarIsInitializedOp_7VarIsInitializedOpcount_1*
_output_shapes
: 
N
VarIsInitializedOp_8VarIsInitializedOp
conv2/bias*
_output_shapes
: 
O
VarIsInitializedOp_9VarIsInitializedOpoutput/bias*
_output_shapes
: 
L
VarIsInitializedOp_10VarIsInitializedOptotal_1*
_output_shapes
: 
O
VarIsInitializedOp_11VarIsInitializedOp
conv3/bias*
_output_shapes
: 
P
VarIsInitializedOp_12VarIsInitializedOphidden/bias*
_output_shapes
: 
I
VarIsInitializedOp_13VarIsInitializedOpiter*
_output_shapes
: 
J
VarIsInitializedOp_14VarIsInitializedOpcount*
_output_shapes
: 
W
VarIsInitializedOp_15VarIsInitializedOpconvolution/kernel*
_output_shapes
: 
U
VarIsInitializedOp_16VarIsInitializedOpconvolution/bias*
_output_shapes
: 
S
VarIsInitializedOp_17VarIsInitializedOprecurrent/bias*
_output_shapes
: 
?
initNoOp^conv2/bias/Assign^conv2/kernel/Assign^conv3/bias/Assign^conv3/kernel/Assign^convolution/bias/Assign^convolution/kernel/Assign^count/Assign^count_1/Assign^hidden/bias/Assign^hidden/kernel/Assign^iter/Assign^output/bias/Assign^output/kernel/Assign^recurrent/bias/Assign^recurrent/kernel/Assign"^recurrent/recurrent_kernel/Assign^total/Assign^total_1/Assign
W
div_no_nan/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_14Identity
div_no_nan*
_output_shapes
: *
T0
[
div_no_nan_1/ReadVariableOpReadVariableOptotal_1*
dtype0*
_output_shapes
: 
]
div_no_nan_1/ReadVariableOp_1ReadVariableOpcount_1*
_output_shapes
: *
dtype0
u
div_no_nan_1DivNoNandiv_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp_1*
_output_shapes
: *
T0
F
Identity_15Identitydiv_no_nan_1*
T0*
_output_shapes
: 
?
metric_op_wrapperConst0^metrics/mae_current_cycle/AssignAddVariableOp_1*
_output_shapes
: *
dtype0*
valueB 
?
metric_op_wrapper_1Const3^metrics/mae_remaining_cycles/AssignAddVariableOp_1*
_output_shapes
: *
valueB *
dtype0
Y
save/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
?
save/SaveV2/tensor_namesConst*?
value?B?B:layer_with_weights-0/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-3/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
_output_shapes
:*/
value&B$B B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$convolution/bias/Read/ReadVariableOp&convolution/kernel/Read/ReadVariableOpconv2/bias/Read/ReadVariableOp conv2/kernel/Read/ReadVariableOpconv3/bias/Read/ReadVariableOp conv3/kernel/Read/ReadVariableOp"recurrent/bias/Read/ReadVariableOp$recurrent/kernel/Read/ReadVariableOp.recurrent/recurrent_kernel/Read/ReadVariableOphidden/bias/Read/ReadVariableOp!hidden/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpiter/Read/ReadVariableOp*
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B?B:layer_with_weights-0/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-3/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*L
_output_shapes:
8::::::::::::::
L
save/IdentityIdentitysave/RestoreV2*
_output_shapes
:*
T0
W
save/AssignVariableOpAssignVariableOpconvolution/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
_output_shapes
:*
T0
]
save/AssignVariableOp_1AssignVariableOpconvolution/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
U
save/AssignVariableOp_2AssignVariableOp
conv2/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
_output_shapes
:*
T0
W
save/AssignVariableOp_3AssignVariableOpconv2/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
U
save/AssignVariableOp_4AssignVariableOp
conv3/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
_output_shapes
:*
T0
W
save/AssignVariableOp_5AssignVariableOpconv3/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
_output_shapes
:*
T0
Y
save/AssignVariableOp_6AssignVariableOprecurrent/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
[
save/AssignVariableOp_7AssignVariableOprecurrent/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
_output_shapes
:*
T0
e
save/AssignVariableOp_8AssignVariableOprecurrent/recurrent_kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
V
save/AssignVariableOp_9AssignVariableOphidden/biassave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
_output_shapes
:*
T0
Z
save/AssignVariableOp_10AssignVariableOphidden/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
_output_shapes
:*
T0
X
save/AssignVariableOp_11AssignVariableOpoutput/biassave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
Z
save/AssignVariableOp_12AssignVariableOpoutput/kernelsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
_output_shapes
:*
T0	
Q
save/AssignVariableOp_13AssignVariableOpitersave/Identity_13*
dtype0	
?
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
N
init_1NoOp^count/Assign^count_1/Assign^total/Assign^total_1/Assign??
??
?
-__inference___backward_cudnn_lstm_22658_22836
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_strided_slice_2_grad_shape_cudnnrnnv3I
Egradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stackK
Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_1K
Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_2A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm3
/gradients_strided_slice_3_grad_shape_cudnnrnnv3I
Egradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stackK
Ggradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_1K
Ggradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_23
/gradients_strided_slice_4_grad_shape_cudnnrnnv3I
Egradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stackK
Ggradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_1K
Ggradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_2#
gradients_zeros_like_cudnnrnnv3:
6gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_transpose;
7gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims=
9gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims_19
5gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_concat_15
1gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_fill;
7gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_cudnnrnnv3=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis&
"gradients_transpose_grad_transpose%
!gradients_expanddims_grad_reshape'
#gradients_expanddims_1_grad_reshape
gradients_split_grad_concat!
gradients_split_1_grad_concat!
gradients_concat_grad_slice_1?_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:??????????e
gradients/grad_ys_1Identityplaceholder_1*,
_output_shapes
:??????????*
T0a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:??????????a
gradients/grad_ys_3Identityplaceholder_3*(
_output_shapes
:??????????*
T0O
gradients/grad_ys_4Identityplaceholder_4*
_output_shapes
: *
T0?
$gradients/strided_slice_2_grad/ShapeShape/gradients_strided_slice_2_grad_shape_cudnnrnnv3*
T0*
_output_shapes
:?
/gradients/strided_slice_2_grad/StridedSliceGradStridedSliceGrad-gradients/strided_slice_2_grad/Shape:output:0Egradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stackGgradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_1Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_2gradients/grad_ys_0:output:0*
T0*
Index0*
shrink_axis_mask*,
_output_shapes
:???????????
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*,
_output_shapes
:??????????*
T0?
$gradients/strided_slice_3_grad/ShapeShape/gradients_strided_slice_3_grad_shape_cudnnrnnv3*
_output_shapes
:*
T0?
/gradients/strided_slice_3_grad/StridedSliceGradStridedSliceGrad-gradients/strided_slice_3_grad/Shape:output:0Egradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stackGgradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_1Ggradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_2gradients/grad_ys_2:output:0*
shrink_axis_mask*
T0*
Index0*,
_output_shapes
:???????????
$gradients/strided_slice_4_grad/ShapeShape/gradients_strided_slice_4_grad_shape_cudnnrnnv3*
_output_shapes
:*
T0?
/gradients/strided_slice_4_grad/StridedSliceGradStridedSliceGrad-gradients/strided_slice_4_grad/Shape:output:0Egradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stackGgradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_1Ggradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_2gradients/grad_ys_3:output:0*
T0*,
_output_shapes
:??????????*
shrink_axis_mask*
Index0?
gradients/AddNAddN8gradients/strided_slice_2_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*,
_output_shapes
:??????????*
T0*
N*B
_class8
64loc:@gradients/strided_slice_2_grad/StridedSliceGrade
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnnv3*
T0*
_output_shapes
:?
,gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3CudnnRNNBackpropV36gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_transpose7gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims9gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims_15gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_concat_11gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_fill/gradients_strided_slice_2_grad_shape_cudnnrnnv3/gradients_strided_slice_3_grad_shape_cudnnrnnv3/gradients_strided_slice_4_grad_shape_cudnnrnnv3gradients/AddN:sum:08gradients/strided_slice_3_grad/StridedSliceGrad:output:08gradients/strided_slice_4_grad/StridedSliceGrad:output:0gradients_zeros_like_cudnnrnnv37gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_cudnnrnnv3*
T0*d
_output_shapesR
P:??????????:??????????:??????????:???
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose=gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:??????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
_output_shapes
:*
T0?
!gradients/ExpandDims_grad/ReshapeReshape?gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*(
_output_shapes
:??????????*
T0y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
_output_shapes
:*
T0?
#gradients/ExpandDims_1_grad/ReshapeReshape?gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*(
_output_shapes
:??????????*
T0^
gradients/concat_1_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: ?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
valueB:??*
dtype0*
_output_shapes
:k
gradients/concat_1_grad/Shape_1Const*
valueB:??*
dtype0*
_output_shapes
:k
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:??k
gradients/concat_1_grad/Shape_3Const*
dtype0*
valueB:??*
_output_shapes
:k
gradients/concat_1_grad/Shape_4Const*
dtype0*
valueB:??*
_output_shapes
:k
gradients/concat_1_grad/Shape_5Const*
valueB:??*
_output_shapes
:*
dtype0k
gradients/concat_1_grad/Shape_6Const*
dtype0*
valueB:??*
_output_shapes
:k
gradients/concat_1_grad/Shape_7Const*
dtype0*
_output_shapes
:*
valueB:??j
gradients/concat_1_grad/Shape_8Const*
valueB:?*
_output_shapes
:*
dtype0j
gradients/concat_1_grad/Shape_9Const*
valueB:?*
dtype0*
_output_shapes
:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:?k
 gradients/concat_1_grad/Shape_11Const*
valueB:?*
dtype0*
_output_shapes
:k
 gradients/concat_1_grad/Shape_12Const*
dtype0*
valueB:?*
_output_shapes
:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
valueB:?*
dtype0k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:?k
 gradients/concat_1_grad/Shape_15Const*
valueB:?*
_output_shapes
:*
dtype0?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
T0*
_output_shapes

:??*
Index0?
gradients/concat_1_grad/Slice_1Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
T0*
Index0*
_output_shapes

:???
gradients/concat_1_grad/Slice_2Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
_output_shapes

:??*
T0*
Index0?
gradients/concat_1_grad/Slice_3Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
T0*
_output_shapes

:??*
Index0?
gradients/concat_1_grad/Slice_4Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:???
gradients/concat_1_grad/Slice_5Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
_output_shapes

:??*
T0*
Index0?
gradients/concat_1_grad/Slice_6Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
_output_shapes

:??*
T0*
Index0?
gradients/concat_1_grad/Slice_7Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
T0*
Index0*
_output_shapes

:???
gradients/concat_1_grad/Slice_8Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
_output_shapes	
:?*
T0*
Index0?
gradients/concat_1_grad/Slice_9Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
_output_shapes	
:?*
T0*
Index0?
 gradients/concat_1_grad/Slice_10Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
T0*
Index0*
_output_shapes	
:??
 gradients/concat_1_grad/Slice_11Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
_output_shapes	
:?*
T0*
Index0?
 gradients/concat_1_grad/Slice_12Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
T0*
_output_shapes	
:?*
Index0?
 gradients/concat_1_grad/Slice_13Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
_output_shapes	
:?*
T0?
 gradients/concat_1_grad/Slice_14Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
T0*
Index0*
_output_shapes	
:??
 gradients/concat_1_grad/Slice_15Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
_output_shapes	
:?*
T0m
gradients/Reshape_grad/ShapeConst*
valueB"?   ?  *
dtype0*
_output_shapes
:?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0* 
_output_shapes
:
??*
T0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"?   ?  ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_2_grad/ShapeConst*
valueB"?   ?  *
_output_shapes
:*
dtype0?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
valueB"?   ?  *
dtype0?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_4_grad/ShapeConst*
valueB"?   ?   *
dtype0*
_output_shapes
:?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_5_grad/ShapeConst*
valueB"?   ?   *
_output_shapes
:*
dtype0?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
valueB"?   ?   *
dtype0?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_7_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"?   ?   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
??i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:??
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
_output_shapes	
:?*
T0i
gradients/Reshape_9_grad/ShapeConst*
valueB:?*
dtype0*
_output_shapes
:?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:?j
gradients/Reshape_10_grad/ShapeConst*
valueB:?*
_output_shapes
:*
dtype0?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_11_grad/ShapeConst*
valueB:?*
_output_shapes
:*
dtype0?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
valueB:?*
dtype0?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:?j
gradients/Reshape_13_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:??
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
valueB:?*
dtype0?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_15_grad/ShapeConst*
valueB:?*
dtype0*
_output_shapes
:?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
_output_shapes	
:?*
T0?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:??
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
T0*
N* 
_output_shapes
:
???
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim* 
_output_shapes
:
??*
N*
T0\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
valueB:?*
dtype0*
_output_shapes
:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
T0*
Index0*
_output_shapes	
:??
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
_output_shapes	
:?*
Index0*
T0"G
gradients_split_1_grad_concat&gradients/split_1_grad/concat:output:0"O
!gradients_expanddims_grad_reshape*gradients/ExpandDims_grad/Reshape:output:0"G
gradients_concat_grad_slice_1&gradients/concat_grad/Slice_1:output:0"C
gradients_split_grad_concat$gradients/split_grad/concat:output:0"S
#gradients_expanddims_1_grad_reshape,gradients/ExpandDims_1_grad/Reshape:output:0"L
"gradients_transpose_grad_transpose&gradients/transpose_grad/transpose:y:0*
api_preferred_deviceGPU*?
_input_shapes?
?:??????????:??????????:??????????:??????????: :??????????:::::??????????::::??????????:::::??????????:??????????:??????????:??:?????????:::??????????:??????????: ::::::::: : : : *=
api_implements+)lstm_e87f6bd0-4a52-4099-a040-1d66c0d8ba9f*5
forward_function_name__forward_cudnn_lstm_22660:
 : : : : : : : : : : : : : : : : : : : : : :  :! :" :# :$ :% :& :' :( :  : : : : : : : : :	 
?F
?
__inference_standard_lstm_22536

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?whilec
transpose/permConst*
dtype0*!
valueB"          *
_output_shapes
:n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????B
ShapeShapetranspose:y:0*
_output_shapes
:*
T0]
strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: _
strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0_
strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
T0*
shrink_axis_mask*
Index0*
_output_shapes
: f
TensorArrayV2/element_shapeConst*
_output_shapes
: *
valueB :
?????????*
dtype0?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
element_dtype0*
_output_shapes
: *

shape_type0?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
valueB"?????  *
dtype0?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
valueB:*
_output_shapes
:*
dtype0a
strided_slice_1/stack_2Const*
valueB:*
_output_shapes
:*
dtype0?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
shrink_axis_mask*(
_output_shapes
:??????????*
T0^
MatMul/ReadVariableOpReadVariableOpkernel*
dtype0* 
_output_shapes
:
??|
MatMulMatMulstrided_slice_1:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????j
MatMul_1/ReadVariableOpReadVariableOprecurrent_kernel*
dtype0* 
_output_shapes
:
??n
MatMul_1MatMulinit_hMatMul_1/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0c
addAddMatMul:product:0MatMul_1:product:0*(
_output_shapes
:??????????*
T0X
BiasAdd/ReadVariableOpReadVariableOpbias*
dtype0*
_output_shapes	
:?n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0G
ConstConst*
dtype0*
_output_shapes
: *
value	B :Q
split/split_dimConst*
value	B :*
dtype0*
_output_shapes
: ?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*
	num_split*d
_output_shapesR
P:??????????:??????????:??????????:??????????U
SigmoidSigmoidsplit:output:0*(
_output_shapes
:??????????*
T0W
	Sigmoid_1Sigmoidsplit:output:1*(
_output_shapes
:??????????*
T0T
mulMulSigmoid_1:y:0init_c*(
_output_shapes
:??????????*
T0O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*(
_output_shapes
:??????????*
T0S
add_1Addmul:z:0	mul_1:z:0*(
_output_shapes
:??????????*
T0W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*(
_output_shapes
:??????????*
T0h
TensorArrayV2_1/element_shapeConst*
valueB :
?????????*
_output_shapes
: *
dtype0?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*

shape_type0*
element_dtype0*
_output_shapes
: F
timeConst*
_output_shapes
: *
value	B : *
dtype0Z
while/maximum_iterationsConst*
dtype0*
_output_shapes
: *
value	B :T
while/loop_counterConst*
_output_shapes
: *
value	B : *
dtype0?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_lower_using_switch_merge(*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
condR
while_cond_22433*
bodyR
while_body_22434*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations *
T
2K
while/IdentityIdentitywhile:output:0*
_output_shapes
: *
T0M
while/Identity_1Identitywhile:output:1*
_output_shapes
: *
T0M
while/Identity_2Identitywhile:output:2*
T0*
_output_shapes
: M
while/Identity_3Identitywhile:output:3*
_output_shapes
: *
T0_
while/Identity_4Identitywhile:output:4*
T0*(
_output_shapes
:??????????_
while/Identity_5Identitywhile:output:5*(
_output_shapes
:??????????*
T0M
while/Identity_6Identitywhile:output:6*
T0*
_output_shapes
: M
while/Identity_7Identitywhile:output:7*
_output_shapes
: *
T0M
while/Identity_8Identitywhile:output:8*
_output_shapes
: *
T0M
while/Identity_9Identitywhile:output:9*
_output_shapes
: *
T0O
while/Identity_10Identitywhile:output:10*
_output_shapes
: *
T0?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile/Identity_3:output:09TensorArrayV2Stack/TensorListStack/element_shape:output:0*
element_dtype0*,
_output_shapes
:??????????h
strided_slice_2/stackConst*
valueB:
?????????*
_output_shapes
:*
dtype0a
strided_slice_2/stack_1Const*
valueB: *
_output_shapes
:*
dtype0a
strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*(
_output_shapes
:??????????e
transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ???
IdentityIdentitystrided_slice_2:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:???????????

Identity_1Identitytranspose_1:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*,
_output_shapes
:??????????*
T0?

Identity_2Identitywhile/Identity_4:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*(
_output_shapes
:??????????*
T0?

Identity_3Identitywhile/Identity_5:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*(
_output_shapes
:??????????*
T0?

Identity_4Identityruntime:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*
T0*
_output_shapes
: "!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
api_preferred_deviceCPU*=
api_implements+)lstm_e87f6bd0-4a52-4099-a040-1d66c0d8ba9f*_
_input_shapesN
L:??????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2
whilewhile:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinit_h:&"
 
_user_specified_nameinit_c:&"
 
_user_specified_namekernel:0,
*
_user_specified_namerecurrent_kernel:$ 

_user_specified_namebias
?+
?
while_body_22434
while_loop_counter
while_maximum_iterations
time
tensorarrayv2_1

init_h

init_c
strided_slice_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
(matmul_readvariableop_recurrent_kernel_08
4matmul_1_readvariableop_recurrent_recurrent_kernel_0+
'biasadd_readvariableop_recurrent_bias_0
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_sliceO
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
&matmul_readvariableop_recurrent_kernel6
2matmul_1_readvariableop_recurrent_recurrent_kernel)
%biasadd_readvariableop_recurrent_bias??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
valueB"?????  *
dtype0?
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0time:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
element_dtype0*(
_output_shapes
:???????????
MatMul/ReadVariableOpReadVariableOp(matmul_readvariableop_recurrent_kernel_0*
dtype0* 
_output_shapes
:
???
MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0MatMul/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
MatMul_1/ReadVariableOpReadVariableOp4matmul_1_readvariableop_recurrent_recurrent_kernel_0*
dtype0* 
_output_shapes
:
??n
MatMul_1MatMulinit_hMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
addAddMatMul:product:0MatMul_1:product:0*(
_output_shapes
:??????????*
T0{
BiasAdd/ReadVariableOpReadVariableOp'biasadd_readvariableop_recurrent_bias_0*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0G
ConstConst*
dtype0*
_output_shapes
: *
value	B :Q
split/split_dimConst*
dtype0*
value	B :*
_output_shapes
: ?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*
	num_split*d
_output_shapesR
P:??????????:??????????:??????????:??????????U
SigmoidSigmoidsplit:output:0*(
_output_shapes
:??????????*
T0W
	Sigmoid_1Sigmoidsplit:output:1*(
_output_shapes
:??????????*
T0T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????S
add_1Addmul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*(
_output_shapes
:??????????*
T0Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:???????????
$TensorArrayV2Write/TensorListSetItemTensorListSetItemtensorarrayv2_1time	mul_2:z:0*
element_dtype0*
_output_shapes
: I
add_2/yConst*
dtype0*
_output_shapes
: *
value	B :E
add_2Addtimeadd_2/y:output:0*
T0*
_output_shapes
: I
add_3/yConst*
dtype0*
_output_shapes
: *
value	B :S
add_3Addwhile_loop_counteradd_3/y:output:0*
T0*
_output_shapes
: ?
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
: *
T0?

Identity_1Identitywhile_maximum_iterations^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
: *
T0?

Identity_2Identity	add_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes
: ?

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes
: ?

Identity_4Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*(
_output_shapes
:??????????*
T0?

Identity_5Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0"!

identity_5Identity_5:output:0"j
2matmul_1_readvariableop_recurrent_recurrent_kernel4matmul_1_readvariableop_recurrent_recurrent_kernel_0"R
&matmul_readvariableop_recurrent_kernel(matmul_readvariableop_recurrent_kernel_0"?
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0" 
strided_slicestrided_slice_0"!

identity_1Identity_1:output:0"P
%biasadd_readvariableop_recurrent_bias'biasadd_readvariableop_recurrent_bias_0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*S
_input_shapesB
@: : : : :??????????:??????????: : :::22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp: : : : : :	 :
 :  : : : 
?E
?
__inference_cudnn_lstm_22657

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4??
CudnnRNNV3?concat/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOp?zeros_like/ReadVariableOpG
transpose/permConst*!
valueB"          *
dtype0@
	transpose	Transposeinputstranspose/perm:output:0*
T08
ExpandDims/dimConst*
value	B : *
dtype0B

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0:
ExpandDims_1/dimConst*
value	B : *
dtype0F
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0/
ConstConst*
dtype0*
value	B :9
split/split_dimConst*
dtype0*
value	B :;
split/ReadVariableOpReadVariableOpkernel*
dtype0`
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
	num_split*
T01
Const_1Const*
dtype0*
value	B :;
split_1/split_dimConst*
value	B :*
dtype0G
split_1/ReadVariableOpReadVariableOprecurrent_kernel*
dtype0f
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*
	num_split>
zeros_like/ReadVariableOpReadVariableOpbias*
dtype0<

zeros_likeConst*
dtype0*
valueB?*    V
concat/ReadVariableOpReadVariableOpbias^zeros_like/ReadVariableOp*
dtype05
concat/axisConst*
value	B : *
dtype0n
concatConcatV2zeros_like:output:0concat/ReadVariableOp:value:0concat/axis:output:0*
N*
T0&
ShapeShapetranspose:y:0*
T0A
strided_slice/stackConst*
valueB:*
dtype0C
strided_slice/stack_1Const*
dtype0*
valueB:C
strided_slice/stack_2Const*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
T0*
Index0*
shrink_axis_mask(
Shape_1Shapetranspose:y:0*
T0C
strided_slice_1/stackConst*
dtype0*
valueB: E
strided_slice_1/stack_1Const*
dtype0*
valueB:E
strided_slice_1/stack_2Const*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
shrink_axis_mask;
	Fill/dimsPackstrided_slice:output:0*
N*
T0C
FillFillFill/dims:output:0strided_slice_1:output:0*
T01
Const_2Const*
dtype0*
value	B :;
split_2/split_dimConst*
dtype0*
value	B : W
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*
	num_split>
Const_3Const*
dtype0*
valueB:
?????????E
transpose_1/permConst*
dtype0*
valueB"       L
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0>
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0E
transpose_2/permConst*
valueB"       *
dtype0L
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0@
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0E
transpose_3/permConst*
dtype0*
valueB"       L
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0@
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0E
transpose_4/permConst*
valueB"       *
dtype0L
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0@
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0E
transpose_5/permConst*
dtype0*
valueB"       N
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0@
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0E
transpose_6/permConst*
valueB"       *
dtype0N
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0@
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0E
transpose_7/permConst*
valueB"       *
dtype0N
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0@
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0E
transpose_8/permConst*
dtype0*
valueB"       N
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0@
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0A
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0A
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0B

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0B

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0B

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0B

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0B

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0B

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T07
concat_1/axisConst*
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0~

CudnnRNNV3
CudnnRNNV3transpose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0Fill:output:0*
T0L
strided_slice_2/stackConst*
dtype0*
valueB:
?????????E
strided_slice_2/stack_1Const*
dtype0*
valueB: E
strided_slice_2/stack_2Const*
dtype0*
valueB:?
strided_slice_2StridedSliceCudnnRNNV3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
shrink_axis_mask*
Index0*
T0I
transpose_9/permConst*
dtype0*!
valueB"          Q
transpose_9	TransposeCudnnRNNV3:output:0transpose_9/perm:output:0*
T0C
strided_slice_3/stackConst*
dtype0*
valueB: E
strided_slice_3/stack_1Const*
dtype0*
valueB:E
strided_slice_3/stack_2Const*
dtype0*
valueB:?
strided_slice_3StridedSliceCudnnRNNV3:output_h:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
shrink_axis_maskC
strided_slice_4/stackConst*
valueB: *
dtype0E
strided_slice_4/stack_1Const*
valueB:*
dtype0E
strided_slice_4/stack_2Const*
valueB:*
dtype0?
strided_slice_4StridedSliceCudnnRNNV3:output_c:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
shrink_axis_mask*
T0*
Index0C
runtimeConst"/device:CPU:0*
valueB
 *   @*
dtype0?
IdentityIdentitystrided_slice_2:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_1Identitytranspose_9:y:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_2Identitystrided_slice_3:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_3Identitystrided_slice_4:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_4Identityruntime:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*
api_preferred_deviceGPU*=
api_implements+)lstm_e87f6bd0-4a52-4099-a040-1d66c0d8ba9f*
_input_shapes 20
split_1/ReadVariableOpsplit_1/ReadVariableOp2

CudnnRNNV3
CudnnRNNV32.
concat/ReadVariableOpconcat/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp26
zeros_like/ReadVariableOpzeros_like/ReadVariableOp:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinit_h:&"
 
_user_specified_nameinit_c:&"
 
_user_specified_namekernel:0,
*
_user_specified_namerecurrent_kernel:$ 

_user_specified_namebias
?X
?
__forward_cudnn_lstm_22660

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4

cudnnrnnv3
strided_slice_2_stack
strided_slice_2_stack_1
strided_slice_2_stack_2
transpose_9_perm
cudnnrnnv3_0
strided_slice_3_stack
strided_slice_3_stack_1
strided_slice_3_stack_2
cudnnrnnv3_1
strided_slice_4_stack
strided_slice_4_stack_1
strided_slice_4_stack_2
cudnnrnnv3_2
	transpose

expanddims
expanddims_1
concat_1
fill
cudnnrnnv3_3
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis??
CudnnRNNV3?concat/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOp?zeros_like/ReadVariableOpG
transpose/permConst*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T08
ExpandDims/dimConst*
value	B : *
dtype0D

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0:
ExpandDims_1/dimConst*
value	B : *
dtype0H
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0/
ConstConst*
dtype0*
value	B :9
split/split_dimConst*
value	B :*
dtype0;
split/ReadVariableOpReadVariableOpkernel*
dtype0`
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*
	num_split1
Const_1Const*
dtype0*
value	B :;
split_1/split_dimConst*
dtype0*
value	B :G
split_1/ReadVariableOpReadVariableOprecurrent_kernel*
dtype0f
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*
	num_split>
zeros_like/ReadVariableOpReadVariableOpbias*
dtype0<

zeros_likeConst*
valueB?*    *
dtype0V
concat/ReadVariableOpReadVariableOpbias^zeros_like/ReadVariableOp*
dtype05
concat/axisConst*
value	B : *
dtype0n
concatConcatV2zeros_like:output:0concat/ReadVariableOp:value:0concat/axis:output:0*
N*
T0(
ShapeShapetranspose_0:y:0*
T0A
strided_slice/stackConst*
dtype0*
valueB:C
strided_slice/stack_1Const*
valueB:*
dtype0C
strided_slice/stack_2Const*
valueB:*
dtype0?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
T0*
shrink_axis_mask*
Index0*
Shape_1Shapetranspose_0:y:0*
T0C
strided_slice_1/stackConst*
dtype0*
valueB: E
strided_slice_1/stack_1Const*
dtype0*
valueB:E
strided_slice_1/stack_2Const*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
T0*
Index0*
shrink_axis_mask;
	Fill/dimsPackstrided_slice:output:0*
N*
T0C
FillFillFill/dims:output:0strided_slice_1:output:0*
T01
Const_2Const*
value	B :*
dtype0;
split_2/split_dimConst*
value	B : *
dtype0W
split_2Splitsplit_2/split_dim:output:0concat:output:0*
	num_split*
T0>
Const_3Const*
valueB:
?????????*
dtype0E
transpose_1/permConst*
dtype0*
valueB"       L
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0>
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0E
transpose_2/permConst*
dtype0*
valueB"       L
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0@
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0E
transpose_3/permConst*
dtype0*
valueB"       L
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0@
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0E
transpose_4/permConst*
dtype0*
valueB"       L
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0@
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0E
transpose_5/permConst*
valueB"       *
dtype0N
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0@
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0E
transpose_6/permConst*
valueB"       *
dtype0N
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0@
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0E
transpose_7/permConst*
valueB"       *
dtype0N
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0@
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0E
transpose_8/permConst*
dtype0*
valueB"       N
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0@
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0A
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0A
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0B

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0B

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0B

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0B

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0B

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0B

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T07
concat_1/axisConst*
value	B : *
dtype0?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0?

CudnnRNNV3
CudnnRNNV3transpose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0Fill:output:0*
T0L
strided_slice_2/stackConst*
valueB:
?????????*
dtype0E
strided_slice_2/stack_1Const*
valueB: *
dtype0E
strided_slice_2/stack_2Const*
valueB:*
dtype0?
strided_slice_2StridedSliceCudnnRNNV3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
shrink_axis_maskI
transpose_9/permConst*
dtype0*!
valueB"          Q
transpose_9	TransposeCudnnRNNV3:output:0transpose_9/perm:output:0*
T0C
strided_slice_3/stackConst*
dtype0*
valueB: E
strided_slice_3/stack_1Const*
dtype0*
valueB:E
strided_slice_3/stack_2Const*
dtype0*
valueB:?
strided_slice_3StridedSliceCudnnRNNV3:output_h:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
shrink_axis_maskC
strided_slice_4/stackConst*
valueB: *
dtype0E
strided_slice_4/stack_1Const*
valueB:*
dtype0E
strided_slice_4/stack_2Const*
dtype0*
valueB:?
strided_slice_4StridedSliceCudnnRNNV3:output_c:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
shrink_axis_maskC
runtimeConst"/device:CPU:0*
valueB
 *   @*
dtype0?
IdentityIdentitystrided_slice_2:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_1Identitytranspose_9:y:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_2Identitystrided_slice_3:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_3Identitystrided_slice_4:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_4Identityruntime:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0"
fillFill:output:0"'
concat_1_axisconcat_1/axis:output:0"7
strided_slice_2_stackstrided_slice_2/stack:output:0"
	transposetranspose_0:y:0"-
transpose_7_permtranspose_7/perm:output:0"+
split_split_dimsplit/split_dim:output:0"#
concat_axisconcat/axis:output:0"-
transpose_1_permtranspose_1/perm:output:0"7
strided_slice_3_stackstrided_slice_3/stack:output:0"
init_cinit_c_0"!

cudnnrnnv3CudnnRNNV3:output:0";
strided_slice_2_stack_1 strided_slice_2/stack_1:output:0";
strided_slice_2_stack_2 strided_slice_2/stack_2:output:0";
strided_slice_4_stack_1 strided_slice_4/stack_1:output:0";
strided_slice_4_stack_2 strided_slice_4/stack_2:output:0"
init_hinit_h_0"-
transpose_6_permtranspose_6/perm:output:0"7
strided_slice_4_stackstrided_slice_4/stack:output:0"-
transpose_5_permtranspose_5/perm:output:0"%
cudnnrnnv3_0CudnnRNNV3:output_h:0"%
cudnnrnnv3_1CudnnRNNV3:output_c:0"*
cudnnrnnv3_2CudnnRNNV3:reserve_space:0"*
cudnnrnnv3_3CudnnRNNV3:host_reserved:0")
transpose_permtranspose/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"
concat_1concat_1_0:output:0";
strided_slice_3_stack_1 strided_slice_3/stack_1:output:0"-
transpose_9_permtranspose_9/perm:output:0";
strided_slice_3_stack_2 strided_slice_3/stack_2:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"-
transpose_3_permtranspose_3/perm:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"-
transpose_8_permtranspose_8/perm:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"-
transpose_2_permtranspose_2/perm:output:0*I
backward_function_name/-__inference___backward_cudnn_lstm_22658_22836*=
api_implements+)lstm_e87f6bd0-4a52-4099-a040-1d66c0d8ba9f*
api_preferred_deviceGPU*
_input_shapes 26
zeros_like/ReadVariableOpzeros_like/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp2

CudnnRNNV3
CudnnRNNV32.
concat/ReadVariableOpconcat/ReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinit_h:&"
 
_user_specified_nameinit_c:&"
 
_user_specified_namekernel:0,
*
_user_specified_namerecurrent_kernel:$ 

_user_specified_namebias
?
?
while_cond_22433
while_loop_counter
while_maximum_iterations
time
tensorarrayv2_1

init_h

init_c
less_1_strided_slice+
'tensorarrayunstack_tensorlistfromtensor
recurrent_kernel
recurrent_recurrent_kernel
recurrent_bias
identity
[
LessLesswhile_loop_counterwhile_maximum_iterations*
T0*
_output_shapes
: K
Less_1Lesstimeless_1_strided_slice*
T0*
_output_shapes
: F

LogicalAnd
LogicalAndLess:z:0
Less_1:z:0*
_output_shapes
: E
IdentityIdentityLogicalAnd:z:0*
_output_shapes
: *
T0
"
identityIdentity:output:0*S
_input_shapesB
@: : : : :??????????:??????????: : ::::
 :  : : : : : : : : :	 "7D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"?
	variables??
?
convolution/kernel:0convolution/kernel/Assign(convolution/kernel/Read/ReadVariableOp:0(2/convolution/kernel/Initializer/random_uniform:08

convolution/bias:0convolution/bias/Assign&convolution/bias/Read/ReadVariableOp:0(2$convolution/bias/Initializer/zeros:08
x
conv2/kernel:0conv2/kernel/Assign"conv2/kernel/Read/ReadVariableOp:0(2)conv2/kernel/Initializer/random_uniform:08
g
conv2/bias:0conv2/bias/Assign conv2/bias/Read/ReadVariableOp:0(2conv2/bias/Initializer/zeros:08
x
conv3/kernel:0conv3/kernel/Assign"conv3/kernel/Read/ReadVariableOp:0(2)conv3/kernel/Initializer/random_uniform:08
g
conv3/bias:0conv3/bias/Assign conv3/bias/Read/ReadVariableOp:0(2conv3/bias/Initializer/zeros:08
?
recurrent/kernel:0recurrent/kernel/Assign&recurrent/kernel/Read/ReadVariableOp:0(2-recurrent/kernel/Initializer/random_uniform:08
?
recurrent/recurrent_kernel:0!recurrent/recurrent_kernel/Assign0recurrent/recurrent_kernel/Read/ReadVariableOp:0(2.recurrent/recurrent_kernel/Initializer/mul_1:08
x
recurrent/bias:0recurrent/bias/Assign$recurrent/bias/Read/ReadVariableOp:0(2#recurrent/bias/Initializer/concat:08
|
hidden/kernel:0hidden/kernel/Assign#hidden/kernel/Read/ReadVariableOp:0(2*hidden/kernel/Initializer/random_uniform:08
k
hidden/bias:0hidden/bias/Assign!hidden/bias/Read/ReadVariableOp:0(2hidden/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"?
trainable_variables??
?
convolution/kernel:0convolution/kernel/Assign(convolution/kernel/Read/ReadVariableOp:0(2/convolution/kernel/Initializer/random_uniform:08

convolution/bias:0convolution/bias/Assign&convolution/bias/Read/ReadVariableOp:0(2$convolution/bias/Initializer/zeros:08
x
conv2/kernel:0conv2/kernel/Assign"conv2/kernel/Read/ReadVariableOp:0(2)conv2/kernel/Initializer/random_uniform:08
g
conv2/bias:0conv2/bias/Assign conv2/bias/Read/ReadVariableOp:0(2conv2/bias/Initializer/zeros:08
x
conv3/kernel:0conv3/kernel/Assign"conv3/kernel/Read/ReadVariableOp:0(2)conv3/kernel/Initializer/random_uniform:08
g
conv3/bias:0conv3/bias/Assign conv3/bias/Read/ReadVariableOp:0(2conv3/bias/Initializer/zeros:08
?
recurrent/kernel:0recurrent/kernel/Assign&recurrent/kernel/Read/ReadVariableOp:0(2-recurrent/kernel/Initializer/random_uniform:08
?
recurrent/recurrent_kernel:0!recurrent/recurrent_kernel/Assign0recurrent/recurrent_kernel/Read/ReadVariableOp:0(2.recurrent/recurrent_kernel/Initializer/mul_1:08
x
recurrent/bias:0recurrent/bias/Assign$recurrent/bias/Read/ReadVariableOp:0(2#recurrent/bias/Initializer/concat:08
|
hidden/kernel:0hidden/kernel/Assign#hidden/kernel/Read/ReadVariableOp:0(2*hidden/kernel/Initializer/random_uniform:08
k
hidden/bias:0hidden/bias/Assign!hidden/bias/Read/ReadVariableOp:0(2hidden/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08"?
local_variables??
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
]
	total_1:0total_1/Assigntotal_1/Read/ReadVariableOp:0(2total_1/Initializer/zeros:0@H
]
	count_1:0count_1/Assigncount_1/Read/ReadVariableOp:0(2count_1/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H*@
__saved_model_init_op'%
__saved_model_init_op
init_1*?
eval?
0
Tdlin'
Tdlin:0??????????
0
Qdlin'
Qdlin:0??????????
%
QD
QD:0?????????
%
IR
IR:0?????????
@
output_target/
output_target:0??????????????????
=
Discharge_time+
Discharge_time:0?????????J
predictions/output4
output/clippy/clip_by_value:0?????????
loss

loss/mul:0 B
#metrics/mae_current_cycle/update_op
metric_op_wrapper:0 9
"metrics/mae_remaining_cycles/value
Identity_15:0 G
&metrics/mae_remaining_cycles/update_op
metric_op_wrapper_1:0 6
metrics/mae_current_cycle/value
Identity_14:0 tensorflow/supervised/evalԫ
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
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
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2
?
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
/
Sign
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?"serve*2.0.0-beta02v1.12.1-3259-gf59745a3818??
z
QdlinPlaceholder*
dtype0*0
_output_shapes
:??????????*%
shape:??????????
z
TdlinPlaceholder*0
_output_shapes
:??????????*%
shape:??????????*
dtype0
m
IRPlaceholder* 
shape:?????????*+
_output_shapes
:?????????*
dtype0
y
Discharge_timePlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
m
QDPlaceholder*+
_output_shapes
:?????????* 
shape:?????????*
dtype0
[
detail_concat/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
?
detail_concat/concatConcatV2QdlinTdlindetail_concat/concat/axis*
T0*
N*0
_output_shapes
:??????????
?
3convolution/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@convolution/kernel*!
valueB"	          *
_output_shapes
:*
dtype0
?
1convolution/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *?c?*
_output_shapes
: *%
_class
loc:@convolution/kernel
?
1convolution/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *?c>*%
_class
loc:@convolution/kernel
?
;convolution/kernel/Initializer/random_uniform/RandomUniformRandomUniform3convolution/kernel/Initializer/random_uniform/shape*"
_output_shapes
:	 *%
_class
loc:@convolution/kernel*
T0*
dtype0
?
1convolution/kernel/Initializer/random_uniform/subSub1convolution/kernel/Initializer/random_uniform/max1convolution/kernel/Initializer/random_uniform/min*%
_class
loc:@convolution/kernel*
_output_shapes
: *
T0
?
1convolution/kernel/Initializer/random_uniform/mulMul;convolution/kernel/Initializer/random_uniform/RandomUniform1convolution/kernel/Initializer/random_uniform/sub*%
_class
loc:@convolution/kernel*"
_output_shapes
:	 *
T0
?
-convolution/kernel/Initializer/random_uniformAdd1convolution/kernel/Initializer/random_uniform/mul1convolution/kernel/Initializer/random_uniform/min*
T0*"
_output_shapes
:	 *%
_class
loc:@convolution/kernel
?
convolution/kernelVarHandleOp*
dtype0*
shape:	 *#
shared_nameconvolution/kernel*%
_class
loc:@convolution/kernel*
_output_shapes
: 
u
3convolution/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconvolution/kernel*
_output_shapes
: 
?
convolution/kernel/AssignAssignVariableOpconvolution/kernel-convolution/kernel/Initializer/random_uniform*%
_class
loc:@convolution/kernel*
dtype0
?
&convolution/kernel/Read/ReadVariableOpReadVariableOpconvolution/kernel*"
_output_shapes
:	 *%
_class
loc:@convolution/kernel*
dtype0
?
"convolution/bias/Initializer/zerosConst*#
_class
loc:@convolution/bias*
dtype0*
_output_shapes
: *
valueB *    
?
convolution/biasVarHandleOp*#
_class
loc:@convolution/bias*
shape: *
_output_shapes
: *!
shared_nameconvolution/bias*
dtype0
q
1convolution/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconvolution/bias*
_output_shapes
: 
?
convolution/bias/AssignAssignVariableOpconvolution/bias"convolution/bias/Initializer/zeros*
dtype0*#
_class
loc:@convolution/bias
?
$convolution/bias/Read/ReadVariableOpReadVariableOpconvolution/bias*#
_class
loc:@convolution/bias*
dtype0*
_output_shapes
: 
c
convolution/dilation_rateConst*
dtype0*
valueB:*
_output_shapes
:
n
convolution/Reshape/shapeConst*
dtype0*!
valueB"?????     *
_output_shapes
:
?
convolution/ReshapeReshapedetail_concat/concatconvolution/Reshape/shape*
T0*,
_output_shapes
:??????????
c
!convolution/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
convolution/conv1d/ExpandDims
ExpandDimsconvolution/Reshape!convolution/conv1d/ExpandDims/dim*0
_output_shapes
:??????????*
T0
?
.convolution/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconvolution/kernel*
dtype0*"
_output_shapes
:	 
e
#convolution/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
convolution/conv1d/ExpandDims_1
ExpandDims.convolution/conv1d/ExpandDims_1/ReadVariableOp#convolution/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:	 
?
convolution/conv1dConv2Dconvolution/conv1d/ExpandDimsconvolution/conv1d/ExpandDims_1*
paddingSAME*0
_output_shapes
:?????????? *
T0*
strides

?
convolution/conv1d/SqueezeSqueezeconvolution/conv1d*
squeeze_dims
*
T0*,
_output_shapes
:?????????? 
o
"convolution/BiasAdd/ReadVariableOpReadVariableOpconvolution/bias*
dtype0*
_output_shapes
: 
?
convolution/BiasAddBiasAddconvolution/conv1d/Squeeze"convolution/BiasAdd/ReadVariableOp*
T0*,
_output_shapes
:?????????? 
d
convolution/ReluReluconvolution/BiasAdd*
T0*,
_output_shapes
:?????????? 
t
convolution/Reshape_1/shapeConst*%
valueB"????   N      *
_output_shapes
:*
dtype0
?
convolution/Reshape_1Reshapeconvolution/Reluconvolution/Reshape_1/shape*
T0*0
_output_shapes
:?????????? 
l
conv_pool/Reshape/shapeConst*!
valueB"????N      *
_output_shapes
:*
dtype0
?
conv_pool/ReshapeReshapeconvolution/Reshape_1conv_pool/Reshape/shape*
T0*,
_output_shapes
:?????????? 
Z
conv_pool/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
?
conv_pool/ExpandDims
ExpandDimsconv_pool/Reshapeconv_pool/ExpandDims/dim*
T0*0
_output_shapes
:?????????? 
?
conv_pool/MaxPoolMaxPoolconv_pool/ExpandDims*
ksize
*
paddingVALID*
strides
*0
_output_shapes
:?????????? 
}
conv_pool/SqueezeSqueezeconv_pool/MaxPool*
squeeze_dims
*,
_output_shapes
:?????????? *
T0
r
conv_pool/Reshape_1/shapeConst*
dtype0*%
valueB"????   ?       *
_output_shapes
:
?
conv_pool/Reshape_1Reshapeconv_pool/Squeezeconv_pool/Reshape_1/shape*
T0*0
_output_shapes
:?????????? 
?
-conv2/kernel/Initializer/random_uniform/shapeConst*!
valueB"	       @   *
_output_shapes
:*
_class
loc:@conv2/kernel*
dtype0
?
+conv2/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@conv2/kernel*
_output_shapes
: *
valueB
 *????
?
+conv2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
loc:@conv2/kernel*
valueB
 *???=
?
5conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform-conv2/kernel/Initializer/random_uniform/shape*"
_output_shapes
:	 @*
T0*
dtype0*
_class
loc:@conv2/kernel
?
+conv2/kernel/Initializer/random_uniform/subSub+conv2/kernel/Initializer/random_uniform/max+conv2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
_class
loc:@conv2/kernel*
T0
?
+conv2/kernel/Initializer/random_uniform/mulMul5conv2/kernel/Initializer/random_uniform/RandomUniform+conv2/kernel/Initializer/random_uniform/sub*
T0*"
_output_shapes
:	 @*
_class
loc:@conv2/kernel
?
'conv2/kernel/Initializer/random_uniformAdd+conv2/kernel/Initializer/random_uniform/mul+conv2/kernel/Initializer/random_uniform/min*"
_output_shapes
:	 @*
_class
loc:@conv2/kernel*
T0
?
conv2/kernelVarHandleOp*
dtype0*
_class
loc:@conv2/kernel*
shared_nameconv2/kernel*
shape:	 @*
_output_shapes
: 
i
-conv2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2/kernel*
_output_shapes
: 
?
conv2/kernel/AssignAssignVariableOpconv2/kernel'conv2/kernel/Initializer/random_uniform*
dtype0*
_class
loc:@conv2/kernel
?
 conv2/kernel/Read/ReadVariableOpReadVariableOpconv2/kernel*
_class
loc:@conv2/kernel*"
_output_shapes
:	 @*
dtype0
?
conv2/bias/Initializer/zerosConst*
_class
loc:@conv2/bias*
valueB@*    *
_output_shapes
:@*
dtype0
?

conv2/biasVarHandleOp*
shared_name
conv2/bias*
_class
loc:@conv2/bias*
_output_shapes
: *
dtype0*
shape:@
e
+conv2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
conv2/bias*
_output_shapes
: 
{
conv2/bias/AssignAssignVariableOp
conv2/biasconv2/bias/Initializer/zeros*
_class
loc:@conv2/bias*
dtype0
?
conv2/bias/Read/ReadVariableOpReadVariableOp
conv2/bias*
_class
loc:@conv2/bias*
_output_shapes
:@*
dtype0
]
conv2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
h
conv2/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"?????       
y
conv2/ReshapeReshapeconv_pool/Reshape_1conv2/Reshape/shape*,
_output_shapes
:?????????? *
T0
]
conv2/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
?
conv2/conv1d/ExpandDims
ExpandDimsconv2/Reshapeconv2/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:?????????? 
y
(conv2/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv2/kernel*
dtype0*"
_output_shapes
:	 @
_
conv2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
conv2/conv1d/ExpandDims_1
ExpandDims(conv2/conv1d/ExpandDims_1/ReadVariableOpconv2/conv1d/ExpandDims_1/dim*&
_output_shapes
:	 @*
T0
?
conv2/conv1dConv2Dconv2/conv1d/ExpandDimsconv2/conv1d/ExpandDims_1*
paddingSAME*
T0*/
_output_shapes
:?????????8@*
strides

z
conv2/conv1d/SqueezeSqueezeconv2/conv1d*+
_output_shapes
:?????????8@*
squeeze_dims
*
T0
c
conv2/BiasAdd/ReadVariableOpReadVariableOp
conv2/bias*
dtype0*
_output_shapes
:@
?
conv2/BiasAddBiasAddconv2/conv1d/Squeezeconv2/BiasAdd/ReadVariableOp*+
_output_shapes
:?????????8@*
T0
W

conv2/ReluReluconv2/BiasAdd*+
_output_shapes
:?????????8@*
T0
n
conv2/Reshape_1/shapeConst*
dtype0*%
valueB"????   8   @   *
_output_shapes
:
w
conv2/Reshape_1Reshape
conv2/Reluconv2/Reshape_1/shape*
T0*/
_output_shapes
:?????????8@
h
pool2/Reshape/shapeConst*!
valueB"????8   @   *
dtype0*
_output_shapes
:
t
pool2/ReshapeReshapeconv2/Reshape_1pool2/Reshape/shape*+
_output_shapes
:?????????8@*
T0
V
pool2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
}
pool2/ExpandDims
ExpandDimspool2/Reshapepool2/ExpandDims/dim*/
_output_shapes
:?????????8@*
T0
?
pool2/MaxPoolMaxPoolpool2/ExpandDims*/
_output_shapes
:?????????@*
strides
*
paddingVALID*
ksize

t
pool2/SqueezeSqueezepool2/MaxPool*
squeeze_dims
*
T0*+
_output_shapes
:?????????@
n
pool2/Reshape_1/shapeConst*
dtype0*%
valueB"????      @   *
_output_shapes
:
z
pool2/Reshape_1Reshapepool2/Squeezepool2/Reshape_1/shape*/
_output_shapes
:?????????@*
T0
?
-conv3/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*!
valueB"	   @   ?   *
dtype0*
_class
loc:@conv3/kernel
?
+conv3/kernel/Initializer/random_uniform/minConst*
_class
loc:@conv3/kernel*
_output_shapes
: *
dtype0*
valueB
 *?[q?
?
+conv3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *?[q=*
_class
loc:@conv3/kernel
?
5conv3/kernel/Initializer/random_uniform/RandomUniformRandomUniform-conv3/kernel/Initializer/random_uniform/shape*
_class
loc:@conv3/kernel*
T0*#
_output_shapes
:	@?*
dtype0
?
+conv3/kernel/Initializer/random_uniform/subSub+conv3/kernel/Initializer/random_uniform/max+conv3/kernel/Initializer/random_uniform/min*
_class
loc:@conv3/kernel*
_output_shapes
: *
T0
?
+conv3/kernel/Initializer/random_uniform/mulMul5conv3/kernel/Initializer/random_uniform/RandomUniform+conv3/kernel/Initializer/random_uniform/sub*#
_output_shapes
:	@?*
_class
loc:@conv3/kernel*
T0
?
'conv3/kernel/Initializer/random_uniformAdd+conv3/kernel/Initializer/random_uniform/mul+conv3/kernel/Initializer/random_uniform/min*#
_output_shapes
:	@?*
_class
loc:@conv3/kernel*
T0
?
conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shared_nameconv3/kernel*
shape:	@?*
_class
loc:@conv3/kernel
i
-conv3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3/kernel*
_output_shapes
: 
?
conv3/kernel/AssignAssignVariableOpconv3/kernel'conv3/kernel/Initializer/random_uniform*
_class
loc:@conv3/kernel*
dtype0
?
 conv3/kernel/Read/ReadVariableOpReadVariableOpconv3/kernel*
_class
loc:@conv3/kernel*#
_output_shapes
:	@?*
dtype0
?
conv3/bias/Initializer/zerosConst*
valueB?*    *
_class
loc:@conv3/bias*
_output_shapes	
:?*
dtype0
?

conv3/biasVarHandleOp*
dtype0*
shared_name
conv3/bias*
_class
loc:@conv3/bias*
shape:?*
_output_shapes
: 
e
+conv3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
conv3/bias*
_output_shapes
: 
{
conv3/bias/AssignAssignVariableOp
conv3/biasconv3/bias/Initializer/zeros*
_class
loc:@conv3/bias*
dtype0
?
conv3/bias/Read/ReadVariableOpReadVariableOp
conv3/bias*
_class
loc:@conv3/bias*
_output_shapes	
:?*
dtype0
]
conv3/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB:
h
conv3/Reshape/shapeConst*
dtype0*!
valueB"????   @   *
_output_shapes
:
t
conv3/ReshapeReshapepool2/Reshape_1conv3/Reshape/shape*
T0*+
_output_shapes
:?????????@
]
conv3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0
?
conv3/conv1d/ExpandDims
ExpandDimsconv3/Reshapeconv3/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:?????????@
z
(conv3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv3/kernel*
dtype0*#
_output_shapes
:	@?
_
conv3/conv1d/ExpandDims_1/dimConst*
value	B : *
_output_shapes
: *
dtype0
?
conv3/conv1d/ExpandDims_1
ExpandDims(conv3/conv1d/ExpandDims_1/ReadVariableOpconv3/conv1d/ExpandDims_1/dim*'
_output_shapes
:	@?*
T0
?
conv3/conv1dConv2Dconv3/conv1d/ExpandDimsconv3/conv1d/ExpandDims_1*
T0*0
_output_shapes
:?????????
?*
strides
*
paddingSAME
{
conv3/conv1d/SqueezeSqueezeconv3/conv1d*
T0*,
_output_shapes
:?????????
?*
squeeze_dims

d
conv3/BiasAdd/ReadVariableOpReadVariableOp
conv3/bias*
dtype0*
_output_shapes	
:?
?
conv3/BiasAddBiasAddconv3/conv1d/Squeezeconv3/BiasAdd/ReadVariableOp*,
_output_shapes
:?????????
?*
T0
X

conv3/ReluReluconv3/BiasAdd*,
_output_shapes
:?????????
?*
T0
n
conv3/Reshape_1/shapeConst*
_output_shapes
:*%
valueB"????   
   ?   *
dtype0
x
conv3/Reshape_1Reshape
conv3/Reluconv3/Reshape_1/shape*
T0*0
_output_shapes
:?????????
?
h
pool3/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"????
   ?   
u
pool3/ReshapeReshapeconv3/Reshape_1pool3/Reshape/shape*,
_output_shapes
:?????????
?*
T0
V
pool3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
~
pool3/ExpandDims
ExpandDimspool3/Reshapepool3/ExpandDims/dim*0
_output_shapes
:?????????
?*
T0
?
pool3/MaxPoolMaxPoolpool3/ExpandDims*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides

u
pool3/SqueezeSqueezepool3/MaxPool*
T0*,
_output_shapes
:??????????*
squeeze_dims

n
pool3/Reshape_1/shapeConst*
_output_shapes
:*%
valueB"????      ?   *
dtype0
{
pool3/Reshape_1Reshapepool3/Squeezepool3/Reshape_1/shape*
T0*0
_output_shapes
:??????????
s
convolution_flat/Reshape/shapeConst*!
valueB"????   ?   *
dtype0*
_output_shapes
:
?
convolution_flat/ReshapeReshapepool3/Reshape_1convolution_flat/Reshape/shape*
T0*,
_output_shapes
:??????????
^
convolution_flat/ShapeShapeconvolution_flat/Reshape*
T0*
_output_shapes
:
n
$convolution_flat/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
p
&convolution_flat/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
p
&convolution_flat/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
convolution_flat/strided_sliceStridedSliceconvolution_flat/Shape$convolution_flat/strided_slice/stack&convolution_flat/strided_slice/stack_1&convolution_flat/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
m
"convolution_flat/Reshape_1/shape/1Const*
_output_shapes
: *
valueB :
?????????*
dtype0
?
 convolution_flat/Reshape_1/shapePackconvolution_flat/strided_slice"convolution_flat/Reshape_1/shape/1*
N*
_output_shapes
:*
T0
?
convolution_flat/Reshape_1Reshapeconvolution_flat/Reshape convolution_flat/Reshape_1/shape*(
_output_shapes
:??????????*
T0
u
 convolution_flat/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*!
valueB"????   ?  
?
convolution_flat/Reshape_2Reshapeconvolution_flat/Reshape_1 convolution_flat/Reshape_2/shape*
T0*,
_output_shapes
:??????????
j
dropout_cnn/Reshape/shapeConst*
_output_shapes
:*
valueB"?????  *
dtype0
?
dropout_cnn/ReshapeReshapeconvolution_flat/Reshape_2dropout_cnn/Reshape/shape*(
_output_shapes
:??????????*
T0
h
dropout_cnn/IdentityIdentitydropout_cnn/Reshape*(
_output_shapes
:??????????*
T0
p
dropout_cnn/Reshape_1/shapeConst*
_output_shapes
:*!
valueB"????   ?  *
dtype0
?
dropout_cnn/Reshape_1Reshapedropout_cnn/Identitydropout_cnn/Reshape_1/shape*
T0*,
_output_shapes
:??????????
X
all_concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
?
all_concat/concatConcatV2dropout_cnn/Reshape_1IRDischarge_timeQDall_concat/concat/axis*,
_output_shapes
:??????????*
N*
T0
?
1recurrent/kernel/Initializer/random_uniform/shapeConst*
valueB"?     *
dtype0*
_output_shapes
:*#
_class
loc:@recurrent/kernel
?
/recurrent/kernel/Initializer/random_uniform/minConst*
dtype0*#
_class
loc:@recurrent/kernel*
valueB
 *???*
_output_shapes
: 
?
/recurrent/kernel/Initializer/random_uniform/maxConst*
valueB
 *??=*
dtype0*
_output_shapes
: *#
_class
loc:@recurrent/kernel
?
9recurrent/kernel/Initializer/random_uniform/RandomUniformRandomUniform1recurrent/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
??*#
_class
loc:@recurrent/kernel*
dtype0*
T0
?
/recurrent/kernel/Initializer/random_uniform/subSub/recurrent/kernel/Initializer/random_uniform/max/recurrent/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *#
_class
loc:@recurrent/kernel
?
/recurrent/kernel/Initializer/random_uniform/mulMul9recurrent/kernel/Initializer/random_uniform/RandomUniform/recurrent/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@recurrent/kernel* 
_output_shapes
:
??
?
+recurrent/kernel/Initializer/random_uniformAdd/recurrent/kernel/Initializer/random_uniform/mul/recurrent/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@recurrent/kernel* 
_output_shapes
:
??
?
recurrent/kernelVarHandleOp*
_output_shapes
: *#
_class
loc:@recurrent/kernel*
dtype0*!
shared_namerecurrent/kernel*
shape:
??
q
1recurrent/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOprecurrent/kernel*
_output_shapes
: 
?
recurrent/kernel/AssignAssignVariableOprecurrent/kernel+recurrent/kernel/Initializer/random_uniform*#
_class
loc:@recurrent/kernel*
dtype0
?
$recurrent/kernel/Read/ReadVariableOpReadVariableOprecurrent/kernel*#
_class
loc:@recurrent/kernel* 
_output_shapes
:
??*
dtype0
?
:recurrent/recurrent_kernel/Initializer/random_normal/shapeConst*
_output_shapes
:*-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0*
valueB"   ?   
?
9recurrent/recurrent_kernel/Initializer/random_normal/meanConst*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
;recurrent/recurrent_kernel/Initializer/random_normal/stddevConst*-
_class#
!loc:@recurrent/recurrent_kernel*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
Irecurrent/recurrent_kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal:recurrent/recurrent_kernel/Initializer/random_normal/shape* 
_output_shapes
:
??*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel*
T0
?
8recurrent/recurrent_kernel/Initializer/random_normal/mulMulIrecurrent/recurrent_kernel/Initializer/random_normal/RandomStandardNormal;recurrent/recurrent_kernel/Initializer/random_normal/stddev*-
_class#
!loc:@recurrent/recurrent_kernel* 
_output_shapes
:
??*
T0
?
4recurrent/recurrent_kernel/Initializer/random_normalAdd8recurrent/recurrent_kernel/Initializer/random_normal/mul9recurrent/recurrent_kernel/Initializer/random_normal/mean* 
_output_shapes
:
??*
T0*-
_class#
!loc:@recurrent/recurrent_kernel
?
)recurrent/recurrent_kernel/Initializer/QrQr4recurrent/recurrent_kernel/Initializer/random_normal*-
_class#
!loc:@recurrent/recurrent_kernel*,
_output_shapes
:
??:
??*
T0
?
/recurrent/recurrent_kernel/Initializer/DiagPartDiagPart+recurrent/recurrent_kernel/Initializer/Qr:1*-
_class#
!loc:@recurrent/recurrent_kernel*
T0*
_output_shapes	
:?
?
+recurrent/recurrent_kernel/Initializer/SignSign/recurrent/recurrent_kernel/Initializer/DiagPart*
T0*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes	
:?
?
*recurrent/recurrent_kernel/Initializer/mulMul)recurrent/recurrent_kernel/Initializer/Qr+recurrent/recurrent_kernel/Initializer/Sign* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel*
T0
?
Frecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose/permConst*
_output_shapes
:*
valueB"       *-
_class#
!loc:@recurrent/recurrent_kernel*
dtype0
?
Arecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose	Transpose*recurrent/recurrent_kernel/Initializer/mulFrecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose/perm*
T0*-
_class#
!loc:@recurrent/recurrent_kernel* 
_output_shapes
:
??
?
4recurrent/recurrent_kernel/Initializer/Reshape/shapeConst*
valueB"?      *
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel*
_output_shapes
:
?
.recurrent/recurrent_kernel/Initializer/ReshapeReshapeArecurrent/recurrent_kernel/Initializer/matrix_transpose/transpose4recurrent/recurrent_kernel/Initializer/Reshape/shape*
T0* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel
?
.recurrent/recurrent_kernel/Initializer/mul_1/xConst*-
_class#
!loc:@recurrent/recurrent_kernel*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
,recurrent/recurrent_kernel/Initializer/mul_1Mul.recurrent/recurrent_kernel/Initializer/mul_1/x.recurrent/recurrent_kernel/Initializer/Reshape*-
_class#
!loc:@recurrent/recurrent_kernel* 
_output_shapes
:
??*
T0
?
recurrent/recurrent_kernelVarHandleOp*+
shared_namerecurrent/recurrent_kernel*
_output_shapes
: *
shape:
??*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel
?
;recurrent/recurrent_kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOprecurrent/recurrent_kernel*
_output_shapes
: 
?
!recurrent/recurrent_kernel/AssignAssignVariableOprecurrent/recurrent_kernel,recurrent/recurrent_kernel/Initializer/mul_1*
dtype0*-
_class#
!loc:@recurrent/recurrent_kernel
?
.recurrent/recurrent_kernel/Read/ReadVariableOpReadVariableOprecurrent/recurrent_kernel*
dtype0* 
_output_shapes
:
??*-
_class#
!loc:@recurrent/recurrent_kernel
?
 recurrent/bias/Initializer/zerosConst*
_output_shapes	
:?*
dtype0*!
_class
loc:@recurrent/bias*
valueB?*    
?
recurrent/bias/Initializer/onesConst*
valueB?*  ??*
_output_shapes	
:?*
dtype0*!
_class
loc:@recurrent/bias
?
"recurrent/bias/Initializer/zeros_1Const*
valueB?*    *
dtype0*
_output_shapes	
:?*!
_class
loc:@recurrent/bias
?
&recurrent/bias/Initializer/concat/axisConst*
dtype0*!
_class
loc:@recurrent/bias*
_output_shapes
: *
value	B : 
?
!recurrent/bias/Initializer/concatConcatV2 recurrent/bias/Initializer/zerosrecurrent/bias/Initializer/ones"recurrent/bias/Initializer/zeros_1&recurrent/bias/Initializer/concat/axis*
N*
T0*!
_class
loc:@recurrent/bias*
_output_shapes	
:?
?
recurrent/biasVarHandleOp*!
_class
loc:@recurrent/bias*
shared_namerecurrent/bias*
dtype0*
_output_shapes
: *
shape:?
m
/recurrent/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOprecurrent/bias*
_output_shapes
: 
?
recurrent/bias/AssignAssignVariableOprecurrent/bias!recurrent/bias/Initializer/concat*!
_class
loc:@recurrent/bias*
dtype0
?
"recurrent/bias/Read/ReadVariableOpReadVariableOprecurrent/bias*!
_class
loc:@recurrent/bias*
_output_shapes	
:?*
dtype0
P
recurrent/ShapeShapeall_concat/concat*
_output_shapes
:*
T0
g
recurrent/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
recurrent/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
i
recurrent/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
recurrent/strided_sliceStridedSlicerecurrent/Shaperecurrent/strided_slice/stackrecurrent/strided_slice/stack_1recurrent/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
X
recurrent/zeros/mul/yConst*
dtype0*
_output_shapes
: *
value
B :?
k
recurrent/zeros/mulMulrecurrent/strided_slicerecurrent/zeros/mul/y*
_output_shapes
: *
T0
Y
recurrent/zeros/Less/yConst*
value
B :?*
dtype0*
_output_shapes
: 
j
recurrent/zeros/LessLessrecurrent/zeros/mulrecurrent/zeros/Less/y*
T0*
_output_shapes
: 
[
recurrent/zeros/packed/1Const*
value
B :?*
dtype0*
_output_shapes
: 

recurrent/zeros/packedPackrecurrent/strided_slicerecurrent/zeros/packed/1*
_output_shapes
:*
N*
T0
Z
recurrent/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
y
recurrent/zerosFillrecurrent/zeros/packedrecurrent/zeros/Const*(
_output_shapes
:??????????*
T0
Z
recurrent/zeros_1/mul/yConst*
value
B :?*
_output_shapes
: *
dtype0
o
recurrent/zeros_1/mulMulrecurrent/strided_slicerecurrent/zeros_1/mul/y*
T0*
_output_shapes
: 
[
recurrent/zeros_1/Less/yConst*
_output_shapes
: *
value
B :?*
dtype0
p
recurrent/zeros_1/LessLessrecurrent/zeros_1/mulrecurrent/zeros_1/Less/y*
T0*
_output_shapes
: 
]
recurrent/zeros_1/packed/1Const*
_output_shapes
: *
value
B :?*
dtype0
?
recurrent/zeros_1/packedPackrecurrent/strided_slicerecurrent/zeros_1/packed/1*
N*
_output_shapes
:*
T0
\
recurrent/zeros_1/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 

recurrent/zeros_1Fillrecurrent/zeros_1/packedrecurrent/zeros_1/Const*
T0*(
_output_shapes
:??????????
?
!recurrent/StatefulPartitionedCallStatefulPartitionedCallall_concat/concatrecurrent/zerosrecurrent/zeros_1recurrent/kernelrecurrent/recurrent_kernelrecurrent/bias*
Tout	
2*,
_gradient_op_typePartitionedCall-23441**
config_proto

GPU 

CPU2J 8*
Tin

2*j
_output_shapesX
V:??????????:??????????:??????????:??????????: *(
f#R!
__inference_standard_lstm_23440
w
dropout_lstm/IdentityIdentity!recurrent/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????
?
.hidden/kernel/Initializer/random_uniform/shapeConst*
dtype0* 
_class
loc:@hidden/kernel*
valueB"?       *
_output_shapes
:
?
,hidden/kernel/Initializer/random_uniform/minConst*
_output_shapes
: * 
_class
loc:@hidden/kernel*
valueB
 *?KF?*
dtype0
?
,hidden/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: * 
_class
loc:@hidden/kernel*
valueB
 *?KF>
?
6hidden/kernel/Initializer/random_uniform/RandomUniformRandomUniform.hidden/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	? * 
_class
loc:@hidden/kernel
?
,hidden/kernel/Initializer/random_uniform/subSub,hidden/kernel/Initializer/random_uniform/max,hidden/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: * 
_class
loc:@hidden/kernel
?
,hidden/kernel/Initializer/random_uniform/mulMul6hidden/kernel/Initializer/random_uniform/RandomUniform,hidden/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@hidden/kernel*
_output_shapes
:	? 
?
(hidden/kernel/Initializer/random_uniformAdd,hidden/kernel/Initializer/random_uniform/mul,hidden/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@hidden/kernel*
_output_shapes
:	? 
?
hidden/kernelVarHandleOp*
_output_shapes
: *
dtype0* 
_class
loc:@hidden/kernel*
shared_namehidden/kernel*
shape:	? 
k
.hidden/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden/kernel*
_output_shapes
: 
?
hidden/kernel/AssignAssignVariableOphidden/kernel(hidden/kernel/Initializer/random_uniform*
dtype0* 
_class
loc:@hidden/kernel
?
!hidden/kernel/Read/ReadVariableOpReadVariableOphidden/kernel* 
_class
loc:@hidden/kernel*
dtype0*
_output_shapes
:	? 
?
hidden/bias/Initializer/zerosConst*
_class
loc:@hidden/bias*
dtype0*
_output_shapes
: *
valueB *    
?
hidden/biasVarHandleOp*
shared_namehidden/bias*
dtype0*
_class
loc:@hidden/bias*
_output_shapes
: *
shape: 
g
,hidden/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOphidden/bias*
_output_shapes
: 

hidden/bias/AssignAssignVariableOphidden/biashidden/bias/Initializer/zeros*
dtype0*
_class
loc:@hidden/bias
?
hidden/bias/Read/ReadVariableOpReadVariableOphidden/bias*
_output_shapes
: *
dtype0*
_class
loc:@hidden/bias
k
hidden/MatMul/ReadVariableOpReadVariableOphidden/kernel*
_output_shapes
:	? *
dtype0
~
hidden/MatMulMatMuldropout_lstm/Identityhidden/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 
e
hidden/BiasAdd/ReadVariableOpReadVariableOphidden/bias*
_output_shapes
: *
dtype0
y
hidden/BiasAddBiasAddhidden/MatMulhidden/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:????????? 
U
hidden/ReluReluhidden/BiasAdd*
T0*'
_output_shapes
:????????? 
?
.output/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:* 
_class
loc:@output/kernel*
valueB"       
?
,output/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *A׾* 
_class
loc:@output/kernel
?
,output/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@output/kernel*
valueB
 *A?>*
_output_shapes
: *
dtype0
?
6output/kernel/Initializer/random_uniform/RandomUniformRandomUniform.output/kernel/Initializer/random_uniform/shape*
_output_shapes

: * 
_class
loc:@output/kernel*
T0*
dtype0
?
,output/kernel/Initializer/random_uniform/subSub,output/kernel/Initializer/random_uniform/max,output/kernel/Initializer/random_uniform/min* 
_class
loc:@output/kernel*
_output_shapes
: *
T0
?
,output/kernel/Initializer/random_uniform/mulMul6output/kernel/Initializer/random_uniform/RandomUniform,output/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0* 
_class
loc:@output/kernel
?
(output/kernel/Initializer/random_uniformAdd,output/kernel/Initializer/random_uniform/mul,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes

: 
?
output/kernelVarHandleOp*
dtype0* 
_class
loc:@output/kernel*
shared_nameoutput/kernel*
shape
: *
_output_shapes
: 
k
.output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/kernel*
_output_shapes
: 
?
output/kernel/AssignAssignVariableOpoutput/kernel(output/kernel/Initializer/random_uniform* 
_class
loc:@output/kernel*
dtype0
?
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

: * 
_class
loc:@output/kernel*
dtype0
?
output/bias/Initializer/zerosConst*
dtype0*
_class
loc:@output/bias*
_output_shapes
:*
valueB*    
?
output/biasVarHandleOp*
shared_nameoutput/bias*
_output_shapes
: *
_class
loc:@output/bias*
shape:*
dtype0
g
,output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpoutput/bias*
_output_shapes
: 

output/bias/AssignAssignVariableOpoutput/biasoutput/bias/Initializer/zeros*
_class
loc:@output/bias*
dtype0
?
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_class
loc:@output/bias*
dtype0*
_output_shapes
:
j
output/MatMul/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

: *
dtype0
t
output/MatMulMatMulhidden/Reluoutput/MatMul/ReadVariableOp*'
_output_shapes
:?????????*
T0
e
output/BiasAdd/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
y
output/BiasAddBiasAddoutput/MatMuloutput/BiasAdd/ReadVariableOp*'
_output_shapes
:?????????*
T0
\
output/clippy/ReluReluoutput/BiasAdd*
T0*'
_output_shapes
:?????????
X
output/clippy/ConstConst*
valueB
 *????*
dtype0*
_output_shapes
: 
Z
output/clippy/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
?
#output/clippy/clip_by_value/MinimumMinimumoutput/clippy/Reluoutput/clippy/Const*'
_output_shapes
:?????????*
T0
?
output/clippy/clip_by_valueMaximum#output/clippy/clip_by_value/Minimumoutput/clippy/Const_1*
T0*'
_output_shapes
:?????????
8
predict/group_depsNoOp^output/clippy/clip_by_value
Z
ConstConst"/device:CPU:0*
valueB Bmodel*
_output_shapes
: *
dtype0
?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
J
AssignVariableOpAssignVariableOphidden/kernelIdentity*
dtype0
?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*I
value@B>B4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_1IdentityRestoreV2_1*
_output_shapes
:*
T0
L
AssignVariableOp_1AssignVariableOphidden/bias
Identity_1*
dtype0
?
RestoreV2_2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
?
RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
N
AssignVariableOp_2AssignVariableOpoutput/kernel
Identity_2*
dtype0
?
RestoreV2_3/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_3IdentityRestoreV2_3*
_output_shapes
:*
T0
L
AssignVariableOp_3AssignVariableOpoutput/bias
Identity_3*
dtype0
?
RestoreV2_4/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB<layer_with_weights-0/layer/kernel/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_4	RestoreV2ConstRestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
S
AssignVariableOp_4AssignVariableOpconvolution/kernel
Identity_4*
dtype0
?
RestoreV2_5/tensor_namesConst"/device:CPU:0*O
valueFBDB:layer_with_weights-0/layer/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
?
RestoreV2_5	RestoreV2ConstRestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_5IdentityRestoreV2_5*
_output_shapes
:*
T0
Q
AssignVariableOp_5AssignVariableOpconvolution/bias
Identity_5*
dtype0
?
RestoreV2_6/tensor_namesConst"/device:CPU:0*Q
valueHBFB<layer_with_weights-1/layer/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
RestoreV2_6	RestoreV2ConstRestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_6IdentityRestoreV2_6*
T0*
_output_shapes
:
M
AssignVariableOp_6AssignVariableOpconv2/kernel
Identity_6*
dtype0
?
RestoreV2_7/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*O
valueFBDB:layer_with_weights-1/layer/bias/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
RestoreV2_7	RestoreV2ConstRestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_7IdentityRestoreV2_7*
T0*
_output_shapes
:
K
AssignVariableOp_7AssignVariableOp
conv2/bias
Identity_7*
dtype0
?
RestoreV2_8/tensor_namesConst"/device:CPU:0*
_output_shapes
:*Q
valueHBFB<layer_with_weights-2/layer/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
?
RestoreV2_8	RestoreV2ConstRestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_8IdentityRestoreV2_8*
_output_shapes
:*
T0
M
AssignVariableOp_8AssignVariableOpconv3/kernel
Identity_8*
dtype0
?
RestoreV2_9/tensor_namesConst"/device:CPU:0*
_output_shapes
:*O
valueFBDB:layer_with_weights-2/layer/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
?
RestoreV2_9	RestoreV2ConstRestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_9IdentityRestoreV2_9*
T0*
_output_shapes
:
K
AssignVariableOp_9AssignVariableOp
conv3/bias
Identity_9*
dtype0
?
RestoreV2_10/tensor_namesConst"/device:CPU:0*P
valueGBEB;layer_with_weights-3/cell/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
?
RestoreV2_10	RestoreV2ConstRestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_10IdentityRestoreV2_10*
T0*
_output_shapes
:
S
AssignVariableOp_10AssignVariableOprecurrent/kernelIdentity_10*
dtype0
?
RestoreV2_11/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Z
valueQBOBElayer_with_weights-3/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
?
RestoreV2_11	RestoreV2ConstRestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_11IdentityRestoreV2_11*
_output_shapes
:*
T0
]
AssignVariableOp_11AssignVariableOprecurrent/recurrent_kernelIdentity_11*
dtype0
?
RestoreV2_12/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*N
valueEBCB9layer_with_weights-3/cell/bias/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
valueB
B *
_output_shapes
:*
dtype0
?
RestoreV2_12	RestoreV2ConstRestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_12IdentityRestoreV2_12*
T0*
_output_shapes
:
Q
AssignVariableOp_12AssignVariableOprecurrent/biasIdentity_12*
dtype0
M
VarIsInitializedOpVarIsInitializedOpoutput/bias*
_output_shapes
: 
N
VarIsInitializedOp_1VarIsInitializedOp
conv3/bias*
_output_shapes
: 
R
VarIsInitializedOp_2VarIsInitializedOprecurrent/bias*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOpoutput/kernel*
_output_shapes
: 
V
VarIsInitializedOp_4VarIsInitializedOpconvolution/kernel*
_output_shapes
: 
T
VarIsInitializedOp_5VarIsInitializedOprecurrent/kernel*
_output_shapes
: 
^
VarIsInitializedOp_6VarIsInitializedOprecurrent/recurrent_kernel*
_output_shapes
: 
T
VarIsInitializedOp_7VarIsInitializedOpconvolution/bias*
_output_shapes
: 
N
VarIsInitializedOp_8VarIsInitializedOp
conv2/bias*
_output_shapes
: 
Q
VarIsInitializedOp_9VarIsInitializedOphidden/kernel*
_output_shapes
: 
P
VarIsInitializedOp_10VarIsInitializedOphidden/bias*
_output_shapes
: 
Q
VarIsInitializedOp_11VarIsInitializedOpconv3/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_12VarIsInitializedOpconv2/kernel*
_output_shapes
: 
?
initNoOp^conv2/bias/Assign^conv2/kernel/Assign^conv3/bias/Assign^conv3/kernel/Assign^convolution/bias/Assign^convolution/kernel/Assign^hidden/bias/Assign^hidden/kernel/Assign^output/bias/Assign^output/kernel/Assign^recurrent/bias/Assign^recurrent/kernel/Assign"^recurrent/recurrent_kernel/Assign
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
_output_shapes
: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: *
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B?B:layer_with_weights-0/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-3/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
}
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$convolution/bias/Read/ReadVariableOp&convolution/kernel/Read/ReadVariableOpconv2/bias/Read/ReadVariableOp conv2/kernel/Read/ReadVariableOpconv3/bias/Read/ReadVariableOp conv3/kernel/Read/ReadVariableOp"recurrent/bias/Read/ReadVariableOp$recurrent/kernel/Read/ReadVariableOp.recurrent/recurrent_kernel/Read/ReadVariableOphidden/bias/Read/ReadVariableOp!hidden/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOp*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?B:layer_with_weights-0/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/layer/bias/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-3/cell/bias/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/cell/kernel/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-3/cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_output_shapes
:*
dtype0
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*-
value$B"B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*H
_output_shapes6
4:::::::::::::
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
W
save/AssignVariableOpAssignVariableOpconvolution/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
_output_shapes
:*
T0
]
save/AssignVariableOp_1AssignVariableOpconvolution/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
U
save/AssignVariableOp_2AssignVariableOp
conv2/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
W
save/AssignVariableOp_3AssignVariableOpconv2/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0
U
save/AssignVariableOp_4AssignVariableOp
conv3/biassave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
_output_shapes
:*
T0
W
save/AssignVariableOp_5AssignVariableOpconv3/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
Y
save/AssignVariableOp_6AssignVariableOprecurrent/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
[
save/AssignVariableOp_7AssignVariableOprecurrent/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
_output_shapes
:*
T0
e
save/AssignVariableOp_8AssignVariableOprecurrent/recurrent_kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
V
save/AssignVariableOp_9AssignVariableOphidden/biassave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
_output_shapes
:*
T0
Z
save/AssignVariableOp_10AssignVariableOphidden/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
X
save/AssignVariableOp_11AssignVariableOpoutput/biassave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
Z
save/AssignVariableOp_12AssignVariableOpoutput/kernelsave/Identity_12*
dtype0
?
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9

init_1NoOp??
?E
?
__inference_cudnn_lstm_23561

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4??
CudnnRNNV3?concat/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOp?zeros_like/ReadVariableOpG
transpose/permConst*!
valueB"          *
dtype0@
	transpose	Transposeinputstranspose/perm:output:0*
T08
ExpandDims/dimConst*
value	B : *
dtype0B

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0:
ExpandDims_1/dimConst*
value	B : *
dtype0F
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0/
ConstConst*
value	B :*
dtype09
split/split_dimConst*
value	B :*
dtype0;
split/ReadVariableOpReadVariableOpkernel*
dtype0`
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*
	num_split1
Const_1Const*
value	B :*
dtype0;
split_1/split_dimConst*
dtype0*
value	B :G
split_1/ReadVariableOpReadVariableOprecurrent_kernel*
dtype0f
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*
	num_split>
zeros_like/ReadVariableOpReadVariableOpbias*
dtype0<

zeros_likeConst*
dtype0*
valueB?*    V
concat/ReadVariableOpReadVariableOpbias^zeros_like/ReadVariableOp*
dtype05
concat/axisConst*
value	B : *
dtype0n
concatConcatV2zeros_like:output:0concat/ReadVariableOp:value:0concat/axis:output:0*
T0*
N&
ShapeShapetranspose:y:0*
T0A
strided_slice/stackConst*
valueB:*
dtype0C
strided_slice/stack_1Const*
valueB:*
dtype0C
strided_slice/stack_2Const*
valueB:*
dtype0?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask(
Shape_1Shapetranspose:y:0*
T0C
strided_slice_1/stackConst*
valueB: *
dtype0E
strided_slice_1/stack_1Const*
valueB:*
dtype0E
strided_slice_1/stack_2Const*
valueB:*
dtype0?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
T0*
shrink_axis_mask*
Index0;
	Fill/dimsPackstrided_slice:output:0*
T0*
NC
FillFillFill/dims:output:0strided_slice_1:output:0*
T01
Const_2Const*
dtype0*
value	B :;
split_2/split_dimConst*
value	B : *
dtype0W
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*
	num_split>
Const_3Const*
dtype0*
valueB:
?????????E
transpose_1/permConst*
dtype0*
valueB"       L
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0>
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0E
transpose_2/permConst*
valueB"       *
dtype0L
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0@
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0E
transpose_3/permConst*
valueB"       *
dtype0L
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0@
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0E
transpose_4/permConst*
dtype0*
valueB"       L
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0@
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0E
transpose_5/permConst*
valueB"       *
dtype0N
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0@
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0E
transpose_6/permConst*
dtype0*
valueB"       N
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0@
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0E
transpose_7/permConst*
valueB"       *
dtype0N
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0@
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0E
transpose_8/permConst*
valueB"       *
dtype0N
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0@
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0A
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0A
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0B

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0B

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0B

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0B

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0B

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0B

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T07
concat_1/axisConst*
dtype0*
value	B : ?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
T0*
N~

CudnnRNNV3
CudnnRNNV3transpose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0Fill:output:0*
T0L
strided_slice_2/stackConst*
valueB:
?????????*
dtype0E
strided_slice_2/stack_1Const*
valueB: *
dtype0E
strided_slice_2/stack_2Const*
dtype0*
valueB:?
strided_slice_2StridedSliceCudnnRNNV3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
shrink_axis_mask*
T0I
transpose_9/permConst*!
valueB"          *
dtype0Q
transpose_9	TransposeCudnnRNNV3:output:0transpose_9/perm:output:0*
T0C
strided_slice_3/stackConst*
valueB: *
dtype0E
strided_slice_3/stack_1Const*
dtype0*
valueB:E
strided_slice_3/stack_2Const*
dtype0*
valueB:?
strided_slice_3StridedSliceCudnnRNNV3:output_h:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
shrink_axis_mask*
T0*
Index0C
strided_slice_4/stackConst*
dtype0*
valueB: E
strided_slice_4/stack_1Const*
valueB:*
dtype0E
strided_slice_4/stack_2Const*
valueB:*
dtype0?
strided_slice_4StridedSliceCudnnRNNV3:output_c:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
T0*
Index0*
shrink_axis_maskC
runtimeConst"/device:CPU:0*
valueB
 *   @*
dtype0?
IdentityIdentitystrided_slice_2:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_1Identitytranspose_9:y:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_2Identitystrided_slice_3:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_3Identitystrided_slice_4:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_4Identityruntime:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*
_input_shapes *=
api_implements+)lstm_3b1d4449-a474-476a-9143-b4b809f5d66c*
api_preferred_deviceGPU2,
split/ReadVariableOpsplit/ReadVariableOp2.
concat/ReadVariableOpconcat/ReadVariableOp26
zeros_like/ReadVariableOpzeros_like/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp2

CudnnRNNV3
CudnnRNNV3:0,
*
_user_specified_namerecurrent_kernel:$ 

_user_specified_namebias:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinit_h:&"
 
_user_specified_nameinit_c:&"
 
_user_specified_namekernel
??
?
-__inference___backward_cudnn_lstm_23562_23740
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_strided_slice_2_grad_shape_cudnnrnnv3I
Egradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stackK
Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_1K
Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_2A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm3
/gradients_strided_slice_3_grad_shape_cudnnrnnv3I
Egradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stackK
Ggradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_1K
Ggradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_23
/gradients_strided_slice_4_grad_shape_cudnnrnnv3I
Egradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stackK
Ggradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_1K
Ggradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_2#
gradients_zeros_like_cudnnrnnv3:
6gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_transpose;
7gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims=
9gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims_19
5gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_concat_15
1gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_fill;
7gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_cudnnrnnv3=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis&
"gradients_transpose_grad_transpose%
!gradients_expanddims_grad_reshape'
#gradients_expanddims_1_grad_reshape
gradients_split_grad_concat!
gradients_split_1_grad_concat!
gradients_concat_grad_slice_1?_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:??????????e
gradients/grad_ys_1Identityplaceholder_1*,
_output_shapes
:??????????*
T0a
gradients/grad_ys_2Identityplaceholder_2*(
_output_shapes
:??????????*
T0a
gradients/grad_ys_3Identityplaceholder_3*(
_output_shapes
:??????????*
T0O
gradients/grad_ys_4Identityplaceholder_4*
_output_shapes
: *
T0?
$gradients/strided_slice_2_grad/ShapeShape/gradients_strided_slice_2_grad_shape_cudnnrnnv3*
T0*
_output_shapes
:?
/gradients/strided_slice_2_grad/StridedSliceGradStridedSliceGrad-gradients/strided_slice_2_grad/Shape:output:0Egradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stackGgradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_1Ggradients_strided_slice_2_grad_stridedslicegrad_strided_slice_2_stack_2gradients/grad_ys_0:output:0*
shrink_axis_mask*,
_output_shapes
:??????????*
Index0*
T0?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*,
_output_shapes
:??????????*
T0?
$gradients/strided_slice_3_grad/ShapeShape/gradients_strided_slice_3_grad_shape_cudnnrnnv3*
_output_shapes
:*
T0?
/gradients/strided_slice_3_grad/StridedSliceGradStridedSliceGrad-gradients/strided_slice_3_grad/Shape:output:0Egradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stackGgradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_1Ggradients_strided_slice_3_grad_stridedslicegrad_strided_slice_3_stack_2gradients/grad_ys_2:output:0*
T0*,
_output_shapes
:??????????*
shrink_axis_mask*
Index0?
$gradients/strided_slice_4_grad/ShapeShape/gradients_strided_slice_4_grad_shape_cudnnrnnv3*
T0*
_output_shapes
:?
/gradients/strided_slice_4_grad/StridedSliceGradStridedSliceGrad-gradients/strided_slice_4_grad/Shape:output:0Egradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stackGgradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_1Ggradients_strided_slice_4_grad_stridedslicegrad_strided_slice_4_stack_2gradients/grad_ys_3:output:0*
shrink_axis_mask*
T0*
Index0*,
_output_shapes
:???????????
gradients/AddNAddN8gradients/strided_slice_2_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
T0*B
_class8
64loc:@gradients/strided_slice_2_grad/StridedSliceGrad*,
_output_shapes
:??????????*
Ne
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnnv3*
T0*
_output_shapes
:?
,gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3CudnnRNNBackpropV36gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_transpose7gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims9gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_expanddims_15gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_concat_11gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_fill/gradients_strided_slice_2_grad_shape_cudnnrnnv3/gradients_strided_slice_3_grad_shape_cudnnrnnv3/gradients_strided_slice_4_grad_shape_cudnnrnnv3gradients/AddN:sum:08gradients/strided_slice_3_grad/StridedSliceGrad:output:08gradients/strided_slice_4_grad/StridedSliceGrad:output:0gradients_zeros_like_cudnnrnnv37gradients_cudnnrnnv3_grad_cudnnrnnbackpropv3_cudnnrnnv3*d
_output_shapesR
P:??????????:??????????:??????????:??*
T0?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:?
"gradients/transpose_grad/transpose	Transpose=gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:??????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:?
!gradients/ExpandDims_grad/ReshapeReshape?gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*(
_output_shapes
:??????????*
T0y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:?
#gradients/ExpandDims_1_grad/ReshapeReshape?gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:??????????^
gradients/concat_1_grad/RankConst*
dtype0*
value	B :*
_output_shapes
: ?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
valueB:??*
dtype0k
gradients/concat_1_grad/Shape_1Const*
valueB:??*
_output_shapes
:*
dtype0k
gradients/concat_1_grad/Shape_2Const*
valueB:??*
dtype0*
_output_shapes
:k
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:??k
gradients/concat_1_grad/Shape_4Const*
valueB:??*
_output_shapes
:*
dtype0k
gradients/concat_1_grad/Shape_5Const*
valueB:??*
dtype0*
_output_shapes
:k
gradients/concat_1_grad/Shape_6Const*
valueB:??*
dtype0*
_output_shapes
:k
gradients/concat_1_grad/Shape_7Const*
valueB:??*
dtype0*
_output_shapes
:j
gradients/concat_1_grad/Shape_8Const*
valueB:?*
_output_shapes
:*
dtype0j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
valueB:?*
dtype0k
 gradients/concat_1_grad/Shape_10Const*
valueB:?*
_output_shapes
:*
dtype0k
 gradients/concat_1_grad/Shape_11Const*
dtype0*
_output_shapes
:*
valueB:?k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
valueB:?*
dtype0k
 gradients/concat_1_grad/Shape_13Const*
valueB:?*
dtype0*
_output_shapes
:k
 gradients/concat_1_grad/Shape_14Const*
dtype0*
valueB:?*
_output_shapes
:k
 gradients/concat_1_grad/Shape_15Const*
dtype0*
valueB:?*
_output_shapes
:?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::?
gradients/concat_1_grad/SliceSlice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:???
gradients/concat_1_grad/Slice_1Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:???
gradients/concat_1_grad/Slice_2Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:???
gradients/concat_1_grad/Slice_3Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
_output_shapes

:??*
T0?
gradients/concat_1_grad/Slice_4Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:???
gradients/concat_1_grad/Slice_5Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
T0*
Index0*
_output_shapes

:???
gradients/concat_1_grad/Slice_6Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
T0*
Index0*
_output_shapes

:???
gradients/concat_1_grad/Slice_7Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
T0*
_output_shapes

:??*
Index0?
gradients/concat_1_grad/Slice_8Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
_output_shapes	
:?*
Index0*
T0?
gradients/concat_1_grad/Slice_9Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
_output_shapes	
:?*
Index0*
T0?
 gradients/concat_1_grad/Slice_10Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
_output_shapes	
:?*
T0*
Index0?
 gradients/concat_1_grad/Slice_11Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
T0*
_output_shapes	
:?*
Index0?
 gradients/concat_1_grad/Slice_12Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:??
 gradients/concat_1_grad/Slice_13Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
_output_shapes	
:?*
T0?
 gradients/concat_1_grad/Slice_14Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
_output_shapes	
:?*
T0*
Index0?
 gradients/concat_1_grad/Slice_15Slice>gradients/CudnnRNNV3_grad/CudnnRNNBackpropV3:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
T0*
Index0*
_output_shapes	
:?m
gradients/Reshape_grad/ShapeConst*
valueB"?   ?  *
_output_shapes
:*
dtype0?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"?   ?  ?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_2_grad/ShapeConst*
valueB"?   ?  *
dtype0*
_output_shapes
:?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"?   ?  ?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_4_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"?   ?   ?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_5_grad/ShapeConst*
valueB"?   ?   *
dtype0*
_output_shapes
:?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_6_grad/ShapeConst*
dtype0*
valueB"?   ?   *
_output_shapes
:?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
??o
gradients/Reshape_7_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"?   ?   ?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0* 
_output_shapes
:
??*
T0i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
valueB:?*
dtype0?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
_output_shapes	
:?*
T0i
gradients/Reshape_9_grad/ShapeConst*
valueB:?*
_output_shapes
:*
dtype0?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:?j
gradients/Reshape_10_grad/ShapeConst*
valueB:?*
dtype0*
_output_shapes
:?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:?j
gradients/Reshape_11_grad/ShapeConst*
valueB:?*
dtype0*
_output_shapes
:?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
valueB:?*
dtype0?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_13_grad/ShapeConst*
valueB:?*
_output_shapes
:*
dtype0?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
_output_shapes	
:?*
T0j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
valueB:?*
dtype0?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:?j
gradients/Reshape_15_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:??
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
_output_shapes	
:?*
T0?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0* 
_output_shapes
:
??*
T0?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
???
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
_output_shapes	
:?*
T0*
N?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
???
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
??\
gradients/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:?h
gradients/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:??
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0* 
_output_shapes
::*
N?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
_output_shapes	
:?*
Index0*
T0?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
_output_shapes	
:?*
T0*
Index0"G
gradients_split_1_grad_concat&gradients/split_1_grad/concat:output:0"O
!gradients_expanddims_grad_reshape*gradients/ExpandDims_grad/Reshape:output:0"G
gradients_concat_grad_slice_1&gradients/concat_grad/Slice_1:output:0"C
gradients_split_grad_concat$gradients/split_grad/concat:output:0"S
#gradients_expanddims_1_grad_reshape,gradients/ExpandDims_1_grad/Reshape:output:0"L
"gradients_transpose_grad_transpose&gradients/transpose_grad/transpose:y:0*5
forward_function_name__forward_cudnn_lstm_23564*?
_input_shapes?
?:??????????:??????????:??????????:??????????: :??????????:::::??????????::::??????????:::::??????????:??????????:??????????:??:?????????:::??????????:??????????: ::::::::: : : : *=
api_implements+)lstm_3b1d4449-a474-476a-9143-b4b809f5d66c*
api_preferred_deviceGPU:  : : : : : : : : :	 :
 : : : : : : : : : : : : : : : : : : : : : :  :! :" :# :$ :% :& :' :( 
?F
?
__inference_standard_lstm_23440

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????B
ShapeShapetranspose:y:0*
_output_shapes
:*
T0]
strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0_
strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
_output_shapes
: *
T0*
Index0*
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
dtype0*
valueB :
?????????*
_output_shapes
: ?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*

shape_type0*
_output_shapes
: *
element_dtype0?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
valueB"?????  *
dtype0?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
element_dtype0*
_output_shapes
: *

shape_type0_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:a
strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*(
_output_shapes
:??????????*
shrink_axis_mask*
Index0*
T0^
MatMul/ReadVariableOpReadVariableOpkernel* 
_output_shapes
:
??*
dtype0|
MatMulMatMulstrided_slice_1:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????j
MatMul_1/ReadVariableOpReadVariableOprecurrent_kernel*
dtype0* 
_output_shapes
:
??n
MatMul_1MatMulinit_hMatMul_1/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0c
addAddMatMul:product:0MatMul_1:product:0*(
_output_shapes
:??????????*
T0X
BiasAdd/ReadVariableOpReadVariableOpbias*
dtype0*
_output_shapes	
:?n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0G
ConstConst*
value	B :*
_output_shapes
: *
dtype0Q
split/split_dimConst*
dtype0*
_output_shapes
: *
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*(
_output_shapes
:??????????*
T0T
mulMulSigmoid_1:y:0init_c*(
_output_shapes
:??????????*
T0O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*(
_output_shapes
:??????????*
T0S
add_1Addmul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*(
_output_shapes
:??????????*
T0h
TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *

shape_type0*
element_dtype0F
timeConst*
_output_shapes
: *
dtype0*
value	B : Z
while/maximum_iterationsConst*
value	B :*
dtype0*
_output_shapes
: T
while/loop_counterConst*
dtype0*
value	B : *
_output_shapes
: ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_lower_using_switch_merge(*
bodyR
while_body_23338*
condR
while_cond_23337*
parallel_iterations *
T
2*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *M
output_shapes<
:: : : : :??????????:??????????: : : : : K
while/IdentityIdentitywhile:output:0*
T0*
_output_shapes
: M
while/Identity_1Identitywhile:output:1*
_output_shapes
: *
T0M
while/Identity_2Identitywhile:output:2*
T0*
_output_shapes
: M
while/Identity_3Identitywhile:output:3*
_output_shapes
: *
T0_
while/Identity_4Identitywhile:output:4*(
_output_shapes
:??????????*
T0_
while/Identity_5Identitywhile:output:5*(
_output_shapes
:??????????*
T0M
while/Identity_6Identitywhile:output:6*
_output_shapes
: *
T0M
while/Identity_7Identitywhile:output:7*
T0*
_output_shapes
: M
while/Identity_8Identitywhile:output:8*
_output_shapes
: *
T0M
while/Identity_9Identitywhile:output:9*
_output_shapes
: *
T0O
while/Identity_10Identitywhile:output:10*
_output_shapes
: *
T0?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile/Identity_3:output:09TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype0h
strided_slice_2/stackConst*
valueB:
?????????*
_output_shapes
:*
dtype0a
strided_slice_2/stack_1Const*
_output_shapes
:*
valueB: *
dtype0a
strided_slice_2/stack_2Const*
valueB:*
_output_shapes
:*
dtype0?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*(
_output_shapes
:??????????*
Index0*
shrink_axis_mask*
T0e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*,
_output_shapes
:??????????*
T0[
runtimeConst"/device:CPU:0*
dtype0*
valueB
 *  ??*
_output_shapes
: ?
IdentityIdentitystrided_slice_2:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*(
_output_shapes
:??????????*
T0?

Identity_1Identitytranspose_1:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:???????????

Identity_2Identitywhile/Identity_4:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*(
_output_shapes
:??????????*
T0?

Identity_3Identitywhile/Identity_5:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:???????????

Identity_4Identityruntime:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^while*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0*=
api_implements+)lstm_3b1d4449-a474-476a-9143-b4b809f5d66c*_
_input_shapesN
L:??????????:??????????:??????????:::*
api_preferred_deviceCPU20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2
whilewhile:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinit_h:&"
 
_user_specified_nameinit_c:&"
 
_user_specified_namekernel:0,
*
_user_specified_namerecurrent_kernel:$ 

_user_specified_namebias
?
?
while_cond_23337
while_loop_counter
while_maximum_iterations
time
tensorarrayv2_1

init_h

init_c
less_1_strided_slice+
'tensorarrayunstack_tensorlistfromtensor
recurrent_kernel
recurrent_recurrent_kernel
recurrent_bias
identity
[
LessLesswhile_loop_counterwhile_maximum_iterations*
T0*
_output_shapes
: K
Less_1Lesstimeless_1_strided_slice*
_output_shapes
: *
T0F

LogicalAnd
LogicalAndLess:z:0
Less_1:z:0*
_output_shapes
: E
IdentityIdentityLogicalAnd:z:0*
_output_shapes
: *
T0
"
identityIdentity:output:0*S
_input_shapesB
@: : : : :??????????:??????????: : ::::  : : : : : : : : :	 :
 
?+
?
while_body_23338
while_loop_counter
while_maximum_iterations
time
tensorarrayv2_1

init_h

init_c
strided_slice_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
(matmul_readvariableop_recurrent_kernel_08
4matmul_1_readvariableop_recurrent_recurrent_kernel_0+
'biasadd_readvariableop_recurrent_bias_0
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_sliceO
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
&matmul_readvariableop_recurrent_kernel6
2matmul_1_readvariableop_recurrent_recurrent_kernel)
%biasadd_readvariableop_recurrent_bias??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
dtype0*
valueB"?????  *
_output_shapes
:?
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0time:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
MatMul/ReadVariableOpReadVariableOp(matmul_readvariableop_recurrent_kernel_0*
dtype0* 
_output_shapes
:
???
MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0MatMul/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0?
MatMul_1/ReadVariableOpReadVariableOp4matmul_1_readvariableop_recurrent_recurrent_kernel_0*
dtype0* 
_output_shapes
:
??n
MatMul_1MatMulinit_hMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
addAddMatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????{
BiasAdd/ReadVariableOpReadVariableOp'biasadd_readvariableop_recurrent_bias_0*
dtype0*
_output_shapes	
:?n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*(
_output_shapes
:??????????*
T0G
ConstConst*
_output_shapes
: *
dtype0*
value	B :Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*(
_output_shapes
:??????????*
T0T
mulMulSigmoid_1:y:0init_c*(
_output_shapes
:??????????*
T0O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????S
add_1Addmul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*(
_output_shapes
:??????????*
T0Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:???????????
$TensorArrayV2Write/TensorListSetItemTensorListSetItemtensorarrayv2_1time	mul_2:z:0*
_output_shapes
: *
element_dtype0I
add_2/yConst*
_output_shapes
: *
value	B :*
dtype0E
add_2Addtimeadd_2/y:output:0*
_output_shapes
: *
T0I
add_3/yConst*
dtype0*
_output_shapes
: *
value	B :S
add_3Addwhile_loop_counteradd_3/y:output:0*
_output_shapes
: *
T0?
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
: *
T0?

Identity_1Identitywhile_maximum_iterations^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes
: ?

Identity_2Identity	add_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes
: ?

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes
: ?

Identity_4Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*(
_output_shapes
:??????????*
T0?

Identity_5Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*(
_output_shapes
:??????????*
T0"R
&matmul_readvariableop_recurrent_kernel(matmul_readvariableop_recurrent_kernel_0"?
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0" 
strided_slicestrided_slice_0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"P
%biasadd_readvariableop_recurrent_bias'biasadd_readvariableop_recurrent_bias_0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"!

identity_5Identity_5:output:0"j
2matmul_1_readvariableop_recurrent_recurrent_kernel4matmul_1_readvariableop_recurrent_recurrent_kernel_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp:  : : : : : : : : :	 :
 
?X
?
__forward_cudnn_lstm_23564

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4

cudnnrnnv3
strided_slice_2_stack
strided_slice_2_stack_1
strided_slice_2_stack_2
transpose_9_perm
cudnnrnnv3_0
strided_slice_3_stack
strided_slice_3_stack_1
strided_slice_3_stack_2
cudnnrnnv3_1
strided_slice_4_stack
strided_slice_4_stack_1
strided_slice_4_stack_2
cudnnrnnv3_2
	transpose

expanddims
expanddims_1
concat_1
fill
cudnnrnnv3_3
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis??
CudnnRNNV3?concat/ReadVariableOp?split/ReadVariableOp?split_1/ReadVariableOp?zeros_like/ReadVariableOpG
transpose/permConst*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T08
ExpandDims/dimConst*
value	B : *
dtype0D

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0:
ExpandDims_1/dimConst*
value	B : *
dtype0H
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0/
ConstConst*
dtype0*
value	B :9
split/split_dimConst*
dtype0*
value	B :;
split/ReadVariableOpReadVariableOpkernel*
dtype0`
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
	num_split*
T01
Const_1Const*
value	B :*
dtype0;
split_1/split_dimConst*
dtype0*
value	B :G
split_1/ReadVariableOpReadVariableOprecurrent_kernel*
dtype0f
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*
	num_split>
zeros_like/ReadVariableOpReadVariableOpbias*
dtype0<

zeros_likeConst*
valueB?*    *
dtype0V
concat/ReadVariableOpReadVariableOpbias^zeros_like/ReadVariableOp*
dtype05
concat/axisConst*
dtype0*
value	B : n
concatConcatV2zeros_like:output:0concat/ReadVariableOp:value:0concat/axis:output:0*
T0*
N(
ShapeShapetranspose_0:y:0*
T0A
strided_slice/stackConst*
valueB:*
dtype0C
strided_slice/stack_1Const*
valueB:*
dtype0C
strided_slice/stack_2Const*
valueB:*
dtype0?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
Shape_1Shapetranspose_0:y:0*
T0C
strided_slice_1/stackConst*
valueB: *
dtype0E
strided_slice_1/stack_1Const*
valueB:*
dtype0E
strided_slice_1/stack_2Const*
valueB:*
dtype0?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
shrink_axis_mask*
Index0*
T0;
	Fill/dimsPackstrided_slice:output:0*
T0*
NC
FillFillFill/dims:output:0strided_slice_1:output:0*
T01
Const_2Const*
dtype0*
value	B :;
split_2/split_dimConst*
dtype0*
value	B : W
split_2Splitsplit_2/split_dim:output:0concat:output:0*
	num_split*
T0>
Const_3Const*
valueB:
?????????*
dtype0E
transpose_1/permConst*
dtype0*
valueB"       L
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0>
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0E
transpose_2/permConst*
dtype0*
valueB"       L
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0@
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0E
transpose_3/permConst*
dtype0*
valueB"       L
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0@
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0E
transpose_4/permConst*
dtype0*
valueB"       L
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0@
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0E
transpose_5/permConst*
valueB"       *
dtype0N
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0@
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0E
transpose_6/permConst*
dtype0*
valueB"       N
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0@
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0E
transpose_7/permConst*
valueB"       *
dtype0N
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0@
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0E
transpose_8/permConst*
dtype0*
valueB"       N
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0@
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0A
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0A
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0B

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0B

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0B

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0B

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0B

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0B

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T07
concat_1/axisConst*
value	B : *
dtype0?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
T0*
N?

CudnnRNNV3
CudnnRNNV3transpose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0Fill:output:0*
T0L
strided_slice_2/stackConst*
valueB:
?????????*
dtype0E
strided_slice_2/stack_1Const*
dtype0*
valueB: E
strided_slice_2/stack_2Const*
dtype0*
valueB:?
strided_slice_2StridedSliceCudnnRNNV3:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
shrink_axis_mask*
T0*
Index0I
transpose_9/permConst*
dtype0*!
valueB"          Q
transpose_9	TransposeCudnnRNNV3:output:0transpose_9/perm:output:0*
T0C
strided_slice_3/stackConst*
dtype0*
valueB: E
strided_slice_3/stack_1Const*
valueB:*
dtype0E
strided_slice_3/stack_2Const*
dtype0*
valueB:?
strided_slice_3StridedSliceCudnnRNNV3:output_h:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
shrink_axis_maskC
strided_slice_4/stackConst*
valueB: *
dtype0E
strided_slice_4/stack_1Const*
dtype0*
valueB:E
strided_slice_4/stack_2Const*
dtype0*
valueB:?
strided_slice_4StridedSliceCudnnRNNV3:output_c:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
shrink_axis_mask*
T0C
runtimeConst"/device:CPU:0*
valueB
 *   @*
dtype0?
IdentityIdentitystrided_slice_2:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_1Identitytranspose_9:y:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_2Identitystrided_slice_3:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_3Identitystrided_slice_4:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0?

Identity_4Identityruntime:output:0^CudnnRNNV3^concat/ReadVariableOp^split/ReadVariableOp^split_1/ReadVariableOp^zeros_like/ReadVariableOp*
T0";
strided_slice_3_stack_2 strided_slice_3/stack_2:output:0"-
transpose_9_permtranspose_9/perm:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"-
transpose_3_permtranspose_3/perm:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"-
transpose_8_permtranspose_8/perm:output:0"!

identity_4Identity_4:output:0"
identityIdentity:output:0"-
transpose_2_permtranspose_2/perm:output:0"
fillFill:output:0"7
strided_slice_2_stackstrided_slice_2/stack:output:0"'
concat_1_axisconcat_1/axis:output:0"
	transposetranspose_0:y:0"#
concat_axisconcat/axis:output:0"+
split_split_dimsplit/split_dim:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_1_permtranspose_1/perm:output:0"7
strided_slice_3_stackstrided_slice_3/stack:output:0"
init_cinit_c_0"!

cudnnrnnv3CudnnRNNV3:output:0";
strided_slice_2_stack_1 strided_slice_2/stack_1:output:0";
strided_slice_2_stack_2 strided_slice_2/stack_2:output:0";
strided_slice_4_stack_1 strided_slice_4/stack_1:output:0";
strided_slice_4_stack_2 strided_slice_4/stack_2:output:0"-
transpose_6_permtranspose_6/perm:output:0"
init_hinit_h_0"7
strided_slice_4_stackstrided_slice_4/stack:output:0"-
transpose_5_permtranspose_5/perm:output:0"%
cudnnrnnv3_0CudnnRNNV3:output_h:0"%
cudnnrnnv3_1CudnnRNNV3:output_c:0"*
cudnnrnnv3_2CudnnRNNV3:reserve_space:0"*
cudnnrnnv3_3CudnnRNNV3:host_reserved:0")
transpose_permtranspose/perm:output:0"!

expanddimsExpandDims:output:0"-
transpose_4_permtranspose_4/perm:output:0"%
expanddims_1ExpandDims_1:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"
concat_1concat_1_0:output:0";
strided_slice_3_stack_1 strided_slice_3/stack_1:output:0*
_input_shapes *=
api_implements+)lstm_3b1d4449-a474-476a-9143-b4b809f5d66c*
api_preferred_deviceGPU*I
backward_function_name/-__inference___backward_cudnn_lstm_23562_237402,
split/ReadVariableOpsplit/ReadVariableOp2.
concat/ReadVariableOpconcat/ReadVariableOp26
zeros_like/ReadVariableOpzeros_like/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp2

CudnnRNNV3
CudnnRNNV3:&"
 
_user_specified_nameinit_c:&"
 
_user_specified_namekernel:0,
*
_user_specified_namerecurrent_kernel:$ 

_user_specified_namebias:& "
 
_user_specified_nameinputs:&"
 
_user_specified_nameinit_h"7D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"?
trainable_variables??
?
convolution/kernel:0convolution/kernel/Assign(convolution/kernel/Read/ReadVariableOp:0(2/convolution/kernel/Initializer/random_uniform:08

convolution/bias:0convolution/bias/Assign&convolution/bias/Read/ReadVariableOp:0(2$convolution/bias/Initializer/zeros:08
x
conv2/kernel:0conv2/kernel/Assign"conv2/kernel/Read/ReadVariableOp:0(2)conv2/kernel/Initializer/random_uniform:08
g
conv2/bias:0conv2/bias/Assign conv2/bias/Read/ReadVariableOp:0(2conv2/bias/Initializer/zeros:08
x
conv3/kernel:0conv3/kernel/Assign"conv3/kernel/Read/ReadVariableOp:0(2)conv3/kernel/Initializer/random_uniform:08
g
conv3/bias:0conv3/bias/Assign conv3/bias/Read/ReadVariableOp:0(2conv3/bias/Initializer/zeros:08
?
recurrent/kernel:0recurrent/kernel/Assign&recurrent/kernel/Read/ReadVariableOp:0(2-recurrent/kernel/Initializer/random_uniform:08
?
recurrent/recurrent_kernel:0!recurrent/recurrent_kernel/Assign0recurrent/recurrent_kernel/Read/ReadVariableOp:0(2.recurrent/recurrent_kernel/Initializer/mul_1:08
x
recurrent/bias:0recurrent/bias/Assign$recurrent/bias/Read/ReadVariableOp:0(2#recurrent/bias/Initializer/concat:08
|
hidden/kernel:0hidden/kernel/Assign#hidden/kernel/Read/ReadVariableOp:0(2*hidden/kernel/Initializer/random_uniform:08
k
hidden/bias:0hidden/bias/Assign!hidden/bias/Read/ReadVariableOp:0(2hidden/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08"?
	variables??
?
convolution/kernel:0convolution/kernel/Assign(convolution/kernel/Read/ReadVariableOp:0(2/convolution/kernel/Initializer/random_uniform:08

convolution/bias:0convolution/bias/Assign&convolution/bias/Read/ReadVariableOp:0(2$convolution/bias/Initializer/zeros:08
x
conv2/kernel:0conv2/kernel/Assign"conv2/kernel/Read/ReadVariableOp:0(2)conv2/kernel/Initializer/random_uniform:08
g
conv2/bias:0conv2/bias/Assign conv2/bias/Read/ReadVariableOp:0(2conv2/bias/Initializer/zeros:08
x
conv3/kernel:0conv3/kernel/Assign"conv3/kernel/Read/ReadVariableOp:0(2)conv3/kernel/Initializer/random_uniform:08
g
conv3/bias:0conv3/bias/Assign conv3/bias/Read/ReadVariableOp:0(2conv3/bias/Initializer/zeros:08
?
recurrent/kernel:0recurrent/kernel/Assign&recurrent/kernel/Read/ReadVariableOp:0(2-recurrent/kernel/Initializer/random_uniform:08
?
recurrent/recurrent_kernel:0!recurrent/recurrent_kernel/Assign0recurrent/recurrent_kernel/Read/ReadVariableOp:0(2.recurrent/recurrent_kernel/Initializer/mul_1:08
x
recurrent/bias:0recurrent/bias/Assign$recurrent/bias/Read/ReadVariableOp:0(2#recurrent/bias/Initializer/concat:08
|
hidden/kernel:0hidden/kernel/Assign#hidden/kernel/Read/ReadVariableOp:0(2*hidden/kernel/Initializer/random_uniform:08
k
hidden/bias:0hidden/bias/Assign!hidden/bias/Read/ReadVariableOp:0(2hidden/bias/Initializer/zeros:08
|
output/kernel:0output/kernel/Assign#output/kernel/Read/ReadVariableOp:0(2*output/kernel/Initializer/random_uniform:08
k
output/bias:0output/bias/Assign!output/bias/Read/ReadVariableOp:0(2output/bias/Initializer/zeros:08*@
__saved_model_init_op'%
__saved_model_init_op
init_1*?
serving_default?
%
QD
QD:0?????????
=
Discharge_time+
Discharge_time:0?????????
%
IR
IR:0?????????
0
Tdlin'
Tdlin:0??????????
0
Qdlin'
Qdlin:0??????????>
output4
output/clippy/clip_by_value:0?????????tensorflow/serving/predict