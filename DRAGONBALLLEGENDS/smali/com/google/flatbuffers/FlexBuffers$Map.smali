.class public Lcom/google/flatbuffers/FlexBuffers$Map;
.super Lcom/google/flatbuffers/FlexBuffers$Vector;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Map"
.end annotation


# static fields
.field private static final EMPTY_MAP:Lcom/google/flatbuffers/FlexBuffers$Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 805
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Map;

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/flatbuffers/FlexBuffers$Map;-><init>(Ljava/nio/ByteBuffer;II)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Map;->EMPTY_MAP:Lcom/google/flatbuffers/FlexBuffers$Map;

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .line 808
    invoke-direct {p0, p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method private binarySearch(Lcom/google/flatbuffers/FlexBuffers$KeyVector;[B)I
    .locals 4

    .line 888
    invoke-virtual {p1}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 892
    invoke-virtual {p1, v2}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v3

    .line 893
    invoke-virtual {v3, p2}, Lcom/google/flatbuffers/FlexBuffers$Key;->compareTo([B)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method public static empty()Lcom/google/flatbuffers/FlexBuffers$Map;
    .locals 1

    .line 816
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Map;->EMPTY_MAP:Lcom/google/flatbuffers/FlexBuffers$Map;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .locals 1

    .line 824
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->get([B)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object p1

    return-object p1
.end method

.method public get([B)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .locals 2

    .line 832
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->keys()Lcom/google/flatbuffers/FlexBuffers$KeyVector;

    move-result-object v0

    .line 833
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->size()I

    move-result v1

    .line 834
    invoke-direct {p0, v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->binarySearch(Lcom/google/flatbuffers/FlexBuffers$KeyVector;[B)I

    move-result p1

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 836
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->get(I)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object p1

    return-object p1

    .line 838
    :cond_0
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Reference;->access$600()Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object p1

    return-object p1
.end method

.method public keys()Lcom/google/flatbuffers/FlexBuffers$KeyVector;
    .locals 7

    .line 848
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->end:I

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 849
    new-instance v1, Lcom/google/flatbuffers/FlexBuffers$KeyVector;

    new-instance v2, Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    .line 850
    invoke-static {v4, v0, v5}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v4

    iget-object v5, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    add-int/2addr v0, v6

    iget v6, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    .line 851
    invoke-static {v5, v0, v6}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Ljava/nio/ByteBuffer;II)I

    move-result v0

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;-><init>(Ljava/nio/ByteBuffer;III)V

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;-><init>(Lcom/google/flatbuffers/FlexBuffers$TypedVector;)V

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "{ "

    .line 869
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->keys()Lcom/google/flatbuffers/FlexBuffers$KeyVector;

    move-result-object v0

    .line 871
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->size()I

    move-result v1

    .line 872
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->values()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    const/16 v4, 0x22

    .line 874
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/flatbuffers/FlexBuffers$Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" : "

    .line 876
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Vector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/flatbuffers/FlexBuffers$Reference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_0

    const-string v4, ", "

    .line 879
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, " }"

    .line 881
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public values()Lcom/google/flatbuffers/FlexBuffers$Vector;
    .locals 4

    .line 859
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Vector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Ljava/nio/ByteBuffer;II)V

    return-object v0
.end method
