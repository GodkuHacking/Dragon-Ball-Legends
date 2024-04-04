.class public final Landroidx/datastore/preferences/protobuf/Field$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Field.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/FieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Field;",
        "Landroidx/datastore/preferences/protobuf/Field$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/FieldOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1380
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Field;->access$000()Landroidx/datastore/preferences/protobuf/Field;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Field$1;)V
    .locals 0

    .line 1373
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Field$Builder;"
        }
    .end annotation

    .line 1901
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1902
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$2500(Landroidx/datastore/preferences/protobuf/Field;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1888
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1889
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Field;->access$2400(Landroidx/datastore/preferences/protobuf/Field;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1862
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1863
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Field;->access$2200(Landroidx/datastore/preferences/protobuf/Field;ILandroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1875
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1876
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$2300(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1849
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1850
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$2100(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public clearCardinality()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1511
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1512
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field;->access$600(Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public clearDefaultValue()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 2048
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 2049
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field;->access$3200(Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public clearJsonName()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1979
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1980
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field;->access$2900(Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public clearKind()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1445
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1446
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field;->access$300(Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public clearName()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1605
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1606
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field;->access$1000(Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public clearNumber()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1551
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1552
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field;->access$800(Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public clearOneofIndex()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1737
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1738
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field;->access$1600(Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public clearOptions()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1913
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1914
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field;->access$2600(Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public clearPacked()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1777
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1778
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field;->access$1800(Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public clearTypeUrl()Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1678
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1679
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Field;->access$1300(Landroidx/datastore/preferences/protobuf/Field;)V

    return-object p0
.end method

.method public getCardinality()Landroidx/datastore/preferences/protobuf/Field$Cardinality;
    .locals 1

    .line 1486
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getCardinality()Landroidx/datastore/preferences/protobuf/Field$Cardinality;

    move-result-object v0

    return-object v0
.end method

.method public getCardinalityValue()I
    .locals 1

    .line 1460
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getCardinalityValue()I

    move-result v0

    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 2009
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 2022
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getDefaultValueBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJsonName()Ljava/lang/String;
    .locals 1

    .line 1940
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 1953
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getJsonNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Landroidx/datastore/preferences/protobuf/Field$Kind;
    .locals 1

    .line 1420
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getKind()Landroidx/datastore/preferences/protobuf/Field$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getKindValue()I
    .locals 1

    .line 1394
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getKindValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1566
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 1579
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1526
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOneofIndex()I
    .locals 1

    .line 1710
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getOneofIndex()I

    move-result v0

    return v0
.end method

.method public getOptions(I)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1

    .line 1813
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->getOptions(I)Landroidx/datastore/preferences/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 1803
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getOptionsCount()I

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

    .line 1791
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    .line 1792
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 1791
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    .line 1752
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getPacked()Z

    move-result v0

    return v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 1

    .line 1636
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 1650
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Field;->getTypeUrlBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeOptions(I)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1925
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1926
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$2700(Landroidx/datastore/preferences/protobuf/Field;I)V

    return-object p0
.end method

.method public setCardinality(Landroidx/datastore/preferences/protobuf/Field$Cardinality;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1498
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1499
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$500(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/Field$Cardinality;)V

    return-object p0
.end method

.method public setCardinalityValue(I)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1472
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1473
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$400(Landroidx/datastore/preferences/protobuf/Field;I)V

    return-object p0
.end method

.method public setDefaultValue(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 2035
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 2036
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$3100(Landroidx/datastore/preferences/protobuf/Field;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDefaultValueBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 2063
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 2064
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$3300(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setJsonName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1966
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1967
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$2800(Landroidx/datastore/preferences/protobuf/Field;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1994
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1995
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$3000(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setKind(Landroidx/datastore/preferences/protobuf/Field$Kind;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1432
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1433
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$200(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/Field$Kind;)V

    return-object p0
.end method

.method public setKindValue(I)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1406
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1407
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$100(Landroidx/datastore/preferences/protobuf/Field;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1592
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1593
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$900(Landroidx/datastore/preferences/protobuf/Field;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1620
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1621
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$1100(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNumber(I)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1538
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1539
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$700(Landroidx/datastore/preferences/protobuf/Field;I)V

    return-object p0
.end method

.method public setOneofIndex(I)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1723
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1724
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$1500(Landroidx/datastore/preferences/protobuf/Field;I)V

    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1837
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1838
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Field;->access$2000(Landroidx/datastore/preferences/protobuf/Field;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1824
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1825
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Field;->access$1900(Landroidx/datastore/preferences/protobuf/Field;ILandroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public setPacked(Z)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1764
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1765
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$1700(Landroidx/datastore/preferences/protobuf/Field;Z)V

    return-object p0
.end method

.method public setTypeUrl(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1664
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1665
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$1200(Landroidx/datastore/preferences/protobuf/Field;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeUrlBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Field$Builder;
    .locals 1

    .line 1694
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Field$Builder;->copyOnWrite()V

    .line 1695
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Field$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Field;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Field;->access$1400(Landroidx/datastore/preferences/protobuf/Field;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method
