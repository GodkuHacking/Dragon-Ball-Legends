.class public final Landroidx/datastore/preferences/protobuf/Option$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Option.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/OptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Option;",
        "Landroidx/datastore/preferences/protobuf/Option$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/OptionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 305
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Option;->access$000()Landroidx/datastore/preferences/protobuf/Option;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Option$1;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 370
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 371
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Option;->access$200(Landroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public clearValue()Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 477
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 478
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Option;->access$700(Landroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 338
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Landroidx/datastore/preferences/protobuf/Any;
    .locals 1

    .line 419
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getValue()Landroidx/datastore/preferences/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .line 405
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->hasValue()Z

    move-result v0

    return v0
.end method

.method public mergeValue(Landroidx/datastore/preferences/protobuf/Any;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 463
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 464
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$600(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 354
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 355
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$100(Landroidx/datastore/preferences/protobuf/Option;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 388
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 389
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$300(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Landroidx/datastore/preferences/protobuf/Any$Builder;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 448
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 449
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$500(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any$Builder;)V

    return-object p0
.end method

.method public setValue(Landroidx/datastore/preferences/protobuf/Any;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .locals 1

    .line 432
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$400(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any;)V

    return-object p0
.end method
