.class public final Landroidx/datastore/preferences/protobuf/FieldMask$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "FieldMask.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/FieldMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/FieldMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/FieldMask;",
        "Landroidx/datastore/preferences/protobuf/FieldMask$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/FieldMaskOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 551
    invoke-static {}, Landroidx/datastore/preferences/protobuf/FieldMask;->access$000()Landroidx/datastore/preferences/protobuf/FieldMask;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/FieldMask$1;)V
    .locals 0

    .line 544
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPaths(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/FieldMask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/FieldMask$Builder;"
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->copyOnWrite()V

    .line 651
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/FieldMask;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/FieldMask;->access$300(Landroidx/datastore/preferences/protobuf/FieldMask;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPaths(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/FieldMask$Builder;
    .locals 1

    .line 635
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->copyOnWrite()V

    .line 636
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/FieldMask;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/FieldMask;->access$200(Landroidx/datastore/preferences/protobuf/FieldMask;Ljava/lang/String;)V

    return-object p0
.end method

.method public addPathsBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/FieldMask$Builder;
    .locals 1

    .line 678
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->copyOnWrite()V

    .line 679
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/FieldMask;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/FieldMask;->access$500(Landroidx/datastore/preferences/protobuf/FieldMask;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearPaths()Landroidx/datastore/preferences/protobuf/FieldMask$Builder;
    .locals 1

    .line 663
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->copyOnWrite()V

    .line 664
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/FieldMask;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/FieldMask;->access$400(Landroidx/datastore/preferences/protobuf/FieldMask;)V

    return-object p0
.end method

.method public getPaths(I)Ljava/lang/String;
    .locals 1

    .line 592
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/FieldMask;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/FieldMask;->getPaths(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPathsBytes(I)Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 606
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/FieldMask;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/FieldMask;->getPathsBytes(I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPathsCount()I
    .locals 1

    .line 579
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/FieldMask;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldMask;->getPathsCount()I

    move-result v0

    return v0
.end method

.method public getPathsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/FieldMask;

    .line 567
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldMask;->getPathsList()Ljava/util/List;

    move-result-object v0

    .line 566
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setPaths(ILjava/lang/String;)Landroidx/datastore/preferences/protobuf/FieldMask$Builder;
    .locals 1

    .line 620
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->copyOnWrite()V

    .line 621
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldMask$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/FieldMask;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/FieldMask;->access$100(Landroidx/datastore/preferences/protobuf/FieldMask;ILjava/lang/String;)V

    return-object p0
.end method
