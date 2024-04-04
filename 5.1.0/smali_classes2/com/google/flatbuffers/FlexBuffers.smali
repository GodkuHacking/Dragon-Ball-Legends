.class public Lcom/google/flatbuffers/FlexBuffers;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/flatbuffers/FlexBuffers$Unsigned;,
        Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;,
        Lcom/google/flatbuffers/FlexBuffers$KeyVector;,
        Lcom/google/flatbuffers/FlexBuffers$TypedVector;,
        Lcom/google/flatbuffers/FlexBuffers$Vector;,
        Lcom/google/flatbuffers/FlexBuffers$Map;,
        Lcom/google/flatbuffers/FlexBuffers$Key;,
        Lcom/google/flatbuffers/FlexBuffers$Blob;,
        Lcom/google/flatbuffers/FlexBuffers$Sized;,
        Lcom/google/flatbuffers/FlexBuffers$Object;,
        Lcom/google/flatbuffers/FlexBuffers$Reference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_BB:Lcom/google/flatbuffers/ReadBuf;

.field public static final FBT_BLOB:I = 0x19

.field public static final FBT_BOOL:I = 0x1a

.field public static final FBT_FLOAT:I = 0x3

.field public static final FBT_INDIRECT_FLOAT:I = 0x8

.field public static final FBT_INDIRECT_INT:I = 0x6

.field public static final FBT_INDIRECT_UINT:I = 0x7

.field public static final FBT_INT:I = 0x1

.field public static final FBT_KEY:I = 0x4

.field public static final FBT_MAP:I = 0x9

.field public static final FBT_NULL:I = 0x0

.field public static final FBT_STRING:I = 0x5

.field public static final FBT_UINT:I = 0x2

.field public static final FBT_VECTOR:I = 0xa

.field public static final FBT_VECTOR_BOOL:I = 0x24

.field public static final FBT_VECTOR_FLOAT:I = 0xd

.field public static final FBT_VECTOR_FLOAT2:I = 0x12

.field public static final FBT_VECTOR_FLOAT3:I = 0x15

.field public static final FBT_VECTOR_FLOAT4:I = 0x18

.field public static final FBT_VECTOR_INT:I = 0xb

.field public static final FBT_VECTOR_INT2:I = 0x10

.field public static final FBT_VECTOR_INT3:I = 0x13

.field public static final FBT_VECTOR_INT4:I = 0x16

.field public static final FBT_VECTOR_KEY:I = 0xe

.field public static final FBT_VECTOR_STRING_DEPRECATED:I = 0xf

.field public static final FBT_VECTOR_UINT:I = 0xc

.field public static final FBT_VECTOR_UINT2:I = 0x11

.field public static final FBT_VECTOR_UINT3:I = 0x14

.field public static final FBT_VECTOR_UINT4:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 103
    new-instance v0, Lcom/google/flatbuffers/ArrayReadWriteBuf;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    invoke-direct {v0, v2, v1}, Lcom/google/flatbuffers/ArrayReadWriteBuf;-><init>([BI)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers;->EMPTY_BB:Lcom/google/flatbuffers/ReadBuf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/flatbuffers/ReadBuf;
    .locals 1

    .line 45
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers;->EMPTY_BB:Lcom/google/flatbuffers/ReadBuf;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/flatbuffers/ReadBuf;II)I
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readInt(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/flatbuffers/ReadBuf;II)I
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->indirect(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/flatbuffers/ReadBuf;II)J
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readUInt(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/google/flatbuffers/ReadBuf;II)D
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readDouble(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(Lcom/google/flatbuffers/ReadBuf;II)J
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readLong(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRoot(Lcom/google/flatbuffers/ReadBuf;)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .locals 4

    .line 214
    invoke-interface {p0}, Lcom/google/flatbuffers/ReadBuf;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 215
    invoke-interface {p0, v0}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v1

    add-int/lit8 v0, v0, -0x1

    .line 216
    invoke-interface {p0, v0}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v2

    sub-int/2addr v0, v1

    .line 218
    new-instance v3, Lcom/google/flatbuffers/FlexBuffers$Reference;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    return-object v3
.end method

.method public static getRoot(Ljava/nio/ByteBuffer;)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/flatbuffers/ArrayReadWriteBuf;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/flatbuffers/ArrayReadWriteBuf;-><init>([BI)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/flatbuffers/ByteBufferReadWriteBuf;

    invoke-direct {v0, p0}, Lcom/google/flatbuffers/ByteBufferReadWriteBuf;-><init>(Ljava/nio/ByteBuffer;)V

    :goto_0
    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers;->getRoot(Lcom/google/flatbuffers/ReadBuf;)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object p0

    return-object p0
.end method

.method private static indirect(Lcom/google/flatbuffers/ReadBuf;II)I
    .locals 2

    int-to-long v0, p1

    .line 156
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readUInt(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static isTypeInline(I)Z
    .locals 1

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static isTypedVector(I)Z
    .locals 1

    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    const/16 v0, 0xf

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x24

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isTypedVectorElementType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0x1a

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private static readDouble(Lcom/google/flatbuffers/ReadBuf;II)D
    .locals 1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    .line 189
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getDouble(I)D

    move-result-wide p0

    return-wide p0

    .line 188
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getFloat(I)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method private static readInt(Lcom/google/flatbuffers/ReadBuf;II)I
    .locals 0

    .line 172
    invoke-static {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffers;->readLong(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private static readLong(Lcom/google/flatbuffers/ReadBuf;II)J
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 181
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getLong(I)J

    move-result-wide p0

    return-wide p0

    .line 180
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getInt(I)I

    move-result p0

    :goto_0
    int-to-long p0, p0

    return-wide p0

    .line 179
    :cond_2
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getShort(I)S

    move-result p0

    goto :goto_0

    .line 178
    :cond_3
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result p0

    goto :goto_0
.end method

.method private static readUInt(Lcom/google/flatbuffers/ReadBuf;II)J
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 165
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getLong(I)J

    move-result-wide p0

    return-wide p0

    .line 164
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getInt(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->intToUnsignedLong(I)J

    move-result-wide p0

    return-wide p0

    .line 163
    :cond_2
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->getShort(I)S

    move-result p0

    invoke-static {p0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->shortToUnsignedInt(S)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 162
    :cond_3
    invoke-interface {p0, p1}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result p0

    invoke-static {p0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method static toTypedVector(II)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0x16

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0x13

    return p0

    :cond_2
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0x10

    return p0

    :cond_3
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0xb

    return p0
.end method

.method static toTypedVectorElementType(I)I
    .locals 0

    add-int/lit8 p0, p0, -0xb

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
