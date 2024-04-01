.class public final Lcom/google/flatbuffers/UnionVector;
.super Lcom/google/flatbuffers/BaseVector;
.source "UnionVector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/flatbuffers/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/UnionVector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/flatbuffers/UnionVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;
    .locals 1

    .line 50
    invoke-virtual {p0, p2}, Lcom/google/flatbuffers/UnionVector;->__element(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/flatbuffers/UnionVector;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2, v0}, Lcom/google/flatbuffers/Table;->__union(Lcom/google/flatbuffers/Table;ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    return-object p1
.end method
