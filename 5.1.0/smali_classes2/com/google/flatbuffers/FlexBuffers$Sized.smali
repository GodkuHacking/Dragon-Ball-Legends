.class abstract Lcom/google/flatbuffers/FlexBuffers$Sized;
.super Lcom/google/flatbuffers/FlexBuffers$Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Sized"
.end annotation


# instance fields
.field protected final size:I


# direct methods
.method constructor <init>(Lcom/google/flatbuffers/ReadBuf;II)V
    .locals 0

    .line 657
    invoke-direct {p0, p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffers$Object;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    .line 658
    iget-object p1, p0, Lcom/google/flatbuffers/FlexBuffers$Sized;->bb:Lcom/google/flatbuffers/ReadBuf;

    sub-int/2addr p2, p3

    invoke-static {p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result p1

    iput p1, p0, Lcom/google/flatbuffers/FlexBuffers$Sized;->size:I

    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .line 662
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Sized;->size:I

    return v0
.end method
