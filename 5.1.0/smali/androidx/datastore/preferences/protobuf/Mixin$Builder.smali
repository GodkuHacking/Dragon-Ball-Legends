.class public final Landroidx/datastore/preferences/protobuf/Mixin$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Mixin.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MixinOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Mixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Mixin;",
        "Landroidx/datastore/preferences/protobuf/Mixin$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/MixinOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 388
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Mixin;->access$000()Landroidx/datastore/preferences/protobuf/Mixin;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Mixin$1;)V
    .locals 0

    .line 381
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .locals 1

    .line 441
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 442
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->access$200(Landroidx/datastore/preferences/protobuf/Mixin;)V

    return-object p0
.end method

.method public clearRoot()Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .locals 1

    .line 514
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->access$500(Landroidx/datastore/preferences/protobuf/Mixin;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 415
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 486
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Mixin;->getRootBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .locals 1

    .line 428
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->access$100(Landroidx/datastore/preferences/protobuf/Mixin;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .locals 1

    .line 456
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 457
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->access$300(Landroidx/datastore/preferences/protobuf/Mixin;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRoot(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .locals 1

    .line 500
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 501
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->access$400(Landroidx/datastore/preferences/protobuf/Mixin;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRootBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Mixin$Builder;
    .locals 1

    .line 530
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Mixin$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Mixin;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Mixin;->access$600(Landroidx/datastore/preferences/protobuf/Mixin;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method
