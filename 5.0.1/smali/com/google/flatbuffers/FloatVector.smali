.class public final Lcom/google/flatbuffers/FloatVector;
.super Lcom/google/flatbuffers/BaseVector;
.source "FloatVector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/flatbuffers/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/FloatVector;
    .locals 1

    const/4 v0, 0x4

    .line 37
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/flatbuffers/FloatVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)F
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/flatbuffers/FloatVector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FloatVector;->__element(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method
