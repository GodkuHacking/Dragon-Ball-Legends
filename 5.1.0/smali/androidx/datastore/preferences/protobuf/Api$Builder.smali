.class public final Landroidx/datastore/preferences/protobuf/Api$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Api.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Api;",
        "Landroidx/datastore/preferences/protobuf/Api$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/ApiOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1053
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Api;->access$000()Landroidx/datastore/preferences/protobuf/Api;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Api$1;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMethods(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/Method;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1250
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1251
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1000(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllMixins(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/Mixin;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1772
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1773
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$3500(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/datastore/preferences/protobuf/Option;",
            ">;)",
            "Landroidx/datastore/preferences/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1398
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1399
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1900(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addMethods(ILandroidx/datastore/preferences/protobuf/Method$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1237
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1238
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$900(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Method$Builder;)V

    return-object p0
.end method

.method public addMethods(ILandroidx/datastore/preferences/protobuf/Method;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1211
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1212
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$700(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Method;)V

    return-object p0
.end method

.method public addMethods(Landroidx/datastore/preferences/protobuf/Method$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1224
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1225
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$800(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Method$Builder;)V

    return-object p0
.end method

.method public addMethods(Landroidx/datastore/preferences/protobuf/Method;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1198
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1199
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$600(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Method;)V

    return-object p0
.end method

.method public addMixins(ILandroidx/datastore/preferences/protobuf/Mixin$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1759
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1760
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$3400(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Mixin$Builder;)V

    return-object p0
.end method

.method public addMixins(ILandroidx/datastore/preferences/protobuf/Mixin;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1733
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1734
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$3200(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Mixin;)V

    return-object p0
.end method

.method public addMixins(Landroidx/datastore/preferences/protobuf/Mixin$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1746
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1747
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$3300(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Mixin$Builder;)V

    return-object p0
.end method

.method public addMixins(Landroidx/datastore/preferences/protobuf/Mixin;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1720
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1721
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$3100(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Mixin;)V

    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1385
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1386
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$1800(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public addOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1359
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1360
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$1600(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1372
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1373
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1700(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public addOptions(Landroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1346
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1347
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1500(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public clearMethods()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1262
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1263
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$1100(Landroidx/datastore/preferences/protobuf/Api;)V

    return-object p0
.end method

.method public clearMixins()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1784
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1785
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$3600(Landroidx/datastore/preferences/protobuf/Api;)V

    return-object p0
.end method

.method public clearName()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1110
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1111
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$200(Landroidx/datastore/preferences/protobuf/Api;)V

    return-object p0
.end method

.method public clearOptions()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1411
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$2000(Landroidx/datastore/preferences/protobuf/Api;)V

    return-object p0
.end method

.method public clearSourceContext()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1648
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1649
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$2800(Landroidx/datastore/preferences/protobuf/Api;)V

    return-object p0
.end method

.method public clearSyntax()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1862
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1863
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$4000(Landroidx/datastore/preferences/protobuf/Api;)V

    return-object p0
.end method

.method public clearVersion()Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1540
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1541
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Api;->access$2300(Landroidx/datastore/preferences/protobuf/Api;)V

    return-object p0
.end method

.method public getMethods(I)Landroidx/datastore/preferences/protobuf/Method;
    .locals 1

    .line 1162
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->getMethods(I)Landroidx/datastore/preferences/protobuf/Method;

    move-result-object p1

    return-object p1
.end method

.method public getMethodsCount()I
    .locals 1

    .line 1152
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getMethodsCount()I

    move-result v0

    return v0
.end method

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 1141
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v0

    .line 1140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMixins(I)Landroidx/datastore/preferences/protobuf/Mixin;
    .locals 1

    .line 1684
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->getMixins(I)Landroidx/datastore/preferences/protobuf/Mixin;

    move-result-object p1

    return-object p1
.end method

.method public getMixinsCount()I
    .locals 1

    .line 1674
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getMixinsCount()I

    move-result v0

    return v0
.end method

.method public getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 1662
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 1663
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v0

    .line 1662
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1068
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 1082
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Landroidx/datastore/preferences/protobuf/Option;
    .locals 1

    .line 1310
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->getOptions(I)Landroidx/datastore/preferences/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 1300
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getOptionsCount()I

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

    .line 1288
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    .line 1289
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 1288
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Landroidx/datastore/preferences/protobuf/SourceContext;
    .locals 1

    .line 1598
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getSourceContext()Landroidx/datastore/preferences/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 1

    .line 1837
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getSyntax()Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 1811
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1453
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 1482
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->getVersionBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 1586
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Api;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public mergeSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1636
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1637
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2700(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/SourceContext;)V

    return-object p0
.end method

.method public removeMethods(I)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1274
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1275
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$1200(Landroidx/datastore/preferences/protobuf/Api;I)V

    return-object p0
.end method

.method public removeMixins(I)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1796
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1797
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$3700(Landroidx/datastore/preferences/protobuf/Api;I)V

    return-object p0
.end method

.method public removeOptions(I)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1422
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1423
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2100(Landroidx/datastore/preferences/protobuf/Api;I)V

    return-object p0
.end method

.method public setMethods(ILandroidx/datastore/preferences/protobuf/Method$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1186
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1187
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$500(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Method$Builder;)V

    return-object p0
.end method

.method public setMethods(ILandroidx/datastore/preferences/protobuf/Method;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1173
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1174
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$400(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Method;)V

    return-object p0
.end method

.method public setMixins(ILandroidx/datastore/preferences/protobuf/Mixin$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1709
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$3000(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Mixin$Builder;)V

    return-object p0
.end method

.method public setMixins(ILandroidx/datastore/preferences/protobuf/Mixin;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1695
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1696
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$2900(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Mixin;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1096
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1097
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$100(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1126
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1127
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$300(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1334
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1335
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$1400(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Option$Builder;)V

    return-object p0
.end method

.method public setOptions(ILandroidx/datastore/preferences/protobuf/Option;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1321
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1322
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Api;->access$1300(Landroidx/datastore/preferences/protobuf/Api;ILandroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public setSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext$Builder;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1623
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1624
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2600(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/SourceContext$Builder;)V

    return-object p0
.end method

.method public setSourceContext(Landroidx/datastore/preferences/protobuf/SourceContext;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1609
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1610
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2500(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSyntax(Landroidx/datastore/preferences/protobuf/Syntax;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1849
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1850
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$3900(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/Syntax;)V

    return-object p0
.end method

.method public setSyntaxValue(I)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1823
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1824
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$3800(Landroidx/datastore/preferences/protobuf/Api;I)V

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1511
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1512
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2200(Landroidx/datastore/preferences/protobuf/Api;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVersionBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Api$Builder;
    .locals 1

    .line 1571
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Api$Builder;->copyOnWrite()V

    .line 1572
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Api$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Api;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Api;->access$2400(Landroidx/datastore/preferences/protobuf/Api;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method
