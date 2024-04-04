.class public Lcom/google/flatbuffers/FlexBuffers$Reference;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


# static fields
.field private static final NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private byteWidth:I

.field private end:I

.field private parentWidth:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 213
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Reference;

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Ljava/nio/ByteBuffer;III)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Reference;->NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;III)V
    .locals 8

    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x1

    shl-int v6, v1, v0

    shr-int/lit8 v7, p4, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 221
    invoke-direct/range {v2 .. v7}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Ljava/nio/ByteBuffer;IIII)V

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;IIII)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    .line 226
    iput p2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    .line 227
    iput p3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    .line 228
    iput p4, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    .line 229
    iput p5, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    return-void
.end method

.method static synthetic access$600()Lcom/google/flatbuffers/FlexBuffers$Reference;
    .locals 1

    .line 211
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Reference;->NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;

    return-object v0
.end method


# virtual methods
.method public asBlob()Lcom/google/flatbuffers/FlexBuffers$Blob;
    .locals 4

    .line 531
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isBlob()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Blob;->empty()Lcom/google/flatbuffers/FlexBuffers$Blob;

    move-result-object v0

    return-object v0

    .line 532
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Blob;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Blob;-><init>(Ljava/nio/ByteBuffer;II)V

    return-object v0
.end method

.method public asBoolean()Z
    .locals 7

    .line 544
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isBoolean()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asUInt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public asFloat()D
    .locals 3

    .line 445
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6

    const-wide/16 v0, 0x0

    return-wide v0

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    return-wide v0

    .line 456
    :cond_3
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 455
    :cond_4
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 458
    :cond_5
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 454
    :cond_6
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 451
    :cond_7
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public asInt()I
    .locals 3

    .line 354
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    return v0

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 361
    :cond_4
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 365
    :cond_6
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 362
    :cond_7
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public asKey()Lcom/google/flatbuffers/FlexBuffers$Key;
    .locals 4

    .line 471
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Key;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Key;-><init>(Ljava/nio/ByteBuffer;II)V

    return-object v0

    .line 474
    :cond_0
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Key;->empty()Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v0

    return-object v0
.end method

.method public asLong()J
    .locals 4

    .line 412
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    return-wide v2

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 430
    :cond_2
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    .line 417
    :cond_5
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    .line 425
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v2

    .line 420
    :cond_7
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 418
    :cond_8
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public asMap()Lcom/google/flatbuffers/FlexBuffers$Map;
    .locals 4

    .line 505
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Map;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Map;-><init>(Ljava/nio/ByteBuffer;II)V

    return-object v0

    .line 508
    :cond_0
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Map;->empty()Lcom/google/flatbuffers/FlexBuffers$Map;

    move-result-object v0

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 4

    .line 483
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 485
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    sub-int v3, v0, v2

    invoke-static {v1, v3, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 486
    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v2

    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/flatbuffers/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    move v1, v0

    .line 491
    :goto_0
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_1

    .line 492
    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v2

    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/flatbuffers/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public asUInt()J
    .locals 3

    .line 383
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0

    .line 394
    :cond_4
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 396
    :cond_5
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 395
    :cond_6
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 391
    :cond_7
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Ljava/nio/ByteBuffer;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 389
    :cond_8
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;
    .locals 5

    .line 517
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isVector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Vector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Ljava/nio/ByteBuffer;II)V

    return-object v0

    .line 519
    :cond_0
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers;->isTypedVector(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    iget v4, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    invoke-static {v4}, Lcom/google/flatbuffers/FlexBuffers;->toTypedVectorElementType(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;-><init>(Ljava/nio/ByteBuffer;III)V

    return-object v0

    .line 522
    :cond_1
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Vector;->empty()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    return v0
.end method

.method public isBlob()Z
    .locals 2

    .line 342
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBoolean()Z
    .locals 2

    .line 253
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFloat()Z
    .locals 2

    .line 277
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInt()Z
    .locals 3

    .line 285
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isIntOrUInt()Z
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isInt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isUInt()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isKey()Z
    .locals 2

    .line 309
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMap()Z
    .locals 2

    .line 334
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull()Z
    .locals 1

    .line 245
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumeric()Z
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isIntOrUInt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isString()Z
    .locals 2

    .line 301
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTypedVector()Z
    .locals 2

    .line 325
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUInt()Z
    .locals 2

    .line 293
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isVector()Z
    .locals 2

    .line 317
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 565
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    packed-switch v0, :pswitch_data_0

    return-object p1

    .line 588
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p1

    .line 586
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asBlob()Lcom/google/flatbuffers/FlexBuffers$Blob;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Blob;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 606
    :pswitch_2
    new-instance p1, Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;

    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "not_implemented:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 584
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Vector;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 582
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asMap()Lcom/google/flatbuffers/FlexBuffers$Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 580
    :pswitch_5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    .line 578
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asKey()Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Key;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    .line 576
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asFloat()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object p1

    .line 573
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asUInt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1

    .line 570
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1

    :pswitch_a
    const-string v0, "null"

    .line 567
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 595
    :cond_0
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
