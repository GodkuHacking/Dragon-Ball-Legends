.class public final Lcom/google/flatbuffers/StringVector;
.super Lcom/google/flatbuffers/BaseVector;
.source "StringVector.java"


# instance fields
.field private utf8:Lcom/google/flatbuffers/Utf8;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/google/flatbuffers/BaseVector;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v0

    iput-object v0, p0, Lcom/google/flatbuffers/StringVector;->utf8:Lcom/google/flatbuffers/Utf8;

    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/StringVector;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/flatbuffers/StringVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)Ljava/lang/String;
    .locals 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/StringVector;->__element(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/flatbuffers/StringVector;->bb:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/flatbuffers/StringVector;->utf8:Lcom/google/flatbuffers/Utf8;

    invoke-static {p1, v0, v1}, Lcom/google/flatbuffers/Table;->__string(ILjava/nio/ByteBuffer;Lcom/google/flatbuffers/Utf8;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
