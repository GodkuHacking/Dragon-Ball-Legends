.class public Lcom/google/flatbuffers/FlexBuffers$Blob;
.super Lcom/google/flatbuffers/FlexBuffers$Sized;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blob"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EMPTY:Lcom/google/flatbuffers/FlexBuffers$Blob;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 658
    const-class v0, Lcom/google/flatbuffers/FlexBuffers;

    .line 659
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Blob;

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/flatbuffers/FlexBuffers$Blob;-><init>(Ljava/nio/ByteBuffer;II)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Blob;->EMPTY:Lcom/google/flatbuffers/FlexBuffers$Blob;

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .line 662
    invoke-direct {p0, p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffers$Sized;-><init>(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public static empty()Lcom/google/flatbuffers/FlexBuffers$Blob;
    .locals 1

    .line 667
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Blob;->EMPTY:Lcom/google/flatbuffers/FlexBuffers$Blob;

    return-object v0
.end method


# virtual methods
.method public data()Ljava/nio/ByteBuffer;
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 676
    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 677
    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Blob;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 678
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get(I)B
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 5

    .line 686
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Blob;->size()I

    move-result v0

    .line 687
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 689
    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->bb:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 658
    invoke-super {p0}, Lcom/google/flatbuffers/FlexBuffers$Sized;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 708
    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v0

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Blob;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/flatbuffers/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x22

    .line 716
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 717
    invoke-static {}, Lcom/google/flatbuffers/Utf8;->getDefault()Lcom/google/flatbuffers/Utf8;

    move-result-object v1

    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Blob;->size()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/flatbuffers/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1
.end method
