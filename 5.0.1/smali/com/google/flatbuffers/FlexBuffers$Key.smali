.class public Lcom/google/flatbuffers/FlexBuffers$Key;
.super Lcom/google/flatbuffers/FlexBuffers$Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/flatbuffers/FlexBuffers$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 728
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Key;

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/flatbuffers/FlexBuffers$Key;-><init>(Ljava/nio/ByteBuffer;II)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Key;->EMPTY:Lcom/google/flatbuffers/FlexBuffers$Key;

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .line 731
    invoke-direct {p0, p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffers$Object;-><init>(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method static synthetic access$700()Lcom/google/flatbuffers/FlexBuffers$Key;
    .locals 1

    .line 726
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Key;->EMPTY:Lcom/google/flatbuffers/FlexBuffers$Key;

    return-object v0
.end method

.method public static empty()Lcom/google/flatbuffers/FlexBuffers$Key;
    .locals 1

    .line 739
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Key;->EMPTY:Lcom/google/flatbuffers/FlexBuffers$Key;

    return-object v0
.end method


# virtual methods
.method compareTo([B)I
    .locals 5

    .line 763
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->end:I

    const/4 v1, 0x0

    .line 767
    :cond_0
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 768
    aget-byte v3, p1, v1

    if-nez v2, :cond_1

    sub-int/2addr v2, v3

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 773
    array-length v4, p1

    if-ne v1, v4, :cond_2

    sub-int/2addr v2, v3

    return v2

    :cond_2
    if-eq v2, v3, :cond_0

    sub-int/2addr v2, v3

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 790
    instance-of v0, p1, Lcom/google/flatbuffers/FlexBuffers$Key;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 793
    :cond_0
    check-cast p1, Lcom/google/flatbuffers/FlexBuffers$Key;

    iget v0, p1, Lcom/google/flatbuffers/FlexBuffers$Key;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->end:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/google/flatbuffers/FlexBuffers$Key;->byteWidth:I

    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->byteWidth:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 797
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->end:I

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->byteWidth:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 753
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->end:I

    .line 754
    :goto_0
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_0

    .line 755
    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->end:I

    sub-int/2addr v0, v1

    .line 759
    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v1

    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Key;->end:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/flatbuffers/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 747
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Key;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method
