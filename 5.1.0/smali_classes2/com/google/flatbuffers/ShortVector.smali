.class public final Lcom/google/flatbuffers/ShortVector;
.super Lcom/google/flatbuffers/BaseVector;
.source "ShortVector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/flatbuffers/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/ShortVector;
    .locals 1

    const/4 v0, 0x2

    .line 37
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/flatbuffers/ShortVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)S
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/flatbuffers/ShortVector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/ShortVector;->__element(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getAsUnsigned(I)I
    .locals 1

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/ShortVector;->get(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method
