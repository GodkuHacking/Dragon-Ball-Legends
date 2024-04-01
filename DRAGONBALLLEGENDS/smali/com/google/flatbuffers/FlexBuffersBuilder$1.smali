.class Lcom/google/flatbuffers/FlexBuffersBuilder$1;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/flatbuffers/FlexBuffersBuilder$Value;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/flatbuffers/FlexBuffersBuilder;


# direct methods
.method constructor <init>(Lcom/google/flatbuffers/FlexBuffersBuilder;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$1;->this$0:Lcom/google/flatbuffers/FlexBuffersBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;Lcom/google/flatbuffers/FlexBuffersBuilder$Value;)I
    .locals 2

    .line 97
    iget p1, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->key:I

    .line 98
    iget p2, p2, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->key:I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$1;->this$0:Lcom/google/flatbuffers/FlexBuffersBuilder;

    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffersBuilder;->access$000(Lcom/google/flatbuffers/FlexBuffersBuilder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$1;->this$0:Lcom/google/flatbuffers/FlexBuffersBuilder;

    invoke-static {v1}, Lcom/google/flatbuffers/FlexBuffersBuilder;->access$000(Lcom/google/flatbuffers/FlexBuffersBuilder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v0, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    check-cast p2, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$1;->compare(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;Lcom/google/flatbuffers/FlexBuffersBuilder$Value;)I

    move-result p1

    return p1
.end method
