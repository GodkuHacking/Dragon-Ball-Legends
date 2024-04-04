.class Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private lazyOverflowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private nextCalledBeforeRemove:Z

.field private pos:I

.field final synthetic this$0:Landroidx/datastore/preferences/protobuf/SmallSortedMap;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)V
    .locals 0

    .line 534
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->this$0:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 536
    iput p1, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/SmallSortedMap;Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;)V
    .locals 0

    .line 534
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;-><init>(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)V

    return-void
.end method

.method private getOverflowIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->this$0:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->access$700(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    .line 581
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 542
    iget v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->this$0:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->access$600(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->this$0:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    .line 543
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->access$700(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 534
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 548
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 551
    iget v1, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->this$0:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->access$600(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 552
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->this$0:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->access$600(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 554
    :cond_0
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 559
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 563
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->this$0:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->access$300(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)V

    .line 565
    iget v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->this$0:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->access$600(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 566
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->this$0:Landroidx/datastore/preferences/protobuf/SmallSortedMap;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->access$800(Landroidx/datastore/preferences/protobuf/SmallSortedMap;I)Ljava/lang/Object;

    goto :goto_0

    .line 568
    :cond_0
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_0
    return-void

    .line 560
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
