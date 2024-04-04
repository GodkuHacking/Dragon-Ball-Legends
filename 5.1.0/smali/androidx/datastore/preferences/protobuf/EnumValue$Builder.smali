.class public final Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "EnumValue.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/EnumValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/EnumValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/EnumValue;",
        "Landroidx/datastore/preferences/protobuf/EnumValue$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/EnumValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 406
    invoke-static {}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$000()Landroidx/datastore/preferences/protobuf/EnumValue;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/EnumValue$1;)V
    .locals 0

    .line 399
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/EnumValue$Builder;"
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 639
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$1200(Landroidx/datastore/preferences/protobuf/EnumValue;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 625
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 626
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$1100(Landroidx/datastore/preferences/protobuf/EnumValue;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 600
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$900(Landroidx/datastore/preferences/protobuf/EnumValue;ILandroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 613
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$1000(Landroidx/datastore/preferences/protobuf/EnumValue;Landroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 586
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 587
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$800(Landroidx/datastore/preferences/protobuf/EnumValue;Landroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public clearName()Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 459
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 460
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$200(Landroidx/datastore/preferences/protobuf/EnumValue;)V

    return-object p0
.end method

.method public clearNumber()Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 514
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$500(Landroidx/datastore/preferences/protobuf/EnumValue;)V

    return-object p0
.end method

.method public clearOptions()Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 650
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 651
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$1300(Landroidx/datastore/preferences/protobuf/EnumValue;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 433
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 489
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions(I)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1

    .line 550
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->getOptions(I)Landroidx/datastore/preferences/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 540
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->getOptionsCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    .line 529
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/EnumValue;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 528
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeOptions(I)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 662
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 663
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$1400(Landroidx/datastore/preferences/protobuf/EnumValue;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 447
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$100(Landroidx/datastore/preferences/protobuf/EnumValue;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 474
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 475
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$300(Landroidx/datastore/preferences/protobuf/EnumValue;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNumber(I)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 501
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 502
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$400(Landroidx/datastore/preferences/protobuf/EnumValue;I)V

    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 574
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 575
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$700(Landroidx/datastore/preferences/protobuf/EnumValue;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/EnumValue$Builder;
    .locals 1

    .line 561
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 562
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/EnumValue$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/EnumValue;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/EnumValue;->access$600(Landroidx/datastore/preferences/protobuf/EnumValue;ILandroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method
