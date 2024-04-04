.class public Lcom/google/flatbuffers/FlexBuffers$KeyVector;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVector"
.end annotation


# instance fields
.field private final vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;


# direct methods
.method constructor <init>(Lcom/google/flatbuffers/FlexBuffers$TypedVector;)V
    .locals 0

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p1, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/flatbuffers/FlexBuffers$Key;
    .locals 4

    .line 1035
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1036
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Key;->access$700()Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object p1

    return-object p1

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget v0, v0, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->end:I

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget v1, v1, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->byteWidth:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 1038
    new-instance p1, Lcom/google/flatbuffers/FlexBuffers$Key;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v1, v1, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->bb:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v2, v2, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->bb:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget v3, v3, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->byteWidth:I

    invoke-static {v2, v0, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p1, v1, v0, v2}, Lcom/google/flatbuffers/FlexBuffers$Key;-><init>(Ljava/nio/ByteBuffer;II)V

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 1055
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1056
    :goto_0
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    invoke-virtual {v2}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1057
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    invoke-virtual {v2, v1}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1058
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    invoke-virtual {v2}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 1059
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 1062
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
