.class Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Value"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final dValue:D

.field iValue:J

.field key:I

.field final minBitWidth:I

.field final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 628
    const-class v0, Lcom/google/flatbuffers/FlexBuffersBuilder;

    return-void
.end method

.method constructor <init>(IIID)V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->key:I

    .line 651
    iput p2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->type:I

    .line 652
    iput p3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->minBitWidth:I

    .line 653
    iput-wide p4, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->dValue:D

    const-wide/high16 p1, -0x8000000000000000L

    .line 654
    iput-wide p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    return-void
.end method

.method constructor <init>(IIIJ)V
    .locals 0

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iput p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->key:I

    .line 643
    iput p2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->type:I

    .line 644
    iput p3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->minBitWidth:I

    .line 645
    iput-wide p4, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    const-wide/16 p1, 0x1

    .line 646
    iput-wide p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->dValue:D

    return-void
.end method

.method static synthetic access$100(II)I
    .locals 0

    .line 628
    invoke-static {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->paddingBytes(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;II)I
    .locals 0

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->elemWidth(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;)B
    .locals 0

    .line 628
    invoke-direct {p0}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->storedPackedType()B

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;I)B
    .locals 0

    .line 628
    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->storedPackedType(I)B

    move-result p0

    return p0
.end method

.method static synthetic access$500(IIJII)I
    .locals 0

    .line 628
    invoke-static/range {p0 .. p5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    move-result p0

    return p0
.end method

.method static blob(IIII)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 6

    .line 662
    new-instance p3, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v3, 0x0

    move-object v0, p3

    move v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object p3
.end method

.method static bool(IZ)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 658
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v4, v0

    const/16 v2, 0x1a

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method private elemWidth(II)I
    .locals 6

    .line 726
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->type:I

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->minBitWidth:I

    iget-wide v2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    move-result p1

    return p1
.end method

.method private static elemWidth(IIJII)I
    .locals 4

    .line 730
    invoke-static {p0}, Lcom/google/flatbuffers/FlexBuffers;->isTypeInline(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x1

    :goto_0
    const/16 p1, 0x20

    if-gt p0, p1, :cond_2

    .line 743
    invoke-static {p4, p0}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->paddingBytes(II)I

    move-result p1

    add-int/2addr p1, p4

    mul-int v0, p5, p0

    add-int/2addr p1, v0

    int-to-long v0, p1

    sub-long/2addr v0, p2

    long-to-int p1, v0

    int-to-long v0, p1

    .line 747
    invoke-static {v0, v1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->access$600(J)I

    move-result p1

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    int-to-long v2, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return p1

    :cond_1
    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method static float32(IF)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 698
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    float-to-double v4, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIID)V

    return-object v6
.end method

.method static float64(ID)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 702
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    const/4 v2, 0x3

    const/4 v3, 0x3

    move-object v0, v6

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIID)V

    return-object v6
.end method

.method static int16(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 670
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static int32(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 674
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static int64(IJ)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 678
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v0, v6

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static int8(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 666
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method private static packedType(II)B
    .locals 0

    shl-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private static paddingBytes(II)I
    .locals 0

    not-int p0, p0

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method private storedPackedType()B
    .locals 1

    const/4 v0, 0x0

    .line 706
    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->storedPackedType(I)B

    move-result v0

    return v0
.end method

.method private storedPackedType(I)B
    .locals 1

    .line 710
    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->storedWidth(I)I

    move-result p1

    iget v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->type:I

    invoke-static {p1, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->packedType(II)B

    move-result p1

    return p1
.end method

.method private storedWidth(I)I
    .locals 1

    .line 718
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->type:I

    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers;->isTypeInline(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->minBitWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 721
    :cond_0
    iget p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->minBitWidth:I

    return p1
.end method

.method static uInt16(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 686
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static uInt32(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 690
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static uInt64(IJ)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 694
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    const/4 v2, 0x2

    const/4 v3, 0x3

    move-object v0, v6

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static uInt8(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 7

    .line 682
    new-instance v6, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method
