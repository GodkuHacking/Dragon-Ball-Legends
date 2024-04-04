.class abstract Lcom/google/flatbuffers/FlexBuffers$Object;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Object"
.end annotation


# instance fields
.field bb:Ljava/nio/ByteBuffer;

.field byteWidth:I

.field end:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Lcom/google/flatbuffers/FlexBuffers$Object;->bb:Ljava/nio/ByteBuffer;

    .line 624
    iput p2, p0, Lcom/google/flatbuffers/FlexBuffers$Object;->end:I

    .line 625
    iput p3, p0, Lcom/google/flatbuffers/FlexBuffers$Object;->byteWidth:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlexBuffers$Object;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method
