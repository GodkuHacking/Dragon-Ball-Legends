.class final Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SingleProcessDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.SingleProcessDataStore$readAndInit$api$1"
    f = "SingleProcessDataStore.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x1f7,
        0x151,
        0x153
    }
    m = "updateData"
    n = {
        "transform",
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv",
        "$this$withLock_u24default$iv",
        "newData"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;


# direct methods
.method constructor <init>(Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;->this$0:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;->label:I

    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;->this$0:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
