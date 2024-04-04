.class public Lcom/google/flatbuffers/FlexBuffersBuilder;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BUILDER_FLAG_NONE:I = 0x0

.field public static final BUILDER_FLAG_SHARE_ALL:I = 0x7

.field public static final BUILDER_FLAG_SHARE_KEYS:I = 0x1

.field public static final BUILDER_FLAG_SHARE_KEYS_AND_STRINGS:I = 0x3

.field public static final BUILDER_FLAG_SHARE_KEY_VECTORS:I = 0x4

.field public static final BUILDER_FLAG_SHARE_STRINGS:I = 0x2

.field private static final WIDTH_16:I = 0x1

.field private static final WIDTH_32:I = 0x2

.field private static final WIDTH_64:I = 0x3

.field private static final WIDTH_8:I


# instance fields
.field private final bb:Ljava/nio/ByteBuffer;

.field private finished:Z

.field private final flags:I

.field private keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/flatbuffers/FlexBuffersBuilder$Value;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/flatbuffers/FlexBuffersBuilder$Value;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 126
    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 119
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stringPool:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->finished:Z

    .line 94
    new-instance v1, Lcom/google/flatbuffers/FlexBuffersBuilder$1;

    invoke-direct {v1, p0}, Lcom/google/flatbuffers/FlexBuffersBuilder$1;-><init>(Lcom/google/flatbuffers/FlexBuffersBuilder;)V

    iput-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->keyComparator:Ljava/util/Comparator;

    .line 136
    iput-object p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 137
    iput p2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->flags:I

    .line 138
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method static synthetic access$000(Lcom/google/flatbuffers/FlexBuffersBuilder;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$600(J)I
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->widthUInBits(J)I

    move-result p0

    return p0
.end method

.method private align(I)I
    .locals 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 387
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->access$100(II)I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v0, v1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private createKeyVector(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 13

    int-to-long v0, p2

    .line 606
    invoke-static {v0, v1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->widthUInBits(J)I

    move-result p2

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    move v6, p2

    move p2, p1

    .line 609
    :goto_0
    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 610
    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    iget v3, v3, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->key:I

    int-to-long v9, v3

    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/lit8 p2, p2, 0x1

    move v12, p2

    invoke-static/range {v7 .. v12}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->access$500(IIJII)I

    move-result v3

    .line 611
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 614
    :cond_0
    invoke-direct {p0, v6}, Lcom/google/flatbuffers/FlexBuffersBuilder;->align(I)I

    move-result p2

    .line 616
    invoke-direct {p0, v0, v1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeInt(JI)V

    .line 618
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 619
    :goto_1
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    iget v1, v1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->key:I

    .line 622
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    iget v1, v1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->key:I

    int-to-long v3, v1

    invoke-direct {p0, v3, v4, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeOffset(JI)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 625
    :cond_1
    new-instance p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    const/4 v4, -0x1

    const/4 p2, 0x4

    invoke-static {p2, v2}, Lcom/google/flatbuffers/FlexBuffers;->toTypedVector(II)I

    move-result v5

    int-to-long v7, v0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object p1
.end method

.method private createVector(IIIZZLcom/google/flatbuffers/FlexBuffersBuilder$Value;)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p3

    int-to-long v3, v2

    .line 491
    invoke-static {v3, v4}, Lcom/google/flatbuffers/FlexBuffersBuilder;->widthUInBits(J)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v1, :cond_0

    .line 496
    iget-object v7, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-static {v1, v7, v6}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->access$200(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x3

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x4

    move v12, v5

    move/from16 v5, p2

    .line 501
    :goto_1
    iget-object v9, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 502
    iget-object v9, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    iget-object v10, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int v11, v5, v7

    invoke-static {v9, v10, v11}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->access$200(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;II)I

    move-result v9

    .line 503
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    move/from16 v9, p2

    if-eqz p4, :cond_1

    if-ne v5, v9, :cond_1

    .line 506
    iget-object v8, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    iget v8, v8, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->type:I

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move/from16 v9, p2

    .line 518
    invoke-direct {p0, v12}, Lcom/google/flatbuffers/FlexBuffersBuilder;->align(I)I

    move-result v5

    if-eqz v1, :cond_3

    .line 521
    iget-wide v10, v1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    invoke-direct {p0, v10, v11, v5}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeOffset(JI)V

    const-wide/16 v10, 0x1

    .line 522
    iget v7, v1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->minBitWidth:I

    shl-long/2addr v10, v7

    invoke-direct {p0, v10, v11, v5}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeInt(JI)V

    :cond_3
    if-nez p5, :cond_4

    .line 525
    invoke-direct {p0, v3, v4, v5}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeInt(JI)V

    .line 528
    :cond_4
    iget-object v3, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move v4, v9

    .line 529
    :goto_2
    iget-object v7, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 530
    iget-object v7, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    invoke-direct {p0, v7, v5}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeAny(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-nez p4, :cond_6

    .line 534
    :goto_3
    iget-object v4, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v9, v4, :cond_6

    .line 535
    iget-object v4, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    iget-object v5, v0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    invoke-static {v5, v12}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->access$400(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 538
    :cond_6
    new-instance v4, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    :goto_4
    move v11, v1

    goto :goto_6

    :cond_7
    if-eqz p4, :cond_9

    if-eqz p5, :cond_8

    goto :goto_5

    :cond_8
    move v2, v6

    .line 539
    :goto_5
    invoke-static {v8, v2}, Lcom/google/flatbuffers/FlexBuffers;->toTypedVector(II)I

    move-result v1

    goto :goto_4

    :cond_9
    const/16 v1, 0xa

    goto :goto_4

    :goto_6
    int-to-long v13, v3

    move-object v9, v4

    move/from16 v10, p1

    .line 540
    invoke-direct/range {v9 .. v14}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v4
.end method

.method private putKey(Ljava/lang/String;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 184
    iget v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->flags:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 187
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 194
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 195
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0
.end method

.method private putUInt(Ljava/lang/String;J)V
    .locals 2

    .line 273
    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result p1

    .line 276
    invoke-static {p2, p3}, Lcom/google/flatbuffers/FlexBuffersBuilder;->widthUInBits(J)I

    move-result v0

    if-nez v0, :cond_0

    long-to-int p2, p2

    .line 279
    invoke-static {p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->uInt8(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    long-to-int p2, p2

    .line 281
    invoke-static {p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->uInt16(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    long-to-int p2, p2

    .line 283
    invoke-static {p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->uInt32(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    goto :goto_0

    .line 285
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->uInt64(IJ)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    .line 287
    :goto_0
    iget-object p2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private putUInt64(Ljava/lang/String;J)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->uInt64(IJ)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static widthUInBits(J)I
    .locals 3

    const/4 v0, -0x1

    .line 366
    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 367
    :cond_0
    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->shortToUnsignedInt(S)I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, p0, v1

    if-gtz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 368
    :cond_1
    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->intToUnsignedLong(I)J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method private writeAny(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;I)V
    .locals 2

    .line 550
    iget v0, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->type:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 561
    iget-wide v0, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    invoke-direct {p0, v0, v1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeOffset(JI)V

    goto :goto_0

    .line 558
    :cond_0
    iget-wide v0, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->dValue:D

    invoke-direct {p0, v0, v1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeDouble(DI)V

    goto :goto_0

    .line 555
    :cond_1
    iget-wide v0, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    invoke-direct {p0, v0, v1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeInt(JI)V

    :goto_0
    return-void
.end method

.method private writeBlob(I[BI)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 4

    .line 373
    array-length v0, p2

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->widthUInBits(J)I

    move-result v0

    .line 374
    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder;->align(I)I

    move-result v1

    .line 375
    array-length v2, p2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3, v1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeInt(JI)V

    .line 376
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 377
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x5

    if-ne p3, p2, :cond_0

    .line 379
    iget-object p2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 381
    :cond_0
    invoke-static {p1, v1, p3, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->blob(IIII)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    return-object p1
.end method

.method private writeDouble(DI)V
    .locals 1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 568
    iget-object p3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    double-to-float p1, p1

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_1

    .line 570
    iget-object p3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method private writeInt(JI)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object p3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 398
    :cond_1
    iget-object p3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 397
    :cond_2
    iget-object p3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    long-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 396
    :cond_3
    iget-object p3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method private writeOffset(JI)V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int p1, v0

    int-to-long p1, p1

    .line 546
    invoke-direct {p0, p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeInt(JI)V

    return-void
.end method

.method private writeString(ILjava/lang/String;)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .locals 1

    .line 361
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeBlob(I[BI)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public endMap(Ljava/lang/String;I)I
    .locals 7

    .line 590
    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v1

    .line 592
    iget-object p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->keyComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 594
    iget-object p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-direct {p0, p2, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->createKeyVector(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object v6

    .line 595
    iget-object p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int v3, p1, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/flatbuffers/FlexBuffersBuilder;->createVector(IIIZZLcom/google/flatbuffers/FlexBuffersBuilder$Value;)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    .line 597
    :goto_0
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 598
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 600
    :cond_0
    iget-object p2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-wide p1, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    long-to-int p1, p1

    return p1
.end method

.method public endVector(Ljava/lang/String;IZZ)I
    .locals 7

    .line 443
    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v1

    .line 444
    iget-object p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int v3, p1, p2

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/flatbuffers/FlexBuffersBuilder;->createVector(IIIZZLcom/google/flatbuffers/FlexBuffersBuilder$Value;)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    .line 446
    :goto_0
    iget-object p3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, p2, :cond_0

    .line 447
    iget-object p3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 449
    :cond_0
    iget-object p2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-wide p1, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    long-to-int p1, p1

    return p1
.end method

.method public finish()Ljava/nio/ByteBuffer;
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->access$200(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder;->align(I)I

    move-result v0

    .line 467
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    invoke-direct {p0, v2, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeAny(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;I)V

    .line 469
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    invoke-static {v1}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->access$300(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;)B

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 471
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 472
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    .line 473
    iput-boolean v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->finished:Z

    .line 474
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->bb:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public putBlob(Ljava/lang/String;[B)I
    .locals 1

    .line 419
    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x19

    .line 420
    invoke-direct {p0, p1, p2, v0}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeBlob(I[BI)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    .line 421
    iget-object p2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-wide p1, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    long-to-int p1, p1

    return p1
.end method

.method public putBlob([B)I
    .locals 1

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putBlob(Ljava/lang/String;[B)I

    move-result p1

    return p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->bool(IZ)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putBoolean(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public putFloat(D)V
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putFloat(Ljava/lang/String;D)V

    return-void
.end method

.method public putFloat(F)V
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public putFloat(Ljava/lang/String;D)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->float64(ID)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->float32(IF)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public putInt(I)V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putInt(J)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putInt(Ljava/lang/String;J)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2

    int-to-long v0, p2

    .line 214
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putInt(Ljava/lang/String;J)V

    return-void
.end method

.method public putInt(Ljava/lang/String;J)V
    .locals 2

    .line 223
    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result p1

    const-wide/16 v0, -0x80

    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x7f

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    long-to-int p2, p2

    invoke-static {p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->int8(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x8000

    cmp-long v0, v0, p2

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x7fff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    long-to-int p2, p2

    invoke-static {p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->int16(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x80000000

    cmp-long v0, v0, p2

    if-gtz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    long-to-int p2, p2

    invoke-static {p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->int32(II)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->int64(IJ)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public putString(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 340
    invoke-direct {p0, p1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result p1

    .line 341
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stringPool:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeString(ILjava/lang/String;)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    .line 345
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stringPool:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object p2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-wide p1, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    long-to-int p1, p1

    return p1

    .line 349
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v1, p2

    invoke-static {v1, v2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->widthUInBits(J)I

    move-result p2

    .line 350
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {p1, v2, v3, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->blob(IIII)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 354
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->writeString(ILjava/lang/String;)Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    move-result-object p1

    .line 355
    iget-object p2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-wide p1, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->iValue:J

    long-to-int p1, p1

    return p1
.end method

.method public putUInt(I)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x0

    .line 248
    invoke-direct {p0, p1, v0, v1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putUInt(Ljava/lang/String;J)V

    return-void
.end method

.method public putUInt(J)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, v0, p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putUInt(Ljava/lang/String;J)V

    return-void
.end method

.method public putUInt64(Ljava/math/BigInteger;)V
    .locals 2

    .line 265
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->putUInt64(Ljava/lang/String;J)V

    return-void
.end method

.method public startMap()I
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startVector()I
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
